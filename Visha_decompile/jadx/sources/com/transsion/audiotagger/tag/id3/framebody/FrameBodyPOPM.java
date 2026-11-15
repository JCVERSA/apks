package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberFixedLength;
import com.transsion.audiotagger.tag.datatype.NumberVariableLength;
import com.transsion.audiotagger.tag.datatype.StringNullTerminated;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.ByteBuffer;

public class FrameBodyPOPM extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    private static final int COUNTER_MINIMUM_FIELD_SIZE = 0;
    public static final String MEDIA_MONKEY_NO_EMAIL = "no@email";
    private static final int RATING_FIELD_SIZE = 1;

    public FrameBodyPOPM() {
        setObjectValue(DataTypes.OBJ_EMAIL, "");
        setObjectValue(DataTypes.OBJ_RATING, 0L);
        setObjectValue(DataTypes.OBJ_COUNTER, 0L);
    }

    public long getCounter() {
        return ((Number) getObjectValue(DataTypes.OBJ_COUNTER)).longValue();
    }

    public String getEmailToUser() {
        return (String) getObjectValue(DataTypes.OBJ_EMAIL);
    }

    @Override
    public String getIdentifier() {
        return "POPM";
    }

    public long getRating() {
        return ((Number) getObjectValue(DataTypes.OBJ_RATING)).longValue();
    }

    @Override
    public String getUserFriendlyValue() {
        return getEmailToUser() + StringUtils.PROCESS_POSTFIX_DELIMITER + getRating() + StringUtils.PROCESS_POSTFIX_DELIMITER + getCounter();
    }

    public void parseString(String str) {
        try {
            setRating(Integer.parseInt(str));
            setEmailToUser(MEDIA_MONKEY_NO_EMAIL);
        } catch (NumberFormatException unused) {
        }
    }

    public void setCounter(long j) {
        setObjectValue(DataTypes.OBJ_COUNTER, Long.valueOf(j));
    }

    public void setEmailToUser(String str) {
        setObjectValue(DataTypes.OBJ_EMAIL, str);
    }

    public void setRating(long j) {
        setObjectValue(DataTypes.OBJ_RATING, Long.valueOf(j));
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringNullTerminated(DataTypes.OBJ_EMAIL, this));
        this.objectList.add(new NumberFixedLength(DataTypes.OBJ_RATING, this, 1));
        this.objectList.add(new NumberVariableLength(DataTypes.OBJ_COUNTER, this, 0));
    }

    public FrameBodyPOPM(FrameBodyPOPM frameBodyPOPM) {
        super(frameBodyPOPM);
    }

    public FrameBodyPOPM(String str, long j, long j2) {
        setObjectValue(DataTypes.OBJ_EMAIL, str);
        setObjectValue(DataTypes.OBJ_RATING, Long.valueOf(j));
        setObjectValue(DataTypes.OBJ_COUNTER, Long.valueOf(j2));
    }

    public FrameBodyPOPM(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
