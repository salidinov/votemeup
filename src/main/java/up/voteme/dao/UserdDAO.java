package up.voteme.dao;

import java.util.List;

import up.voteme.domain.Userd;
import up.voteme.model.PaginatedUser;

public interface UserdDAO {

	public abstract long store(Userd item);

	public abstract void delete(long UserdId);

	public abstract Userd findById(long UserdId);

	public abstract Userd findByLogin(String login);

	public abstract List<Userd> findAll();

	public abstract long countAll();

	public abstract Userd findByEmail(String email);

	public abstract List<Userd> findPaginatedUserd(int pageNumber, int perPage);



}