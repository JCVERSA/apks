package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.id3.framebody.FrameBodyETCO;

public class EventTimingCodeList extends AbstractDataTypeList<EventTimingCode> {
    public EventTimingCodeList(EventTimingCodeList eventTimingCodeList) {
        super(eventTimingCodeList);
    }

    public EventTimingCodeList(FrameBodyETCO frameBodyETCO) {
        super(DataTypes.OBJ_TIMED_EVENT_LIST, frameBodyETCO);
    }

    @Override
    public EventTimingCode createListElement() {
        return new EventTimingCode(DataTypes.OBJ_TIMED_EVENT, this.frameBody);
    }
}
