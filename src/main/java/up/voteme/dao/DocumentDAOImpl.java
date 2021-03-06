package up.voteme.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Component;

import up.voteme.domain.Document;

@Component
public class DocumentDAOImpl implements IDocumentDAO {
	
	@PersistenceContext
	private EntityManager manager;

	@Override
	public long store(Document document) {
		long id = manager.merge(document).getDocId();
		return id;
	}

	@Override
	public void delete(Long id) {
		Document document = manager.find(Document.class, id);
		manager.remove(document);
	}

	@Override
	public List<Document> findAll() {
		TypedQuery<Document> query = manager.createQuery(
				"SELECT d FROM Document d", Document.class);
		List<Document> docs = query.getResultList();
		return docs;
	}

	@Override
	public Document findById(Long id) {
		return manager.find(Document.class, id);
	}

	@Override
	public List<Document> findDocumentByProposal(Long id) {
		  TypedQuery<Document> query =  manager.createQuery("SELECT doc FROM Document doc WHERE proposal_id = " + id, Document.class);
		  List<Document> items = query.getResultList();
		  return items;
	}
}