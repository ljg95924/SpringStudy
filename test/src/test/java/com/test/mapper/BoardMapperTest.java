package com.test.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.test.domain.BoardVO;
import com.test.test.RootConfig;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RootConfig.class })
@Log4j
public class BoardMapperTest {

	@Setter(onMethod_ = { @Autowired })
	private BoardMapper mapper;

	@Test
	public void testeset() {
		log.info("왜안돼: "+mapper.getList());
	}
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(board -> log.info(board));
	}

	@Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글이지롱");
		board.setContent("새로 작성하는 내용이지롱");
		board.setWriter("newbie 이지롱");
		mapper.insert(board);
		log.info(board);
	}

	@Test
	public void testInsertKey() {
		BoardVO board = new BoardVO();
		board.setTitle("새 글 selectKey");
		board.setContent("새 글 selectKey");
		board.setWriter("newbie");
		mapper.insertSelectKey(board);
		log.info(board);
	}
	
	@Test
	public void testRead() {
		BoardVO board = mapper.read(5L);
		log.info(board);
	}
	
	@Test
	public void testDelete() {
		log.info("Delete COUNT: " + mapper.delete(6L));
	}
	
	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setBno(7L);
		board.setTitle("수정한 제목");
		board.setContent("수정한 내용");
		board.setWriter("rose");
		int count = mapper.update(board);
		log.info("UPDATE COUNT: "+count);
	}
}