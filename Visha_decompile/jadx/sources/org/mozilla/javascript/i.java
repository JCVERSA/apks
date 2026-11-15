package org.mozilla.javascript;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import io.appmetrica.analytics.BuildConfig;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.io.IOException;
import java.io.Reader;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.greenrobot.greendao.generator.Schema;

public class i {
    public Token.CommentType A;
    public boolean B;
    public boolean C;
    public int D;
    public Parser E;
    public boolean a;
    public String b;
    public double d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int k;
    public int n;
    public int r;
    public String s;
    public Reader t;
    public char[] u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;
    public String c = "";
    public char[] j = new char[128];
    public ObjToIntMap l = new ObjToIntMap(50);
    public final int[] m = new int[3];
    public boolean o = false;
    public int p = 0;
    public int q = -1;
    public String F = "";
    public int G = -1;

    public i(Parser parser, Reader reader, String str, int i) {
        this.E = parser;
        this.r = i;
        if (reader != null) {
            if (str != null) {
                Kit.codeBug();
            }
            this.t = reader;
            this.u = new char[512];
            this.v = 0;
        } else {
            if (str == null) {
                Kit.codeBug();
            }
            this.s = str;
            this.v = str.length();
        }
        this.x = 0;
        this.w = 0;
    }

    public static boolean A(String str, int i, boolean z) {
        return T(str, i, z) != 0;
    }

