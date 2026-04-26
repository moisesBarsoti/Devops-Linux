package br.com.fiap.cp2.repository;

import br.com.fiap.cp2.model.Produto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long> {

    List<Produto> findByCategoria(String categoria);

    List<Produto> findByNomeContainingIgnoreCase(String nome);

    List<Produto> findByPrecoBetween(BigDecimal min, BigDecimal max);

    List<Produto> findByEstoqueGreaterThan(Integer quantidade);

    @Query("SELECT p FROM Produto p WHERE p.estoque = 0")
    List<Produto> findSemEstoque();
}
