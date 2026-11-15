package com.alibaba.fastjson;

import java.io.Closeable;

public abstract class JSONValidator implements Cloneable, Closeable {

    protected boolean f17439a;

    protected char f17441c;

    protected Type f17442d;

    private Boolean f17443e;

    protected int f17440b = -1;

    protected int f17444f = 0;

    protected boolean f17445g = false;

    public enum Type {
        Object,
        Array,
        Value
    }

    static class a extends JSONValidator {

        private final String f17446h;

        public a(String str) {
            this.f17446h = str;
            o();
            p();
        }

        @Override
        protected final void l() {
            char cCharAt;
            int i10 = this.f17440b;
            do {
                i10++;
                if (i10 >= this.f17446h.length() || (cCharAt = this.f17446h.charAt(i10)) == '\\') {
                    o();
                    while (true) {
                        char c10 = this.f17441c;
                        if (c10 == '\\') {
                            o();
                            if (this.f17441c == 'u') {
                                o();
                                o();
                                o();
                                o();
                                o();
                            } else {
                                o();
                            }
                        } else if (c10 == '\"') {
                            o();
                            return;
                        } else if (this.f17439a) {
                            return;
                        } else {
                            o();
                        }
                    }
                }
            } while (cCharAt != '\"');
            int i11 = i10 + 1;
            this.f17441c = this.f17446h.charAt(i11);
            this.f17440b = i11;
        }

