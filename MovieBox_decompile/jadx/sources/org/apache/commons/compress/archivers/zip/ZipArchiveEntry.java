package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;

public abstract class ZipArchiveEntry extends ZipEntry implements cz.a {

    public enum CommentSource {
        COMMENT,
        UNICODE_EXTRA_FIELD
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'BEST_EFFORT' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static class ExtraFieldParsingMode {
        private static final ExtraFieldParsingMode[] $VALUES;
        public static final ExtraFieldParsingMode BEST_EFFORT;
        public static final ExtraFieldParsingMode DRACONIC;
        public static final ExtraFieldParsingMode ONLY_PARSEABLE_LENIENT;
        public static final ExtraFieldParsingMode ONLY_PARSEABLE_STRICT;
        public static final ExtraFieldParsingMode STRICT_FOR_KNOW_EXTRA_FIELDS;
        private final c.a onUnparseableData;

        static {
            c.a aVar = c.a.f67975d;
            ExtraFieldParsingMode extraFieldParsingMode = new ExtraFieldParsingMode("BEST_EFFORT", 0, aVar) {
                @Override
                public t fill(t tVar, byte[] bArr, int i10, int i11, boolean z10) {
                    return ExtraFieldParsingMode.fillAndMakeUnrecognizedOnError(tVar, bArr, i10, i11, z10);
                }
            };
            BEST_EFFORT = extraFieldParsingMode;
            ExtraFieldParsingMode extraFieldParsingMode2 = new ExtraFieldParsingMode("STRICT_FOR_KNOW_EXTRA_FIELDS", 1, aVar);
            STRICT_FOR_KNOW_EXTRA_FIELDS = extraFieldParsingMode2;
            c.a aVar2 = c.a.f67974c;
            ExtraFieldParsingMode extraFieldParsingMode3 = new ExtraFieldParsingMode("ONLY_PARSEABLE_LENIENT", 2, aVar2) {
                @Override
                public t fill(t tVar, byte[] bArr, int i10, int i11, boolean z10) {
                    return ExtraFieldParsingMode.fillAndMakeUnrecognizedOnError(tVar, bArr, i10, i11, z10);
                }
            };
            ONLY_PARSEABLE_LENIENT = extraFieldParsingMode3;
            ExtraFieldParsingMode extraFieldParsingMode4 = new ExtraFieldParsingMode("ONLY_PARSEABLE_STRICT", 3, aVar2);
            ONLY_PARSEABLE_STRICT = extraFieldParsingMode4;
            ExtraFieldParsingMode extraFieldParsingMode5 = new ExtraFieldParsingMode("DRACONIC", 4, c.a.f67973b);
            DRACONIC = extraFieldParsingMode5;
            $VALUES = new ExtraFieldParsingMode[]{extraFieldParsingMode, extraFieldParsingMode2, extraFieldParsingMode3, extraFieldParsingMode4, extraFieldParsingMode5};
        }

        public static t fillAndMakeUnrecognizedOnError(t tVar, byte[] bArr, int i10, int i11, boolean z10) {
            try {
                return c.c(tVar, bArr, i10, i11, z10);
            } catch (ZipException unused) {
                j jVar = new j();
                jVar.b(tVar.getHeaderId());
                if (z10) {
                    jVar.c(Arrays.copyOfRange(bArr, i10, i11 + i10));
                } else {
                    jVar.a(Arrays.copyOfRange(bArr, i10, i11 + i10));
                }
                return jVar;
            }
        }

        public static ExtraFieldParsingMode valueOf(String str) {
            return (ExtraFieldParsingMode) Enum.valueOf(ExtraFieldParsingMode.class, str);
        }

        public static ExtraFieldParsingMode[] values() {
            return (ExtraFieldParsingMode[]) $VALUES.clone();
        }

        public t createExtraField(ZipShort zipShort) throws IllegalAccessException, ZipException, InstantiationException {
            return c.a(zipShort);
        }

        public t fill(t tVar, byte[] bArr, int i10, int i11, boolean z10) throws ZipException {
            return c.c(tVar, bArr, i10, i11, z10);
        }

        public t onUnparseableExtraField(byte[] bArr, int i10, int i11, boolean z10, int i12) throws ZipException {
            return this.onUnparseableData.a(bArr, i10, i11, z10, i12);
        }

        private ExtraFieldParsingMode(String str, int i10, c.a aVar) {
            super(str, i10);
            this.onUnparseableData = aVar;
        }
    }

    public enum NameSource {
        NAME,
        NAME_WITH_EFS_FLAG,
        UNICODE_EXTRA_FIELD
    }
}
