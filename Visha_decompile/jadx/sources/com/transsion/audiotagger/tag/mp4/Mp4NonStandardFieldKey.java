package com.transsion.audiotagger.tag.mp4;

import com.transsion.audiotagger.tag.reference.Tagger;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'AAPR' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class Mp4NonStandardFieldKey {
    private static final Mp4NonStandardFieldKey[] $VALUES;
    public static final Mp4NonStandardFieldKey AAPR;
    public static final Mp4NonStandardFieldKey ADCP;
    public static final Mp4NonStandardFieldKey ALFN;
    public static final Mp4NonStandardFieldKey AMIM;
    public static final Mp4NonStandardFieldKey APTY;
    private String description;
    private String fieldName;
    private Tagger tagger;

    private static Mp4NonStandardFieldKey[] $values() {
        return new Mp4NonStandardFieldKey[]{AAPR, ALFN, AMIM, ADCP, APTY};
    }

    static {
        Tagger tagger = Tagger.MEDIA_MONKEY;
        AAPR = new Mp4NonStandardFieldKey("AAPR", 0, "AApr", "MM3 Album Art Attributes", tagger);
        ALFN = new Mp4NonStandardFieldKey("ALFN", 1, "Alfn", "MM3 Album Art Unknown", tagger);
        AMIM = new Mp4NonStandardFieldKey("AMIM", 2, "AMIM", "MM3 Album Art MimeType", tagger);
        ADCP = new Mp4NonStandardFieldKey("ADCP", 3, "Adcp", "MM3 Album Art Description", tagger);
        APTY = new Mp4NonStandardFieldKey("APTY", 4, "Apty", "MM3 Album Art ID3 Picture Type", tagger);
        $VALUES = $values();
    }

    private Mp4NonStandardFieldKey(String str, int i, String str2, String str3, Tagger tagger) {
        super(str, i);
        this.fieldName = str2;
        this.description = str3;
        this.tagger = tagger;
    }

    public static Mp4NonStandardFieldKey valueOf(String str) {
        return (Mp4NonStandardFieldKey) Enum.valueOf(Mp4NonStandardFieldKey.class, str);
    }

    public static Mp4NonStandardFieldKey[] values() {
        return (Mp4NonStandardFieldKey[]) $VALUES.clone();
    }

    public Tagger geTagger() {
        return this.tagger;
    }

    public String getDescription() {
        return this.description;
    }

    public String getFieldName() {
        return this.fieldName;
    }
}
