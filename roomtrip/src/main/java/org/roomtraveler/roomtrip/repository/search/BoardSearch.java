package org.roomtraveler.roomtrip.repository.search;

import org.roomtraveler.roomtrip.domain.Board;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface BoardSearch {
    Page<Board> search1(Pageable pageable);
}
