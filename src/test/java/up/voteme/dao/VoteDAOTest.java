package up.voteme.dao;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import up.voteme.domain.Vote;

@FixMethodOrder(MethodSorters.NAME_ASCENDING) //set junit  to 4.11
public class VoteDAOTest {

	private	VoteDAO dao = new VoteDAOImpl();

	@Test
	public void A_findAllTest() {
		final int SHOW_ITEMS = 5;
		System.out.println("Find all items...");
		List<Vote> list = dao.findAll();
		for (int i = 0; i< list.size(); i++){
			System.out.println(list.get(i));
			// comment if block to show all items
			if ((i == SHOW_ITEMS-1)&(list.size()>SHOW_ITEMS)) {
				System.out.println("etc......");
				System.out.println("total "+list.size()+" items");
				break;
			}
		}
		assertTrue ("No records in table",list.size()>1);
	}

	
	@Test
	public void B_storeTest(){
		System.out.println("Store new item....");
		List<Vote> beforList = dao.findAll();
		//modify item
		Vote item = dao.findById(1L);
		item.setVoteId(0);
		item.setVote(false);
		
		long id =  dao.store(item);
		List<Vote> afterList = dao.findAll();
		System.out.println("New item stored with id="+id);
		System.out.println("Befor size = "+beforList.size()+", after size = "+afterList.size());
		assertTrue ("Error in DB record store ",beforList.size() == afterList.size()-1);
	}
	
	@Test
	public void C_findByIdTest() {
		System.out.println("Find last record (assume ID = num of rec)....");
		long id = dao.findAll().size();
		Vote item = dao.findById(id);
		System.out.println("Item id="+id+" was found, getClass="+item.getClass());
	}
	
	@Test
	public void D_deleteTest() {
		System.out.println("Delete last record(assume ID = num of rec)....");
		List<Vote> beforList = dao.findAll();
		long id = beforList.size();        // = befor size
		dao.delete(id);
		List<Vote> afterList = dao.findAll();
		System.out.println("Item id="+id+" was deleted");
		System.out.println("Befor size = "+beforList.size()+", after size = "+afterList.size());
		assertTrue ("Error in DB record delete ",beforList.size() == afterList.size()+1);
	}

}
