package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.id3.framebody.FrameBodySYTC;

public class SynchronisedTempoCodeList extends AbstractDataTypeList<SynchronisedTempoCode> {
    public SynchronisedTempoCodeList(SynchronisedTempoCodeList synchronisedTempoCodeList) {
        super(synchronisedTempoCodeList);
    }

    public SynchronisedTempoCodeList(FrameBodySYTC frameBodySYTC) {
        super(DataTypes.OBJ_SYNCHRONISED_TEMPO_LIST, frameBodySYTC);
    }

    @Override
    public SynchronisedTempoCode createListElement() {
        return new SynchronisedTempoCode(DataTypes.OBJ_SYNCHRONISED_TEMPO, this.frameBody);
    }
}