        @Override
        void o() {
            int i10 = this.f17440b + 1;
            this.f17440b = i10;
            if (i10 < this.f17446h.length()) {
                this.f17441c = this.f17446h.charAt(this.f17440b);
            } else {
                this.f17441c = (char) 0;
                this.f17439a = true;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:127:0x017d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:130:0x0183  */
    /* JADX WARN: Code duplicated, block: B:132:0x018a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:141:0x019c  */
    /* JADX WARN: Code duplicated, block: B:145:0x01a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:146:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:149:0x01b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x01b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:179:0x017f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x01bf A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private boolean k() {
        char c10;
        char c11;
        char c12;
        char c13;
        char c14;
        char c15;
        char c16;
        char c17;
        char c18;
        char c19 = this.f17441c;
        if (c19 == '\"') {
            o();
            while (!this.f17439a) {
                char c20 = this.f17441c;
                if (c20 == '\\') {
                    o();
                    if (this.f17441c == 'u') {
                        o();
                        o();
                        o();
                        o();
                        o();
                    } else {
                        o();
                    }
                } else {
                    if (c20 == '\"') {
                        o();
                        this.f17442d = Type.Value;
                        return true;
                    }
                    o();
                }
            }
            return false;
        }
        if (c19 != '+' && c19 != '-') {
            if (c19 == '[') {
                o();
                p();
                if (this.f17441c == ']') {
                    o();
                    this.f17442d = Type.Array;
                    return true;
                }
                while (k()) {
                    p();
                    char c21 = this.f17441c;
                    if (c21 != ',') {
                        if (c21 != ']') {
                            return false;
                        }
                        o();
                        this.f17442d = Type.Array;
                        return true;
                    }
                    o();
                    p();
                }
                return false;
            }
            if (c19 == 'f') {
                o();
                if (this.f17441c != 'a') {
                    return false;
                }
                o();
                if (this.f17441c != 'l') {
                    return false;
                }
                o();
                if (this.f17441c != 's') {
                    return false;
                }
                o();
                if (this.f17441c != 'e') {
                    return false;
                }
                o();
                if (!n(this.f17441c) && (c16 = this.f17441c) != ',' && c16 != ']' && c16 != '}' && c16 != 0) {
                    return false;
                }
                this.f17442d = Type.Value;
                return true;
            }
            if (c19 == 'n') {
                o();
                if (this.f17441c != 'u') {
                    return false;
                }
                o();
                if (this.f17441c != 'l') {
                    return false;
                }
                o();
                if (this.f17441c != 'l') {
                    return false;
                }
                o();
                if (!n(this.f17441c) && (c17 = this.f17441c) != ',' && c17 != ']' && c17 != '}' && c17 != 0) {
                    return false;
                }
                this.f17442d = Type.Value;
                return true;
            }
            if (c19 == 't') {
                o();
                if (this.f17441c != 'r') {
                    return false;
                }
                o();
                if (this.f17441c != 'u') {
                    return false;
                }
                o();
                if (this.f17441c != 'e') {
                    return false;
                }
                o();
                if (!n(this.f17441c) && (c18 = this.f17441c) != ',' && c18 != ']' && c18 != '}' && c18 != 0) {
                    return false;
                }
                this.f17442d = Type.Value;
                return true;
            }
            if (c19 == '{') {
                o();
                while (n(this.f17441c)) {
                    o();
                }
                if (this.f17441c == '}') {
                    o();
                    this.f17442d = Type.Object;
                    return true;
                }
                while (this.f17441c == '\"') {
                    l();
                    p();
                    if (this.f17441c != ':') {
                        break;
                    }
                    o();
                    p();
                    if (!k()) {
                        return false;
                    }
                    p();
                    char c22 = this.f17441c;
                    if (c22 != ',') {
                        if (c22 != '}') {
                            break;
                        }
                        o();
                        this.f17442d = Type.Object;
                        return true;
                    }
                    o();
                    p();
                }
                return false;
            }
            switch (c19) {
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                case '2':
                case AD_REWARD_USER_VALUE:
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                case AD_VISIBILITY_VALUE:
                case '9':
                    break;
                default:
                    return false;
            }
        }
        if (c19 == '-' || c19 == '+') {
            o();
            p();
            char c23 = this.f17441c;
            if (c23 >= '0' && c23 <= '9') {
                do {
                    o();
                    c10 = this.f17441c;
                    if (c10 >= '0') {
                    }
                    if (c10 == '.') {
                        o();
                        c15 = this.f17441c;
                        if (c15 >= '0' || c15 > '9') {
                            return false;
                        }
                        while (true) {
                            char c24 = this.f17441c;
                            if (c24 >= '0' && c24 <= '9') {
                                o();
                            }
                        }
                    }
                    c11 = this.f17441c;
                    if (c11 != 'e' || c11 == 'E') {
                        o();
                        c12 = this.f17441c;
                        if (c12 != '-' || c12 == '+') {
                            o();
                        }
                        c13 = this.f17441c;
                        if (c13 >= '0' && c13 <= '9') {
                            o();
                            while (true) {
                                c14 = this.f17441c;
                                if (c14 < '0' && c14 <= '9') {
                                    o();
                                }
                            }
                        }
                    }
                    this.f17442d = Type.Value;
                    return true;
                } while (c10 <= '9');
                if (c10 == '.') {
                    o();
                    c15 = this.f17441c;
                    if (c15 >= '0') {
                    }
                    return false;
                }
                c11 = this.f17441c;
                if (c11 != 'e') {
                }
                o();
                c12 = this.f17441c;
                if (c12 != '-') {
                    o();
                } else {
                    o();
                }
                c13 = this.f17441c;
                if (c13 >= '0') {
                    o();
                    while (true) {
                        c14 = this.f17441c;
                        if (c14 < '0') {
                        }
                        this.f17442d = Type.Value;
                        return true;
                        o();
                    }
                }
            }
        } else {
            do {
                o();
                c10 = this.f17441c;
                if (c10 >= '0') {
                }
                if (c10 == '.') {
                    o();
                    c15 = this.f17441c;
                    if (c15 >= '0') {
                    }
                    return false;
                }
                c11 = this.f17441c;
                if (c11 != 'e') {
                }
                o();
                c12 = this.f17441c;
                if (c12 != '-') {
                    o();
                } else {
                    o();
                }
                c13 = this.f17441c;
                if (c13 >= '0') {
                    o();
                    while (true) {
                        c14 = this.f17441c;
                        if (c14 < '0') {
                        }
                        this.f17442d = Type.Value;
                        return true;
                        o();
                    }
                }
            } while (c10 <= '9');
            if (c10 == '.') {
                o();
                c15 = this.f17441c;
                if (c15 >= '0') {
                }
                return false;
            }
            c11 = this.f17441c;
            if (c11 != 'e') {
            }
            o();
            c12 = this.f17441c;
            if (c12 != '-') {
                o();
            } else {
                o();
            }
            c13 = this.f17441c;
            if (c13 >= '0') {
                o();
                while (true) {
                    c14 = this.f17441c;
                    if (c14 < '0') {
                    }
                    this.f17442d = Type.Value;
                    return true;
                    o();
                }
            }
        }
        return false;
    }

    public static JSONValidator m(String str) {
        return new a(str);
    }

    static final boolean n(char c10) {
        return c10 == ' ' || c10 == '\t' || c10 == '\r' || c10 == '\n' || c10 == '\f' || c10 == '\b';
    }

    protected void l() {
        o();
        while (true) {
            char c10 = this.f17441c;
            if (c10 == '\\') {
                o();
                if (this.f17441c == 'u') {
                    o();
                    o();
                    o();
                    o();
                    o();
                } else {
                    o();
                }
            } else {
                if (c10 == '\"') {
                    o();
                    return;
                }
                o();
            }
        }
    }

    abstract void o();

    void p() {
        while (n(this.f17441c)) {
            o();
        }
    }

    public boolean q() {
        Boolean bool = this.f17443e;
        if (bool != null) {
            return bool.booleanValue();
        }
        while (k()) {
            p();
            this.f17444f++;
            if (this.f17439a) {
                this.f17443e = Boolean.TRUE;
                return true;
            }
            if (!this.f17445g) {
                this.f17443e = Boolean.FALSE;
                return false;
            }
            p();
            if (this.f17439a) {
                this.f17443e = Boolean.TRUE;
                return true;
            }
        }
        this.f17443e = Boolean.FALSE;
        return false;
    }

    @Override
    public void close() {
    }
}
