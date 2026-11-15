package com.transsion.audiotagger.audio.wav.chunk;

import com.transsion.audiotagger.tag.FieldKey;
import java.util.HashMap;
import java.util.Map;

public enum WavInfoIdentifier {
    ARTIST("IART", FieldKey.ARTIST, 1),
    ALBUM("IPRD", FieldKey.ALBUM, 2),
    TITLE("INAM", FieldKey.TITLE, 3),
    TRACKNO("ITRK", FieldKey.TRACK, 4),
    YEAR("ICRD", FieldKey.YEAR, 5),
    GENRE("IGNR", FieldKey.GENRE, 6),
    ALBUM_ARTIST("iaar", FieldKey.ALBUM_ARTIST, 7),
    COMMENTS("ICMT", FieldKey.COMMENT, 8),
    COMPOSER("IMUS", FieldKey.COMPOSER, 9),
    CONDUCTOR("ITCH", FieldKey.CONDUCTOR, 10),
    LYRICIST("IWRI", FieldKey.LYRICIST, 11),
    ENCODER("ISFT", FieldKey.ENCODER, 12),
    RATING("IRTD", FieldKey.RATING, 13),
    ISRC("ISRC", FieldKey.ISRC, 14),
    LABEL("ICMS", FieldKey.RECORD_LABEL, 15),
    TRACK_GAIN("ITGL", null, 16),
    ALBUM_GAIN("IAGL", null, 17),
    COPYRIGHT("ICOP", null, 18),
    TWONKY_TRACKNO("itrk", null, 1);

    private String code;
    private FieldKey fieldKey;
    private int preferredWriteOrder;
    private static final Map<String, WavInfoIdentifier> CODE_TYPE_MAP = new HashMap();
    private static final Map<FieldKey, WavInfoIdentifier> FIELDKEY_TYPE_MAP = new HashMap();

    WavInfoIdentifier(String str, FieldKey fieldKey, int i) {
        this.code = str;
        this.fieldKey = fieldKey;
        this.preferredWriteOrder = i;
    }

    public static synchronized WavInfoIdentifier getByByFieldKey(FieldKey fieldKey) {
        try {
            if (FIELDKEY_TYPE_MAP.isEmpty()) {
                for (WavInfoIdentifier wavInfoIdentifier : values()) {
                    if (wavInfoIdentifier.getFieldKey() != null) {
                        FIELDKEY_TYPE_MAP.put(wavInfoIdentifier.getFieldKey(), wavInfoIdentifier);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return FIELDKEY_TYPE_MAP.get(fieldKey);
    }

    public static synchronized WavInfoIdentifier getByCode(String str) {
        try {
            if (CODE_TYPE_MAP.isEmpty()) {
                for (WavInfoIdentifier wavInfoIdentifier : values()) {
                    CODE_TYPE_MAP.put(wavInfoIdentifier.getCode(), wavInfoIdentifier);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return CODE_TYPE_MAP.get(str);
    }

    public String getCode() {
        return this.code;
    }

    public FieldKey getFieldKey() {
        return this.fieldKey;
    }

    public int getPreferredWriteOrder() {
        return this.preferredWriteOrder;
    }
}
