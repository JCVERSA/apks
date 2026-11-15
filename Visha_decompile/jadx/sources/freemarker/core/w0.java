package freemarker.core;

import defpackage.dfa;
import defpackage.ffa;
import defpackage.n0a;
import defpackage.zv4;
import freemarker.template.utility.DateUtil;
import java.util.Date;
import java.util.TimeZone;

public abstract class w0 extends dfa {
    public final zv4 a;
    public final int b;
    public final boolean c;
    public final TimeZone d;
    public final Boolean e;
    public final Boolean f;
    public final int g;

    /* JADX WARN: Code duplicated, block: B:24:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x007e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0084 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0088  */
    /* JADX WARN: Code duplicated, block: B:31:0x008b  */
    /* JADX WARN: Code duplicated, block: B:35:0x0099  */
    /* JADX WARN: Code duplicated, block: B:37:0x009f  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:84:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x00af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0117 A[SYNTHETIC] */
    public w0(String str, int i, int i2, boolean z, TimeZone timeZone, zv4 zv4Var) throws UnknownDateTypeFormattingUnsupportedException, java.text.ParseException {
        this.a = zv4Var;
        if (i2 == 0) {
            throw new UnknownDateTypeFormattingUnsupportedException();
        }
        this.b = i2;
        this.c = z;
        int length = str.length();
        Boolean bool = Boolean.FALSE;
        int i3 = 7;
        Boolean bool2 = null;
        boolean z2 = false;
        int i4 = i;
        while (i4 < length) {
            int i5 = i4 + 1;
            char cCharAt = str.charAt(i4);
            if (cCharAt == '_' || cCharAt == ' ') {
                z2 = true;
                i4 = i5;
            } else {
                if (!z2) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Missing space or \"_\" before \"");
                    stringBuffer.append(cCharAt);
                    stringBuffer.append("\"");
                    throw new java.text.ParseException(stringBuffer.toString(), i5);
                }
                if (cCharAt != 'f') {
                    if (cCharAt == 'h' || cCharAt == 's') {
                        if (i3 == 7) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("Character \"");
                            stringBuffer2.append(cCharAt);
                            stringBuffer2.append("\" is unexpected as accuracy was already specified earlier.");
                            throw new java.text.ParseException(stringBuffer2.toString(), i5);
                        }
                        if (cCharAt != 'h') {
                            if (cCharAt != 'm') {
                                if (cCharAt == 's') {
                                    i3 = 6;
                                }
                            } else if (i5 >= length && str.charAt(i5) == 's') {
                                i5 = i4 + 2;
                                i3 = 8;
                            } else {
                                if (j()) {
                                    throw new java.text.ParseException("Less than seconds accuracy isn't allowed by the XML Schema format", i5);
                                }
                                i3 = 5;
                            }
                        } else {
                            if (!j()) {
                                throw new java.text.ParseException("Less than seconds accuracy isn't allowed by the XML Schema format", i5);
                            }
                            i3 = 4;
                        }
                    } else if (cCharAt == 'u') {
                        e(bool, i5);
                        bool = null;
                    } else if (cCharAt != 'm') {
                        if (cCharAt != 'n') {
                            StringBuffer stringBuffer3 = new StringBuffer();
                            stringBuffer3.append("Unexpected character, ");
                            stringBuffer3.append(n0a.D(String.valueOf(cCharAt)));
                            stringBuffer3.append(". Expected the beginning of one of: h, m, s, ms, nz, fz, u");
                            throw new java.text.ParseException(stringBuffer3.toString(), i5);
                        }
                        if (bool2 == null) {
                            StringBuffer stringBuffer4 = new StringBuffer();
                            stringBuffer4.append("Character \"");
                            stringBuffer4.append(cCharAt);
                            stringBuffer4.append("\" is unexpected as zone offset visibility was already ");
                            stringBuffer4.append("specified earlier.");
                            throw new java.text.ParseException(stringBuffer4.toString(), i5);
                        }
                        if (cCharAt == 'f') {
                            if (cCharAt == 'n') {
                                if (i5 < length || str.charAt(i5) != 'z') {
                                    throw new java.text.ParseException("\"n\" must be followed by \"z\"", i5);
                                }
                                i5 = i4 + 2;
                                bool2 = Boolean.FALSE;
                            }
                        } else {
                            if (i5 < length || str.charAt(i5) != 'z') {
                                throw new java.text.ParseException("\"f\" must be followed by \"z\"", i5);
                            }
                            i5 = i4 + 2;
                            bool2 = Boolean.TRUE;
                        }
                    } else {
                        if (i3 == 7) {
                            StringBuffer stringBuffer5 = new StringBuffer();
                            stringBuffer5.append("Character \"");
                            stringBuffer5.append(cCharAt);
                            stringBuffer5.append("\" is unexpected as accuracy was already specified earlier.");
                            throw new java.text.ParseException(stringBuffer5.toString(), i5);
                        }
                        if (cCharAt != 'h') {
                            if (cCharAt != 'm') {
                                if (cCharAt == 's') {
                                    i3 = 6;
                                }
                            } else if (i5 >= length) {
                                if (j()) {
                                    throw new java.text.ParseException("Less than seconds accuracy isn't allowed by the XML Schema format", i5);
                                }
                                i3 = 5;
                            } else {
                                if (j()) {
                                    throw new java.text.ParseException("Less than seconds accuracy isn't allowed by the XML Schema format", i5);
                                }
                                i3 = 5;
                            }
                        } else {
                            if (!j()) {
                                throw new java.text.ParseException("Less than seconds accuracy isn't allowed by the XML Schema format", i5);
                            }
                            i3 = 4;
                        }
                    }
                } else if (i5 < length && str.charAt(i5) == 'u') {
                    e(bool, i5);
                    i5 = i4 + 2;
                    bool = Boolean.TRUE;
                } else {
                    if (bool2 == null) {
                        StringBuffer stringBuffer6 = new StringBuffer();
                        stringBuffer6.append("Character \"");
                        stringBuffer6.append(cCharAt);
                        stringBuffer6.append("\" is unexpected as zone offset visibility was already ");
                        stringBuffer6.append("specified earlier.");
                        throw new java.text.ParseException(stringBuffer6.toString(), i5);
                    }
                    if (cCharAt == 'f') {
                        if (i5 < length) {
                        }
                        throw new java.text.ParseException("\"f\" must be followed by \"z\"", i5);
                    }
                    if (cCharAt == 'n') {
                        if (i5 < length) {
                        }
                        throw new java.text.ParseException("\"n\" must be followed by \"z\"", i5);
                    }
                }
                i4 = i5;
                z2 = false;
            }
        }
        this.g = i3;
        this.f = bool2;
        this.e = bool;
        this.d = timeZone;
    }

    @Override
    public final String a(ffa ffaVar) {
        boolean z;
        Date dateF = ffaVar.f();
        int i = this.b;
        boolean zBooleanValue = false;
        boolean z2 = i != 1;
        boolean z3 = i != 2;
        Boolean bool = this.f;
        if (bool == null) {
            if (!this.c) {
                z = true;
            }
            int i2 = this.g;
            Boolean bool2 = this.e;
            return f(dateF, z2, z3, z, i2, (bool2 == null ? !bool2.booleanValue() : this.c) ? this.d : DateUtil.a, this.a.d());
        }
        zBooleanValue = bool.booleanValue();
        z = zBooleanValue;
        int i3 = this.g;
        Boolean bool3 = this.e;
        return f(dateF, z2, z3, z, i3, (bool3 == null ? !bool3.booleanValue() : this.c) ? this.d : DateUtil.a, this.a.d());
    }

    @Override
    public final String b() {
        int i = this.b;
        if (i == 1) {
            return i();
        }
        if (i != 2) {
            return i != 3 ? "<error: wrong format dateType>" : h();
        }
        return g();
    }

    @Override
    public final boolean c() {
        return false;
    }

    @Override
    public final Date d(String str) {
        DateUtil.a aVarC = this.a.c();
        TimeZone timeZone = this.e != Boolean.FALSE ? DateUtil.a : this.d;
        int i = this.b;
        if (i == 2) {
            return k(str, timeZone, aVarC);
        }
        if (i == 1) {
            return m(str, timeZone, aVarC);
        }
        if (i == 3) {
            return l(str, timeZone, aVarC);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unexpected date type: ");
        stringBuffer.append(this.b);
        throw new BugException(stringBuffer.toString());
    }

    public final void e(Boolean bool, int i) throws java.text.ParseException {
        if (bool != Boolean.FALSE) {
            throw new java.text.ParseException("The UTC usage option was already set earlier.", i);
        }
    }

    public abstract String f(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, DateUtil.b bVar);

    public abstract String g();

    public abstract String h();

    public abstract String i();

    public abstract boolean j();

    public abstract Date k(String str, TimeZone timeZone, DateUtil.a aVar);

    public abstract Date l(String str, TimeZone timeZone, DateUtil.a aVar);

    public abstract Date m(String str, TimeZone timeZone, DateUtil.a aVar);
}