    public static int T(String str, int i, boolean z) {
        return i < 200 ? V(str) : U(str, z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:187:0x0268  */
    /* JADX WARN: Code duplicated, block: B:189:0x026c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:42:0x008f  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b9  */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01a5, code lost:
    
        if (r17.charAt(1) == 'l') goto L193;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int U(String str, boolean z) {
        String str2;
        int i;
        int i2 = 114;
        switch (str.length()) {
            case 2:
                char cCharAt = str.charAt(1);
                if (cCharAt != 'f') {
                    if (cCharAt != 'n') {
                        if (cCharAt == 'o' && str.charAt(0) == 'd') {
                            i2 = 119;
                        } else {
                            str2 = null;
                            i2 = 0;
                            if (str2 != null) {
                                i2 = 0;
                            }
                        }
                    } else if (str.charAt(0) != 'i') {
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    } else {
                        i2 = 52;
                    }
                } else if (str.charAt(0) != 'i') {
                    str2 = null;
                    i2 = 0;
                    if (str2 != null && str2 != str && !str2.equals(str)) {
                        i2 = 0;
                    }
                } else {
                    i2 = 113;
                }
                break;
            case 3:
                char cCharAt2 = str.charAt(0);
                if (cCharAt2 == 'f') {
                    if (str.charAt(2) == 'r' && str.charAt(1) == 'o') {
                        i2 = 120;
                    } else {
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    }
                } else if (cCharAt2 == 'l') {
                    if (str.charAt(2) == 't' && str.charAt(1) == 'e') {
                        i2 = 154;
                    } else {
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    }
                } else if (cCharAt2 == 'n') {
                    if (str.charAt(2) == 'w' && str.charAt(1) == 'e') {
                        i2 = 30;
                    } else {
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    }
                } else if (cCharAt2 == 't') {
                    if (str.charAt(2) == 'y' && str.charAt(1) == 'r') {
                        i2 = 82;
                    } else {
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    }
                } else if (cCharAt2 == 'v' && str.charAt(2) == 'r' && str.charAt(1) == 'a') {
                    i2 = 123;
                } else {
                    str2 = null;
                    i2 = 0;
                    if (str2 != null) {
                        i2 = 0;
                    }
                }
                break;
            case 4:
                char cCharAt3 = str.charAt(0);
                if (cCharAt3 == 'c') {
                    if (str.charAt(3) == 'e' && str.charAt(2) == 's' && str.charAt(1) == 'a') {
                        i2 = 116;
                    } else {
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    }
                } else if (cCharAt3 == 'e') {
                    char cCharAt4 = str.charAt(3);
                    if (cCharAt4 == 'e') {
                        if (str.charAt(2) == 's') {
                        }
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    } else if (cCharAt4 == 'm' && str.charAt(2) == 'u' && str.charAt(1) == 'n') {
                        i2 = 128;
                    } else {
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    }
                } else {
                    if (cCharAt3 != 'n') {
                        if (cCharAt3 != 't') {
                            if (cCharAt3 != 'v') {
                                if (cCharAt3 == 'w') {
                                    str2 = "with";
                                    i = 124;
                                }
                                if (str2 != null) {
                                    i2 = 0;
                                }
                            } else {
                                str2 = "void";
                                i = 127;
                            }
                            break;
                        } else {
                            char cCharAt5 = str.charAt(3);
                            if (cCharAt5 != 'e') {
                                if (cCharAt5 == 's' && str.charAt(2) == 'i' && str.charAt(1) == 'h') {
                                    i2 = 43;
                                    break;
                                }
                            } else if (str.charAt(2) == 'u' && str.charAt(1) == 'r') {
                                i2 = 45;
                                break;
                            }
                        }
                        str2 = null;
                        i2 = 0;
                        if (str2 != null) {
                            i2 = 0;
                        }
                    } else {
                        str2 = "null";
                        i = 42;
                    }
                    i2 = i;
                    if (str2 != null) {
                        i2 = 0;
                    }
                }
                break;
            case 5:
                char cCharAt6 = str.charAt(2);
                if (cCharAt6 == 'a') {
                    char cCharAt7 = str.charAt(0);
                    if (cCharAt7 == 'c') {
                        str2 = "class";
                    } else if (cCharAt7 == 'a') {
                        str2 = "await";
                    } else {
                        str2 = null;
                        i2 = 0;
                    }
                    i2 = 128;
                } else if (cCharAt6 == 'e') {
                    char cCharAt8 = str.charAt(0);
                    if (cCharAt8 == 'b') {
                        str2 = "break";
                        i2 = 121;
                    } else if (cCharAt8 == 'y') {
                        str2 = "yield";
                        i = 73;
                        i2 = i;
                    } else {
                        str2 = null;
                        i2 = 0;
                    }
                } else if (cCharAt6 != 'i') {
                    if (cCharAt6 == 'l') {
                        str2 = BooleanUtils.FALSE;
                        i = 44;
                    } else if (cCharAt6 == 'n') {
                        str2 = StringLookupFactory.KEY_CONST;
                        i = 155;
                    } else if (cCharAt6 == 'p') {
                        str2 = "super";
                        i2 = 128;
                    } else if (cCharAt6 == 'r') {
                        str2 = "throw";
                        i = 50;
                    } else if (cCharAt6 != 't') {
                        str2 = null;
                        i2 = 0;
                    } else {
                        str2 = "catch";
                        i = 125;
                    }
                    i2 = i;
                } else {
                    str2 = "while";
                    i2 = 118;
                }
                if (str2 != null) {
                    i2 = 0;
                }
                break;
            case 6:
                char cCharAt9 = str.charAt(1);
                if (cCharAt9 != 'e') {
                    if (cCharAt9 == 'm') {
                        str2 = "import";
                    } else if (cCharAt9 != 't') {
                        if (cCharAt9 != 'u') {
                            switch (cCharAt9) {
                                case 'w':
                                    str2 = ClientABTestDTOKt.SWITCH;
                                    i2 = 115;
                                    break;
                                case 'x':
                                    str2 = "export";
                                    break;
                                case 'y':
                                    str2 = "typeof";
                                    i = 32;
                                    i2 = i;
                                    break;
                                default:
                                    str2 = null;
                                    i2 = 0;
                                    break;
                            }
                        } else if (z) {
                            str2 = BuildConfig.SDK_BUILD_FLAVOR;
                        } else {
                            str2 = ClientABTestDTOKt.SWITCH;
                            i2 = 115;
                        }
                    } else if (z) {
                        str2 = "static";
                    } else if (z) {
                        str2 = BuildConfig.SDK_BUILD_FLAVOR;
                    } else {
                        str2 = ClientABTestDTOKt.SWITCH;
                        i2 = 115;
                    }
                    i2 = 128;
                } else {
                    char cCharAt10 = str.charAt(0);
                    if (cCharAt10 == 'd') {
                        str2 = "delete";
                        i = 31;
                    } else if (cCharAt10 == 'r') {
                        str2 = "return";
                        i = 4;
                    } else {
                        str2 = null;
                        i2 = 0;
                    }
                    i2 = i;
                }
                if (str2 != null) {
                    i2 = 0;
                }
                break;
            case 7:
                char cCharAt11 = str.charAt(1);
                if (cCharAt11 != 'a') {
                    if (cCharAt11 == 'e') {
                        str2 = Schema.DEFAULT_NAME;
                        i2 = 117;
                    } else if (cCharAt11 != 'i') {
                        if (cCharAt11 == 'r') {
                            if (z) {
                                str2 = "private";
                            }
                            i2 = 128;
                        } else if (cCharAt11 != 'x') {
                            str2 = null;
                            i2 = 0;
                        }
                        str2 = "extends";
                        i2 = 128;
                    } else {
                        str2 = "finally";
                        i = 126;
                        i2 = i;
                    }
                } else if (z) {
                    str2 = "package";
                    i2 = 128;
                } else {
                    str2 = Schema.DEFAULT_NAME;
                    i2 = 117;
                }
                if (str2 != null) {
                    i2 = 0;
                }
                break;
            case 8:
                char cCharAt12 = str.charAt(0);
                if (cCharAt12 != 'c') {
                    if (cCharAt12 == 'd') {
                        str2 = "debugger";
                        i = 161;
                    } else if (cCharAt12 != 'f') {
                        str2 = null;
                        i2 = 0;
                    } else {
                        str2 = "function";
                        i2 = 110;
                    }
                    if (str2 != null) {
                        i2 = 0;
                    }
                } else {
                    str2 = "continue";
                    i = 122;
                }
                i2 = i;
                if (str2 != null) {
                    i2 = 0;
                }
                break;
            case 9:
                char cCharAt13 = str.charAt(0);
                if (cCharAt13 == 'i' && z) {
                    str2 = "interface";
                } else {
                    if (cCharAt13 == 'p' && z) {
                        str2 = "protected";
                    } else {
                        str2 = null;
                        i2 = 0;
                    }
                    if (str2 != null) {
                        i2 = 0;
                    }
                }
                i2 = 128;
                if (str2 != null) {
                    i2 = 0;
                }
                break;
            case 10:
                char cCharAt14 = str.charAt(1);
                if (cCharAt14 == 'm' && z) {
                    str2 = "implements";
                    i2 = 128;
                    if (str2 != null) {
                        i2 = 0;
                    }
                } else {
                    if (cCharAt14 == 'n') {
                        str2 = "instanceof";
                        i = 53;
                        i2 = i;
                    } else {
                        str2 = null;
                        i2 = 0;
                    }
                    if (str2 != null) {
                        i2 = 0;
                    }
                }
                break;
            default:
                str2 = null;
                i2 = 0;
                if (str2 != null) {
                    i2 = 0;
                }
                break;
        }
        if (i2 == 0) {
            return 0;
        }
        return i2 & 255;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:152:0x0205  */
    /* JADX WARN: Code duplicated, block: B:159:0x021f A[PHI: r3
      0x021f: PHI (r3v3 int) = (r3v1 int), (r3v0 int) binds: [B:217:0x02d3, B:158:0x021d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:219:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:221:0x02db A[ADDED_TO_REGION] */
    public static int V(String str) {
        String str2;
        int i = 110;
        int i2 = 116;
        switch (str.length()) {
            case 2:
                i2 = 119;
                char cCharAt = str.charAt(1);
                if (cCharAt != 'f') {
                    if (cCharAt == 'n') {
                        if (str.charAt(0) == 'i') {
                            i = 52;
                        }
                        break;
                    } else if (cCharAt == 'o' && str.charAt(0) == 'd') {
                        i = i2;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    if (str2 != null) {
                        i = 0;
                    }
                } else if (str.charAt(0) != 'i') {
                    str2 = null;
                    i = 0;
                    if (str2 != null && str2 != str && !str2.equals(str)) {
                        i = 0;
                    }
                } else {
                    i = 113;
                }
                break;
            case 3:
                char cCharAt2 = str.charAt(0);
                if (cCharAt2 != 'f') {
                    if (cCharAt2 != 'i') {
                        if (cCharAt2 != 'l') {
                            if (cCharAt2 != 'n') {
                                if (cCharAt2 != 't') {
                                    if (cCharAt2 == 'v' && str.charAt(2) == 'r' && str.charAt(1) == 'a') {
                                        i = 123;
                                    }
                                    break;
                                } else if (str.charAt(2) == 'y' && str.charAt(1) == 'r') {
                                    i = 82;
                                    break;
                                }
                            } else if (str.charAt(2) == 'w' && str.charAt(1) == 'e') {
                                i = 30;
                                break;
                            }
                        } else if (str.charAt(2) == 't' && str.charAt(1) == 'e') {
                            i = 154;
                            break;
                        }
                    } else if (str.charAt(2) == 't' && str.charAt(1) == 'n') {
                        i = 128;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    if (str2 != null) {
                        i = 0;
                    }
                } else if (str.charAt(2) == 'r' && str.charAt(1) == 'o') {
                    i = 120;
                } else {
                    str2 = null;
                    i = 0;
                    if (str2 != null) {
                        i = 0;
                    }
                }
                break;
            case 4:
                char cCharAt3 = str.charAt(0);
                if (cCharAt3 == 'b') {
                    str2 = "byte";
                } else if (cCharAt3 == 'c') {
                    char cCharAt4 = str.charAt(3);
                    if (cCharAt4 != 'e') {
                        if (cCharAt4 == 'r' && str.charAt(2) == 'a' && str.charAt(1) == 'h') {
                            i = 128;
                            break;
                        }
                    } else if (str.charAt(2) == 's' && str.charAt(1) == 'a') {
                        i = i2;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    if (str2 != null) {
                        i = 0;
                    }
                } else if (cCharAt3 == 'e') {
                    char cCharAt5 = str.charAt(3);
                    if (cCharAt5 != 'e') {
                        if (cCharAt5 == 'm' && str.charAt(2) == 'u' && str.charAt(1) == 'n') {
                            i = 128;
                            break;
                        }
                    } else if (str.charAt(2) == 's' && str.charAt(1) == 'l') {
                        i = 114;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    if (str2 != null) {
                        i = 0;
                    }
                } else if (cCharAt3 == 'g') {
                    str2 = "goto";
                } else if (cCharAt3 != 'l') {
                    if (cCharAt3 != 'n') {
                        if (cCharAt3 == 't') {
                            char cCharAt6 = str.charAt(3);
                            if (cCharAt6 != 'e') {
                                if (cCharAt6 == 's' && str.charAt(2) == 'i' && str.charAt(1) == 'h') {
                                    i = 43;
                                    break;
                                }
                            } else if (str.charAt(2) == 'u' && str.charAt(1) == 'r') {
                                i = 45;
                                break;
                            }
                        } else if (cCharAt3 == 'v') {
                            str2 = "void";
                            i = 127;
                        } else if (cCharAt3 == 'w') {
                            str2 = "with";
                            i = 124;
                        }
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "null";
                        i = 42;
                    }
                    if (str2 != null) {
                        i = 0;
                    }
                } else {
                    str2 = "long";
                }
                i = 128;
                if (str2 != null) {
                    i = 0;
                }
                break;
            case 5:
                char cCharAt7 = str.charAt(2);
                if (cCharAt7 != 'a') {
                    if (cCharAt7 == 'e') {
                        char cCharAt8 = str.charAt(0);
                        if (cCharAt8 == 'b') {
                            str2 = "break";
                            i = 121;
                        } else if (cCharAt8 == 'y') {
                            str2 = "yield";
                            i = 73;
                        } else {
                            str2 = null;
                            i = 0;
                        }
                    } else if (cCharAt7 == 'i') {
                        str2 = "while";
                        i = 118;
                    } else if (cCharAt7 == 'l') {
                        str2 = BooleanUtils.FALSE;
                        i = 44;
                    } else if (cCharAt7 == 'r') {
                        str2 = "throw";
                        i = 50;
                    } else if (cCharAt7 != 't') {
                        switch (cCharAt7) {
                            case 'n':
                                char cCharAt9 = str.charAt(0);
                                if (cCharAt9 == 'c') {
                                    str2 = StringLookupFactory.KEY_CONST;
                                    i = 155;
                                } else if (cCharAt9 != 'f') {
                                    str2 = null;
                                    i = 0;
                                } else {
                                    str2 = "final";
                                }
                                break;
                            case 'o':
                                char cCharAt10 = str.charAt(0);
                                if (cCharAt10 == 'f') {
                                    str2 = TypedValues.Custom.S_FLOAT;
                                } else if (cCharAt10 != 's') {
                                    str2 = null;
                                    i = 0;
                                } else {
                                    str2 = "short";
                                }
                                break;
                            case 'p':
                                str2 = "super";
                                break;
                            default:
                                str2 = null;
                                i = 0;
                                break;
                        }
                    } else {
                        str2 = "catch";
                        i = 125;
                    }
                    if (str2 != null) {
                        i = 0;
                    }
                } else {
                    str2 = "class";
                }
                i = 128;
                if (str2 != null) {
                    i = 0;
                }
                break;
            case 6:
                char cCharAt11 = str.charAt(1);
                if (cCharAt11 != 'a') {
                    if (cCharAt11 == 'e') {
                        char cCharAt12 = str.charAt(0);
                        if (cCharAt12 == 'd') {
                            str2 = "delete";
                            i = 31;
                        } else if (cCharAt12 == 'r') {
                            str2 = "return";
                            i = 4;
                        } else {
                            str2 = null;
                            i = 0;
                        }
                    } else if (cCharAt11 == 'h') {
                        str2 = "throws";
                    } else if (cCharAt11 == 'm') {
                        str2 = "import";
                    } else if (cCharAt11 == 'o') {
                        str2 = "double";
                    } else if (cCharAt11 == 't') {
                        str2 = "static";
                    } else if (cCharAt11 != 'u') {
                        switch (cCharAt11) {
                            case 'w':
                                str2 = ClientABTestDTOKt.SWITCH;
                                i = 115;
                                break;
                            case 'x':
                                str2 = "export";
                                break;
                            case 'y':
                                str2 = "typeof";
                                i = 32;
                                break;
                            default:
                                str2 = null;
                                i = 0;
                                break;
                        }
                    } else {
                        str2 = BuildConfig.SDK_BUILD_FLAVOR;
                    }
                    if (str2 != null) {
                        i = 0;
                    }
                } else {
                    str2 = PluginErrorDetails.Platform.NATIVE;
                }
                i = 128;
                if (str2 != null) {
                    i = 0;
                }
                break;
            case 7:
                char cCharAt13 = str.charAt(1);
                if (cCharAt13 != 'a') {
                    if (cCharAt13 == 'e') {
                        str2 = Schema.DEFAULT_NAME;
                        i = 117;
                    } else if (cCharAt13 == 'i') {
                        str2 = "finally";
                        i = 126;
                    } else if (cCharAt13 == 'o') {
                        str2 = TypedValues.Custom.S_BOOLEAN;
                    } else if (cCharAt13 == 'r') {
                        str2 = "private";
                    } else if (cCharAt13 != 'x') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "extends";
                    }
                    if (str2 != null) {
                        i = 0;
                    }
                } else {
                    str2 = "package";
                }
                i = 128;
                if (str2 != null) {
                    i = 0;
                }
                break;
            case 8:
                char cCharAt14 = str.charAt(0);
                if (cCharAt14 != 'a') {
                    if (cCharAt14 == 'f') {
                        str2 = "function";
                    } else if (cCharAt14 == 'v') {
                        str2 = "volatile";
                    } else if (cCharAt14 == 'c') {
                        str2 = "continue";
                        i = 122;
                    } else if (cCharAt14 != 'd') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "debugger";
                        i = 161;
                    }
                    if (str2 != null) {
                        i = 0;
                    }
                } else {
                    str2 = "abstract";
                }
                i = 128;
                if (str2 != null) {
                    i = 0;
                }
                break;
            case 9:
                char cCharAt15 = str.charAt(0);
                if (cCharAt15 == 'i') {
                    str2 = "interface";
                } else if (cCharAt15 != 'p') {
                    if (cCharAt15 == 't') {
                        str2 = "transient";
                    } else {
                        str2 = null;
                        i = 0;
                    }
                    if (str2 != null) {
                        i = 0;
                    }
                } else {
                    str2 = "protected";
                }
                i = 128;
                if (str2 != null) {
                    i = 0;
                }
                break;
            case 10:
                char cCharAt16 = str.charAt(1);
                if (cCharAt16 == 'm') {
                    str2 = "implements";
                    i = 128;
                } else if (cCharAt16 == 'n') {
                    str2 = "instanceof";
                    i = 53;
                } else {
                    str2 = null;
                    i = 0;
                }
                if (str2 != null) {
                    i = 0;
                }
                break;
            case 11:
            default:
                str2 = null;
                i = 0;
                if (str2 != null) {
                    i = 0;
                }
                break;
            case 12:
                str2 = "synchronized";
                i = 128;
                if (str2 != null) {
                    i = 0;
                }
                break;
        }
        if (i == 0) {
            return 0;
        }
        return i & 255;
    }

    public static String d(String str) {
        int length = str.length() - 1;
        StringBuilder sb = new StringBuilder(str.substring(0, length));
        sb.append("\\u");
        String hexString = Integer.toHexString(str.charAt(length));
        for (int i = 0; i < 4 - hexString.length(); i++) {
            sb.append('0');
        }
        sb.append(hexString);
        return sb.toString();
    }

    public static boolean w(int i) {
        if (i <= 90) {
            return 65 <= i;
        }
        return 97 <= i && i <= 122;
    }

    public static boolean x(int i) {
        return 48 <= i && i <= 57;
    }

    public static boolean y(int i) {
        return i > 127 && Character.getType((char) i) == 16;
    }

    public static boolean z(int i) {
        if (i <= 127) {
            return i == 32 || i == 9 || i == 12 || i == 11;
        }
        return i == 160 || i == 65279 || Character.getType((char) i) == 12;
    }

    public final boolean B() {
        return this.G != -1;
    }

    public final boolean C() {
        return this.e;
    }

    public final boolean D() {
        return this.h;
    }

    public final boolean E() {
        return this.g;
    }

    public final boolean F() {
        return this.f;
    }

    public boolean G() {
        return this.B;
    }

    public final void H() {
        I("");
    }

    public final void I(String str) {
        if (!this.E.compilerEnv.isRecordingComments() || this.t == null) {
            return;
        }
        this.F = str;
        this.G = this.w - 1;
    }

    public final boolean J(int i) {
        int iJ = j();
        if (iJ == i) {
            this.z = this.x;
            return true;
        }
        Y(iJ);
        return false;
    }

    public final int K() {
        int iH = h();
        X(iH);
        return iH;
    }

    public String L() {
        String str = this.b;
        this.b = null;
        return str;
    }

    public final boolean M() {
        int iH = h();
        while (iH != -1) {
            a(iH);
            if (iH == 93 && K() == 93) {
                iH = h();
                a(iH);
                if (K() == 62) {
                    a(h());
                    return true;
                }
            } else {
                iH = h();
            }
        }
        this.k = 0;
        this.c = null;
        this.E.addError("msg.XML.bad.form");
        return false;
    }

    public final boolean N() {
        int iH = h();
        int i = 1;
        while (iH != -1) {
            a(iH);
            if (iH == 60) {
                i++;
            } else if (iH == 62 && (i = i - 1) == 0) {
                return true;
            }
            iH = h();
        }
        this.k = 0;
        this.c = null;
        this.E.addError("msg.XML.bad.form");
        return false;
    }

    public final boolean O() {
        while (true) {
            int iH = h();
            if (iH == -1) {
                this.k = 0;
                this.c = null;
                this.E.addError("msg.XML.bad.form");
                return false;
            }
            a(iH);
            if (iH == 63 && K() == 62) {
                a(h());
                return true;
            }
        }
    }

    public final boolean P(int i) {
        int iH;
        do {
            iH = h();
            if (iH == -1) {
                this.k = 0;
                this.c = null;
                this.E.addError("msg.XML.bad.form");
                return false;
            }
            a(iH);
        } while (iH != i);
        return true;
    }

    public void Q(int i) {
        int iH;
        int i2 = this.y;
        this.k = 0;
        if (i == 101) {
            a(61);
        } else {
            if (i != 24) {
                Kit.codeBug();
            }
            if (K() == 42) {
                this.z = this.x - 1;
                this.c = new String(this.j, 0, this.k);
                this.E.reportError("msg.unterminated.re.lit");
                return;
            }
        }
        boolean z = false;
        while (true) {
            iH = h();
            if (iH == 47 && !z) {
                int i3 = this.k;
                while (true) {
                    if (!J(103)) {
                        if (!J(105)) {
                            if (!J(109)) {
                                if (!J(121)) {
                                    break;
                                } else {
                                    a(121);
                                }
                            } else {
                                a(109);
                            }
                        } else {
                            a(105);
                        }
                    } else {
                        a(103);
                    }
                }
                this.z = i2 + this.k + 2;
                if (w(K())) {
                    this.E.reportError("msg.invalid.re.flag");
                }
                this.c = new String(this.j, 0, i3);
                this.b = new String(this.j, i3, this.k - i3);
                return;
            }
            if (iH == 10 || iH == -1) {
                break;
            }
            if (iH == 92) {
                a(iH);
                iH = h();
                if (iH == 10 || iH == -1) {
                    X(iH);
                    this.z = this.x - 1;
                    this.c = new String(this.j, 0, this.k);
                    this.E.reportError("msg.unterminated.re.lit");
                    return;
                }
            } else if (iH == 91) {
                z = true;
            } else if (iH == 93) {
                z = false;
            }
            a(iH);
        }
        X(iH);
        this.z = this.x - 1;
        this.c = new String(this.j, 0, this.k);
        this.E.reportError("msg.unterminated.re.lit");
    }

    public final boolean R() {
        int iH = h();
        while (iH != -1) {
            a(iH);
            if (iH == 45 && K() == 45) {
                iH = h();
                a(iH);
                if (K() == 62) {
                    a(h());
                    return true;
                }
            } else {
                iH = h();
            }
        }
        this.k = 0;
        this.c = null;
        this.E.addError("msg.XML.bad.form");
        return false;
    }

    public final void S() {
        int iH;
        do {
            iH = h();
            if (iH == -1) {
                break;
            }
        } while (iH != 10);
        X(iH);
        this.z = this.x;
    }

    public final String W(int i, int i2) {
        String str = this.s;
        if (str != null) {
            return str.substring(i, i2);
        }
        return new String(this.u, i, i2 - i);
    }

    public final void X(int i) {
        int i2 = this.n;
        if (i2 != 0 && this.m[i2 - 1] == 10) {
            Kit.codeBug();
        }
        int[] iArr = this.m;
        int i3 = this.n;
        this.n = i3 + 1;
        iArr[i3] = i;
        this.x--;
    }

    public final void Y(int i) {
        int[] iArr = this.m;
        int i2 = this.n;
        this.n = i2 + 1;
        iArr[i2] = i;
        this.x--;
    }

    public final void a(int i) {
        int i2 = this.k;
        char[] cArr = this.j;
        if (i2 == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, i2);
            this.j = cArr2;
        }
        this.j[i2] = (char) i;
        this.k = i2 + 1;
    }

    public final boolean b() {
        int i = this.n;
        return i == 0 || this.m[i - 1] != 10;
    }

    public final int c(int i) {
        if (i < 0) {
            return -1;
        }
        String str = this.s;
        if (str != null) {
            if (i >= this.v) {
                return -1;
            }
            return str.charAt(i);
        }
        if (i >= this.v) {
            int i2 = this.w;
            try {
                if (!f()) {
                    return -1;
                }
                i -= i2 - this.w;
            } catch (IOException unused) {
                return -1;
            }
        }
        return this.u[i];
    }

    public final boolean e() {
        return this.o;
    }

    public final boolean f() throws IOException {
        if (this.s != null) {
            Kit.codeBug();
        }
        if (this.v == this.u.length) {
            if (this.p == 0 || B()) {
                char[] cArr = this.u;
                char[] cArr2 = new char[cArr.length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, this.v);
                this.u = cArr2;
            } else {
                char[] cArr3 = this.u;
                int i = this.p;
                System.arraycopy(cArr3, i, cArr3, 0, this.v - i);
                int i2 = this.v;
                int i3 = this.p;
                this.v = i2 - i3;
                this.w -= i3;
                this.p = 0;
            }
        }
        Reader reader = this.t;
        char[] cArr4 = this.u;
        int i4 = this.v;
        int i5 = reader.read(cArr4, i4, cArr4.length - i4);
        if (i5 < 0) {
            return false;
        }
        this.v += i5;
        return true;
    }

    public final String g() {
        if (this.s != null) {
            if (B()) {
                Kit.codeBug();
            }
            return this.s.substring(this.y, this.z);
        }
        if (!B()) {
            Kit.codeBug();
        }
        StringBuilder sb = new StringBuilder(this.F);
        sb.append(this.u, this.G, v() - this.F.length());
        this.G = -1;
        return sb.toString();
    }

    public final int h() {
        return i(true);
    }

    public final int i(boolean z) {
        char cCharAt;
        int i = this.n;
        if (i != 0) {
            this.x++;
            int[] iArr = this.m;
            int i2 = i - 1;
            this.n = i2;
            return iArr[i2];
        }
        while (true) {
            String str = this.s;
            if (str != null) {
                int i3 = this.w;
                if (i3 == this.v) {
                    this.o = true;
                    return -1;
                }
                this.x++;
                this.w = i3 + 1;
                cCharAt = str.charAt(i3);
            } else {
                if (this.w == this.v && !f()) {
                    this.o = true;
                    return -1;
                }
                this.x++;
                char[] cArr = this.u;
                int i4 = this.w;
                this.w = i4 + 1;
                cCharAt = cArr[i4];
            }
            int i5 = this.q;
            if (i5 >= 0) {
                if (i5 == 13 && cCharAt == '\n') {
                    this.q = 10;
                } else {
                    this.q = -1;
                    this.p = this.w - 1;
                    this.r++;
                }
            }
            if (cCharAt <= 127) {
                if (cCharAt != '\n' && cCharAt != '\r') {
                    return cCharAt;
                }
                this.q = cCharAt;
            } else {
                if (cCharAt == 65279) {
                    return cCharAt;
                }
                if (!z || !y(cCharAt)) {
                    if (!ScriptRuntime.isJSLineTerminator(cCharAt)) {
                        return cCharAt;
                    }
                    this.q = cCharAt;
                }
            }
            return 10;
        }
    }

    public final int j() {
        char cCharAt;
        int i = this.n;
        if (i != 0) {
            this.x++;
            int[] iArr = this.m;
            int i2 = i - 1;
            this.n = i2;
            return iArr[i2];
        }
        do {
            String str = this.s;
            if (str != null) {
                int i3 = this.w;
                if (i3 == this.v) {
                    this.o = true;
                    return -1;
                }
                this.x++;
                this.w = i3 + 1;
                cCharAt = str.charAt(i3);
            } else {
                if (this.w == this.v && !f()) {
                    this.o = true;
                    return -1;
                }
                this.x++;
                char[] cArr = this.u;
                int i4 = this.w;
                this.w = i4 + 1;
                cCharAt = cArr[i4];
            }
            if (cCharAt <= 127) {
                if (cCharAt != '\n' && cCharAt != '\r') {
                    return cCharAt;
                }
                this.q = cCharAt;
            } else if (cCharAt == 65279) {
                return cCharAt;
            }
            return 10;
        } while (y(cCharAt));
        if (!ScriptRuntime.isJSLineTerminator(cCharAt)) {
            return cCharAt;
        }
        this.q = cCharAt;
        return 10;
    }

    public int k() {
        this.D = 0;
        this.B = false;
        this.C = false;
        if (!b()) {
            return -1;
        }
        X(60);
        return o();
    }

    public final String l() {
        int i;
        int i2 = this.w;
        int i3 = this.q;
        if (i3 >= 0) {
            i = i2 - 1;
            if (i3 == 10 && c(i2 - 2) == 13) {
                i = i2 - 2;
            }
        } else {
            int i4 = i2 - this.p;
            while (true) {
                int iC = c(this.p + i4);
                if (iC == -1 || ScriptRuntime.isJSLineTerminator(iC)) {
                    break;
                }
                i4++;
            }
            i = this.p + i4;
        }
        return W(this.p, i);
    }

    public final String m(int i, int[] iArr) {
        int i2 = (this.x + this.n) - i;
        int i3 = this.w;
        if (i2 > i3) {
            return null;
        }
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            int iC = c(i3 - 1);
            if (ScriptRuntime.isJSLineTerminator(iC)) {
                if (iC == 10 && c(i3 - 2) == 13) {
                    i2--;
                    i3--;
                }
                i4++;
                i5 = i3 - 1;
            }
            i2--;
            i3--;
        }
        int i6 = 0;
        while (true) {
            if (i3 <= 0) {
                i3 = 0;
                break;
            }
            if (ScriptRuntime.isJSLineTerminator(c(i3 - 1))) {
                break;
            }
            i3--;
            i6++;
        }
        iArr[0] = (this.r - i4) + (this.q >= 0 ? 1 : 0);
        iArr[1] = i6;
        return i4 == 0 ? l() : W(i3, i5);
    }

    public final int n() {
        return this.r;
    }

    public int o() {
        this.y = this.x;
        this.k = 0;
        while (true) {
            int iH = h();
            if (iH == -1) {
                this.z = this.x;
                this.k = 0;
                this.c = null;
                this.E.addError("msg.XML.bad.form");
                return -1;
            }
            if (this.C) {
                if (iH == 9 || iH == 10 || iH == 13 || iH == 32) {
                    a(iH);
                } else if (iH == 34 || iH == 39) {
                    a(iH);
                    if (!P(iH)) {
                        return -1;
                    }
                } else if (iH == 47) {
                    a(iH);
                    if (K() == 62) {
                        a(h());
                        this.C = false;
                        this.D--;
                    }
                } else {
                    if (iH == 123) {
                        X(iH);
                        this.c = t();
                        return 146;
                    }
                    if (iH == 61) {
                        a(iH);
                        this.B = true;
                    } else if (iH != 62) {
                        a(iH);
                        this.B = false;
                    } else {
                        a(iH);
                        this.C = false;
                        this.B = false;
                    }
                }
                if (!this.C && this.D == 0) {
                    this.c = t();
                    return 149;
                }
            } else if (iH == 60) {
                a(iH);
                int iK = K();
                if (iK == 33) {
                    a(h());
                    int iK2 = K();
                    if (iK2 == 45) {
                        a(h());
                        int iH2 = h();
                        if (iH2 != 45) {
                            this.k = 0;
                            this.c = null;
                            this.E.addError("msg.XML.bad.form");
                            return -1;
                        }
                        a(iH2);
                        if (!R()) {
                            return -1;
                        }
                    } else if (iK2 == 91) {
                        a(h());
                        if (h() != 67 || h() != 68 || h() != 65 || h() != 84 || h() != 65 || h() != 91) {
                            this.k = 0;
                            this.c = null;
                            this.E.addError("msg.XML.bad.form");
                            return -1;
                        }
                        a(67);
                        a(68);
                        a(65);
                        a(84);
                        a(65);
                        a(91);
                        if (!M()) {
                            return -1;
                        }
                    } else if (!N()) {
                        return -1;
                    }
                } else if (iK == 47) {
                    a(h());
                    int i = this.D;
                    if (i == 0) {
                        this.k = 0;
                        this.c = null;
                        this.E.addError("msg.XML.bad.form");
                        return -1;
                    }
                    this.C = true;
                    this.D = i - 1;
                } else if (iK != 63) {
                    this.C = true;
                    this.D++;
                } else {
                    a(h());
                    if (!O()) {
                        return -1;
                    }
                }
            } else {
                if (iH == 123) {
                    X(iH);
                    this.c = t();
                    return 146;
                }
                a(iH);
            }
        }
    }

    public final double p() {
        return this.d;
    }

    public final int q() {
        int i = this.w - this.p;
        return this.q >= 0 ? i - 1 : i;
    }

    public final char r() {
        return (char) this.i;
    }

    public final String s() {
        return this.c;
    }

    public final String t() {
        this.z = this.x;
        return new String(this.j, 0, this.k);
    }

    /* JADX WARN: Code duplicated, block: B:216:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:219:0x02a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:495:0x0287 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:496:0x02af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:497:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:498:0x02a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:501:0x028e A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:217:0x02a3 -> B:209:0x0287). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final int u() {
        /*
            Method dump skipped, instruction units count: 1502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.i.u():int");
    }

    public int v() {
        return this.z - this.y;
    }
}
