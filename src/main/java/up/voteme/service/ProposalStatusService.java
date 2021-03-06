package up.voteme.service;

import java.util.List;

import up.voteme.domain.ProposalStatus;

public interface ProposalStatusService {
	
	public abstract long store(ProposalStatus proposalStatus);
	public abstract void delete(long id) ;

	
	public abstract List<ProposalStatus> getAllPS();
	public abstract ProposalStatus getById(long id);
	public abstract long getCount();
	

}
