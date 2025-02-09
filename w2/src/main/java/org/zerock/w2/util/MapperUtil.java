package org.zerock.w2.util;

import org.modelmapper.ModelMapper;
import org.modelmapper.config.Configuration;
import org.modelmapper.convention.MatchingStrategies;

public enum MapperUtil {
    INSTANCE;

    private ModelMapper modelMapper;

    MapperUtil(){
        this.modelMapper = new ModelMapper();
        this.modelMapper.getConfiguration()
                .setFieldMatchingEnabled(true) //private 선언된 필드도 접근 가능하도록 설정 변경
                .setFieldAccessLevel(Configuration.AccessLevel.PRIVATE)
                .setMatchingStrategy(MatchingStrategies.STRICT);

    }

    public ModelMapper get(){
        return modelMapper;
    }
}
