package com.transsion.audiotagger.tag.id3.framebody;

import com.alibaba.android.arouter.utils.Consts;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.SynchronisedTempoCode;
import com.transsion.audiotagger.tag.datatype.SynchronisedTempoCodeList;
import com.transsion.audiotagger.tag.id3.AbstractTagItem;
import com.transsion.audiotagger.tag.id3.valuepair.EventTimingTimestampTypes;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

public class FrameBodySYTC extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    public static final int MILLISECONDS = 2;
    public static final int MPEG_FRAMES = 1;

    public FrameBodySYTC() {
        setObjectValue(DataTypes.OBJ_TIME_STAMP_FORMAT, 2);
    }

    public void addTempo(long j, int i) {
        removeTempo(j);
        List list = (List) getObjectValue(DataTypes.OBJ_SYNCHRONISED_TEMPO_LIST);
        int i2 = 0;
        if (!list.isEmpty() && ((SynchronisedTempoCode) list.get(0)).getTimestamp() <= j) {
            Iterator it = list.iterator();
            while (it.hasNext() && j >= ((SynchronisedTempoCode) it.next()).getTimestamp()) {
                i2++;
            }
        }
        list.add(i2, new SynchronisedTempoCode(DataTypes.OBJ_SYNCHRONISED_TEMPO, this, i, j));
    }

    public void clearTempi() {
        ((List) getObjectValue(DataTypes.OBJ_SYNCHRONISED_TEMPO_LIST)).clear();
    }

    @Override
    public String getIdentifier() {
        return "SYTC";
    }

    public Map<Long, Integer> getTempi() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SynchronisedTempoCode synchronisedTempoCode : (List) getObjectValue(DataTypes.OBJ_SYNCHRONISED_TEMPO_LIST)) {
            linkedHashMap.put(Long.valueOf(synchronisedTempoCode.getTimestamp()), Integer.valueOf(synchronisedTempoCode.getTempo()));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public int getTimestampFormat() {
        return ((Number) getObjectValue(DataTypes.OBJ_TIME_STAMP_FORMAT)).intValue();
    }

    public List<Long> getTimestamps() {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) getObjectValue(DataTypes.OBJ_SYNCHRONISED_TEMPO_LIST)).iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf(((SynchronisedTempoCode) it.next()).getTimestamp()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidTagException {
        super.read(byteBuffer);
        long timestamp = 0;
        for (SynchronisedTempoCode synchronisedTempoCode : (List) getObjectValue(DataTypes.OBJ_SYNCHRONISED_TEMPO_LIST)) {
            if (synchronisedTempoCode.getTimestamp() < timestamp) {
                AbstractTagItem.logger.warning("Synchronised tempo codes are not in chronological order. " + timestamp + " is followed by " + synchronisedTempoCode.getTimestamp() + Consts.DOT);
            }
            timestamp = synchronisedTempoCode.getTimestamp();
        }
    }

    public boolean removeTempo(long j) {
        ListIterator listIterator = ((List) getObjectValue(DataTypes.OBJ_SYNCHRONISED_TEMPO_LIST)).listIterator();
        boolean z = false;
        while (listIterator.hasNext()) {
            SynchronisedTempoCode synchronisedTempoCode = (SynchronisedTempoCode) listIterator.next();
            if (j == synchronisedTempoCode.getTimestamp()) {
                listIterator.remove();
                z = true;
            }
            if (j > synchronisedTempoCode.getTimestamp()) {
                break;
            }
        }
        return z;
    }

    public void setTimestampFormat(int i) {
        if (EventTimingTimestampTypes.getInstanceOf().getValueForId(i) != null) {
            setObjectValue(DataTypes.OBJ_TIME_STAMP_FORMAT, Integer.valueOf(i));
            return;
        }
        throw new IllegalArgumentException("Timestamp format must be 1 or 2 (ID3v2.4, 4.7): " + i);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TIME_STAMP_FORMAT, this, 1));
        this.objectList.add(new SynchronisedTempoCodeList(this));
    }

    public FrameBodySYTC(int i, byte[] bArr) {
        setObjectValue(DataTypes.OBJ_TIME_STAMP_FORMAT, Integer.valueOf(i));
        setObjectValue(DataTypes.OBJ_SYNCHRONISED_TEMPO_LIST, bArr);
    }

    public FrameBodySYTC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }

    public FrameBodySYTC(FrameBodySYTC frameBodySYTC) {
        super(frameBodySYTC);
    }
}
