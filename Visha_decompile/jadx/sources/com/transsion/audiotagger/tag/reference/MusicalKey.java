package com.transsion.audiotagger.tag.reference;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.EnumSet;
import java.util.HashMap;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.transsion.audiotagger.tag.reference.MusicalKey, still in use, count: 1, list:
  (r0v0 com.transsion.audiotagger.tag.reference.MusicalKey) from 0x0091: INVOKE (r0v1 java.util.EnumSet) = 
  (r0v0 com.transsion.audiotagger.tag.reference.MusicalKey)
  (wrap com.transsion.audiotagger.tag.reference.MusicalKey[]:0x008d: FILLED_NEW_ARRAY 
  (r4v0 com.transsion.audiotagger.tag.reference.MusicalKey)
  (r5v0 com.transsion.audiotagger.tag.reference.MusicalKey)
  (r6v0 com.transsion.audiotagger.tag.reference.MusicalKey)
  (r7v0 com.transsion.audiotagger.tag.reference.MusicalKey)
  (r8v0 com.transsion.audiotagger.tag.reference.MusicalKey)
  (r9v0 com.transsion.audiotagger.tag.reference.MusicalKey)
 A[WRAPPED] elemType: com.transsion.audiotagger.tag.reference.MusicalKey)
 STATIC call: java.util.EnumSet.of(java.lang.Enum, java.lang.Enum[]):java.util.EnumSet A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>, E extends java.lang.Enum<E>[]):java.util.EnumSet<E extends java.lang.Enum<E>> VARARG (c), VARARG_CALL]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class MusicalKey {
    NOTE_A(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS),
    NOTE_B("B"),
    NOTE_C("C"),
    NOTE_D("D"),
    NOTE_E(ExifInterface.LONGITUDE_EAST),
    NOTE_F("F"),
    NOTE_G(RequestConfiguration.MAX_AD_CONTENT_RATING_G),
    FLAT("b"),
    SHARP("#"),
    MINOR(CmcdData.OBJECT_TYPE_MANIFEST),
    OFF_KEY("o");

    private static final int MAX_KEY_LENGTH = 3;
    private static final HashMap<String, MusicalKey> groundKeyMap;
    private static final HashMap<String, MusicalKey> halfKeyMap;
    private String value;

    static {
        EnumSet<MusicalKey> enumSetOf = EnumSet.of(new MusicalKey(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS), new MusicalKey("B"), new MusicalKey("C"), new MusicalKey("D"), new MusicalKey(ExifInterface.LONGITUDE_EAST), new MusicalKey("F"), new MusicalKey(RequestConfiguration.MAX_AD_CONTENT_RATING_G));
        groundKeyMap = new HashMap<>(values().length);
        for (MusicalKey musicalKey : enumSetOf) {
            groundKeyMap.put(musicalKey.getValue(), musicalKey);
        }
        EnumSet<MusicalKey> enumSetOf2 = EnumSet.of(FLAT, SHARP, MINOR);
        halfKeyMap = new HashMap<>(values().length);
        for (MusicalKey musicalKey2 : enumSetOf2) {
            halfKeyMap.put(musicalKey2.getValue(), musicalKey2);
        }
    }

    private MusicalKey(String str) {
        super(str, i);
        this.value = str;
    }

    public static boolean isValid(String str) {
        if (str == null || str.length() > 3 || str.length() == 0) {
            return false;
        }
        if (str.length() == 1 && str.equals(OFF_KEY.getValue())) {
            return true;
        }
        if (!groundKeyMap.containsKey(str.substring(0, 1))) {
            return false;
        }
        if ((str.length() == 2 || str.length() == 3) && !halfKeyMap.containsKey(str.substring(1, 2))) {
            return false;
        }
        return str.length() != 3 || str.substring(2, 3).equals(MINOR.getValue());
    }

    public static MusicalKey valueOf(String str) {
        return (MusicalKey) Enum.valueOf(MusicalKey.class, str);
    }

    public static MusicalKey[] values() {
        return (MusicalKey[]) $VALUES.clone();
    }

    public String getValue() {
        return this.value;
    }
}
