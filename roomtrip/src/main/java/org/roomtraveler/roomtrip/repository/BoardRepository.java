package org.roomtraveler.roomtrip.repository;

import org.roomtraveler.roomtrip.domain.Board;
import org.springframework.data.jpa.repository.JpaRepository;


//쿼리 메소드나 Querydsl을 이용
public interface BoardRepository extends JpaRepository<Board, Long> { //엔티티 타입과 @Id 타입

}
