package com.transsion.audiotagger.tag.mp4.field;

import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.mp4.Mp4FieldKey;
import com.transsion.audiotagger.tag.mp4.atom.Mp4DataBox;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public class Mp4TrackField extends Mp4TagTextNumberField {
    private static final int NONE_END_VALUE_INDEX = 3;
    private static final int NONE_VALUE_INDEX = 0;
    private static final int TRACK_NO_INDEX = 1;
    private static final int TRACK_TOTAL_INDEX = 2;

    public Mp4TrackField(String str) throws FieldDataInvalidException {
        super(Mp4FieldKey.TRACK.getFieldName(), str);
        ArrayList arrayList = new ArrayList();
        this.numbers = arrayList;
        arrayList.add(new Short("0"));
        String[] strArrSplit = str.split("/");
        int length = strArrSplit.length;
        if (length == 1) {
            try {
                this.numbers.add(Short.valueOf(Short.parseShort(strArrSplit[0])));
                this.numbers.add(new Short("0"));
                this.numbers.add(new Short("0"));
                return;
            } catch (NumberFormatException unused) {
                throw new FieldDataInvalidException("Value of:" + strArrSplit[0] + " is invalid for field:" + this.id);
            }
        }
        if (length != 2) {
            throw new FieldDataInvalidException("Value is invalid for field:" + this.id);
        }
        try {
            this.numbers.add(Short.valueOf(Short.parseShort(strArrSplit[0])));
            try {
                this.numbers.add(Short.valueOf(Short.parseShort(strArrSplit[1])));
                this.numbers.add(new Short("0"));
            } catch (NumberFormatException unused2) {
                throw new FieldDataInvalidException("Value of:" + strArrSplit[1] + " is invalid for field:" + this.id);
            }
        } catch (NumberFormatException unused3) {
            throw new FieldDataInvalidException("Value of:" + strArrSplit[0] + " is invalid for field:" + this.id);
        }
    }

    @Override
    public void build(ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        Mp4BoxHeader mp4BoxHeader = new Mp4BoxHeader(byteBuffer);
        Mp4DataBox mp4DataBox = new Mp4DataBox(mp4BoxHeader, byteBuffer);
        this.dataSize = mp4BoxHeader.getDataLength();
        this.numbers = mp4DataBox.getNumbers();
        StringBuffer stringBuffer = new StringBuffer();
        List<Short> list = this.numbers;
        if (list != null) {
            if (list.size() > 1 && this.numbers.get(1).shortValue() > 0) {
                stringBuffer.append(this.numbers.get(1));
            }
            if (this.numbers.size() > 2 && this.numbers.get(2).shortValue() > 0) {
                stringBuffer.append("/");
                stringBuffer.append(this.numbers.get(2));
            }
        }
        this.content = stringBuffer.toString();
    }

    public Short getTrackNo() {
        return this.numbers.get(1);
    }

    public Short getTrackTotal() {
        if (this.numbers.size() <= 2) {
            return (short) 0;
        }
        return this.numbers.get(2);
    }

    public void setTrackNo(int i) {
        this.numbers.set(1, Short.valueOf((short) i));
    }

    public void setTrackTotal(int i) {
        this.numbers.set(2, Short.valueOf((short) i));
    }

    public Mp4TrackField(int i) {
        super(Mp4FieldKey.TRACK.getFieldName(), String.valueOf(i));
        ArrayList arrayList = new ArrayList();
        this.numbers = arrayList;
        arrayList.add(new Short("0"));
        this.numbers.add(Short.valueOf((short) i));
        this.numbers.add(new Short("0"));
        this.numbers.add(new Short("0"));
    }

    public Mp4TrackField(int i, int i2) {
        super(Mp4FieldKey.TRACK.getFieldName(), String.valueOf(i));
        ArrayList arrayList = new ArrayList();
        this.numbers = arrayList;
        arrayList.add(new Short("0"));
        this.numbers.add(Short.valueOf((short) i));
        this.numbers.add(Short.valueOf((short) i2));
        this.numbers.add(new Short("0"));
    }

    public Mp4TrackField(String str, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        super(str, byteBuffer);
    }
}
