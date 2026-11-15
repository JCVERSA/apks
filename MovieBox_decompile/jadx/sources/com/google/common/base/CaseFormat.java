package com.google.common.base;

import java.io.Serializable;
import java.util.Objects;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'LOWER_UNDERSCORE' uses external variables
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
public abstract class CaseFormat {
    public static final CaseFormat LOWER_CAMEL;
    public static final CaseFormat LOWER_UNDERSCORE;
    public static final CaseFormat UPPER_CAMEL;
    public static final CaseFormat UPPER_UNDERSCORE;
    private final b wordBoundary;
    private final String wordSeparator;
    public static final CaseFormat LOWER_HYPHEN = new CaseFormat("LOWER_HYPHEN", 0, b.f('-'), "-") {
        @Override
        String convert(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_UNDERSCORE) {
                return str.replace('-', '_');
            }
            return caseFormat == CaseFormat.UPPER_UNDERSCORE ? a.g(str.replace('-', '_')) : super.convert(caseFormat, str);
        }

        @Override
        String normalizeWord(String str) {
            return a.e(str);
        }
    };
    private static final CaseFormat[] $VALUES = $values();

    private static final class StringConverter extends Converter implements Serializable {
        private static final long serialVersionUID = 0;
        private final CaseFormat sourceFormat;
        private final CaseFormat targetFormat;

        StringConverter(CaseFormat caseFormat, CaseFormat caseFormat2) {
            this.sourceFormat = (CaseFormat) m.o(caseFormat);
            this.targetFormat = (CaseFormat) m.o(caseFormat2);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof StringConverter)) {
                return false;
            }
            StringConverter stringConverter = (StringConverter) obj;
            return this.sourceFormat.equals(stringConverter.sourceFormat) && this.targetFormat.equals(stringConverter.targetFormat);
        }

        public int hashCode() {
            return this.sourceFormat.hashCode() ^ this.targetFormat.hashCode();
        }

        public String toString() {
            return this.sourceFormat + ".converterTo(" + this.targetFormat + ")";
        }

        @Override
        public String doBackward(String str) {
            return this.targetFormat.to(this.sourceFormat, str);
        }

        @Override
        public String doForward(String str) {
            return this.sourceFormat.to(this.targetFormat, str);
        }
    }

    private static CaseFormat[] $values() {
        return new CaseFormat[]{LOWER_HYPHEN, LOWER_UNDERSCORE, LOWER_CAMEL, UPPER_CAMEL, UPPER_UNDERSCORE};
    }

    static {
        String str = "_";
        LOWER_UNDERSCORE = new CaseFormat("LOWER_UNDERSCORE", 1, b.f('_'), str) {
            @Override
            String convert(CaseFormat caseFormat, String str2) {
                if (caseFormat == CaseFormat.LOWER_HYPHEN) {
                    return str2.replace('_', '-');
                }
                return caseFormat == CaseFormat.UPPER_UNDERSCORE ? a.g(str2) : super.convert(caseFormat, str2);
            }

            @Override
            String normalizeWord(String str2) {
                return a.e(str2);
            }
        };
        String str2 = "";
        LOWER_CAMEL = new CaseFormat("LOWER_CAMEL", 2, b.d('A', 'Z'), str2) {
            @Override
            String normalizeFirstWord(String str3) {
                return a.e(str3);
            }

            @Override
            String normalizeWord(String str3) {
                return CaseFormat.firstCharOnlyToUpper(str3);
            }
        };
        UPPER_CAMEL = new CaseFormat("UPPER_CAMEL", 3, b.d('A', 'Z'), str2) {
            @Override
            String normalizeWord(String str3) {
                return CaseFormat.firstCharOnlyToUpper(str3);
            }
        };
        UPPER_UNDERSCORE = new CaseFormat("UPPER_UNDERSCORE", 4, b.f('_'), str) {
            @Override
            String convert(CaseFormat caseFormat, String str3) {
                if (caseFormat == CaseFormat.LOWER_HYPHEN) {
                    return a.e(str3.replace('_', '-'));
                }
                return caseFormat == CaseFormat.LOWER_UNDERSCORE ? a.e(str3) : super.convert(caseFormat, str3);
            }

            @Override
            String normalizeWord(String str3) {
                return a.g(str3);
            }
        };
    }

    public static String firstCharOnlyToUpper(String str) {
        if (str.isEmpty()) {
            return str;
        }
        return a.f(str.charAt(0)) + a.e(str.substring(1));
    }

    public static CaseFormat valueOf(String str) {
        return (CaseFormat) Enum.valueOf(CaseFormat.class, str);
    }

    public static CaseFormat[] values() {
        return (CaseFormat[]) $VALUES.clone();
    }

    String convert(CaseFormat caseFormat, String str) {
        StringBuilder sb2 = null;
        int length = 0;
        int iE = -1;
        while (true) {
            iE = this.wordBoundary.e(str, iE + 1);
            if (iE == -1) {
                break;
            }
            if (length == 0) {
                sb2 = new StringBuilder(str.length() + (caseFormat.wordSeparator.length() * 4));
                sb2.append(caseFormat.normalizeFirstWord(str.substring(length, iE)));
            } else {
                Objects.requireNonNull(sb2);
                sb2.append(caseFormat.normalizeWord(str.substring(length, iE)));
            }
            sb2.append(caseFormat.wordSeparator);
            length = this.wordSeparator.length() + iE;
        }
        if (length == 0) {
            return caseFormat.normalizeFirstWord(str);
        }
        Objects.requireNonNull(sb2);
        sb2.append(caseFormat.normalizeWord(str.substring(length)));
        return sb2.toString();
    }

    public Converter converterTo(CaseFormat caseFormat) {
        return new StringConverter(this, caseFormat);
    }

    String normalizeFirstWord(String str) {
        return normalizeWord(str);
    }

    abstract String normalizeWord(String str);

    public final String to(CaseFormat caseFormat, String str) {
        m.o(caseFormat);
        m.o(str);
        return caseFormat == this ? str : convert(caseFormat, str);
    }

    private CaseFormat(String str, int i10, b bVar, String str2) {
        super(str, i10);
        this.wordBoundary = bVar;
        this.wordSeparator = str2;
    }
}
