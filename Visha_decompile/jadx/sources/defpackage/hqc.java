package defpackage;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.commons.io.IOUtils;

public class hqc extends j1 {
    public static final l1 A;
    public static final l1 B;
    public static final l1 C;
    public static final l1 D;
    public static final l1 E;
    public static final l1 F;
    public static final l1 G;
    public static final l1 H;
    public static final l1 I;
    public static final l1 J;
    public static final l1 K;
    public static final l1 L;
    public static final l1 M;
    public static final l1 N;
    public static final l1 O;
    public static final l1 P;
    public static boolean Q;
    public static final Hashtable R;
    public static final Hashtable S;
    public static final Hashtable T;
    public static final Hashtable U;
    public static final Hashtable V;
    public static final Hashtable W;
    public static final Boolean X;
    public static final Boolean Y;
    public static final l1 h;
    public static final l1 i;
    public static final l1 j;
    public static final l1 k;
    public static final l1 l;
    public static final l1 m;
    public static final l1 n;
    public static final l1 o;
    public static final l1 p;
    public static final l1 q;
    public static final l1 r;
    public static final l1 s;
    public static final l1 t;
    public static final l1 u;
    public static final l1 v;
    public static final l1 w;
    public static final l1 x;
    public static final l1 y;
    public static final l1 z;
    public Vector b = new Vector();
    public Vector c = new Vector();
    public Vector d = new Vector();
    public s1 e;
    public boolean f;
    public int g;

    static {
        l1 l1Var = new l1("2.5.4.6");
        h = l1Var;
        l1 l1Var2 = new l1("2.5.4.10");
        i = l1Var2;
        l1 l1Var3 = new l1("2.5.4.11");
        j = l1Var3;
        l1 l1Var4 = new l1("2.5.4.12");
        k = l1Var4;
        l1 l1Var5 = new l1("2.5.4.3");
        l = l1Var5;
        l1 l1Var6 = new l1("2.5.4.5");
        m = l1Var6;
        l1 l1Var7 = new l1("2.5.4.9");
        n = l1Var7;
        o = l1Var6;
        l1 l1Var8 = new l1("2.5.4.7");
        p = l1Var8;
        l1 l1Var9 = new l1("2.5.4.8");
        q = l1Var9;
        l1 l1Var10 = new l1("2.5.4.4");
        r = l1Var10;
        l1 l1Var11 = new l1("2.5.4.42");
        s = l1Var11;
        l1 l1Var12 = new l1("2.5.4.43");
        t = l1Var12;
        l1 l1Var13 = new l1("2.5.4.44");
        u = l1Var13;
        l1 l1Var14 = new l1("2.5.4.45");
        v = l1Var14;
        l1 l1Var15 = new l1("2.5.4.15");
        w = l1Var15;
        l1 l1Var16 = new l1("2.5.4.17");
        x = l1Var16;
        l1 l1Var17 = new l1("2.5.4.46");
        y = l1Var17;
        l1 l1Var18 = new l1("2.5.4.65");
        z = l1Var18;
        l1 l1Var19 = new l1("1.3.6.1.5.5.7.9.1");
        A = l1Var19;
        l1 l1Var20 = new l1("1.3.6.1.5.5.7.9.2");
        B = l1Var20;
        l1 l1Var21 = new l1("1.3.6.1.5.5.7.9.3");
        C = l1Var21;
        l1 l1Var22 = new l1("1.3.6.1.5.5.7.9.4");
        D = l1Var22;
        l1 l1Var23 = new l1("1.3.6.1.5.5.7.9.5");
        E = l1Var23;
        l1 l1Var24 = new l1("1.3.36.8.3.14");
        F = l1Var24;
        l1 l1Var25 = new l1("2.5.4.16");
        G = l1Var25;
        H = new l1("2.5.4.54");
        l1 l1Var26 = iqc.g;
        I = l1Var26;
        l1 l1Var27 = iqc.h;
        J = l1Var27;
        l1 l1Var28 = yu7.N2;
        K = l1Var28;
        l1 l1Var29 = yu7.O2;
        L = l1Var29;
        l1 l1Var30 = yu7.U2;
        M = l1Var30;
        N = l1Var28;
        l1 l1Var31 = new l1("0.9.2342.19200300.100.1.25");
        O = l1Var31;
        l1 l1Var32 = new l1("0.9.2342.19200300.100.1.1");
        P = l1Var32;
        Q = false;
        Hashtable hashtable = new Hashtable();
        R = hashtable;
        Hashtable hashtable2 = new Hashtable();
        S = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        T = hashtable3;
        Hashtable hashtable4 = new Hashtable();
        U = hashtable4;
        V = hashtable;
        W = hashtable4;
        X = new Boolean(true);
        Y = new Boolean(false);
        hashtable.put(l1Var, "C");
        hashtable.put(l1Var2, "O");
        hashtable.put(l1Var4, "T");
        hashtable.put(l1Var3, "OU");
        hashtable.put(l1Var5, "CN");
        hashtable.put(l1Var8, "L");
        hashtable.put(l1Var9, "ST");
        hashtable.put(l1Var6, "SERIALNUMBER");
        hashtable.put(l1Var28, ExifInterface.LONGITUDE_EAST);
        hashtable.put(l1Var31, "DC");
        hashtable.put(l1Var32, "UID");
        hashtable.put(l1Var7, "STREET");
        hashtable.put(l1Var10, "SURNAME");
        hashtable.put(l1Var11, "GIVENNAME");
        hashtable.put(l1Var12, "INITIALS");
        hashtable.put(l1Var13, "GENERATION");
        hashtable.put(l1Var30, "unstructuredAddress");
        hashtable.put(l1Var29, "unstructuredName");
        hashtable.put(l1Var14, "UniqueIdentifier");
        hashtable.put(l1Var17, "DN");
        hashtable.put(l1Var18, "Pseudonym");
        hashtable.put(l1Var25, "PostalAddress");
        hashtable.put(l1Var24, "NameAtBirth");
        hashtable.put(l1Var22, "CountryOfCitizenship");
        hashtable.put(l1Var23, "CountryOfResidence");
        hashtable.put(l1Var21, "Gender");
        hashtable.put(l1Var20, "PlaceOfBirth");
        hashtable.put(l1Var19, "DateOfBirth");
        hashtable.put(l1Var16, "PostalCode");
        hashtable.put(l1Var15, "BusinessCategory");
        hashtable.put(l1Var26, "TelephoneNumber");
        hashtable.put(l1Var27, "Name");
        hashtable2.put(l1Var, "C");
        hashtable2.put(l1Var2, "O");
        hashtable2.put(l1Var3, "OU");
        hashtable2.put(l1Var5, "CN");
        hashtable2.put(l1Var8, "L");
        hashtable2.put(l1Var9, "ST");
        hashtable2.put(l1Var7, "STREET");
        hashtable2.put(l1Var31, "DC");
        hashtable2.put(l1Var32, "UID");
        hashtable3.put(l1Var, "C");
        hashtable3.put(l1Var2, "O");
        hashtable3.put(l1Var3, "OU");
        hashtable3.put(l1Var5, "CN");
        hashtable3.put(l1Var8, "L");
        hashtable3.put(l1Var9, "ST");
        hashtable3.put(l1Var7, "STREET");
        hashtable4.put("c", l1Var);
        hashtable4.put("o", l1Var2);
        hashtable4.put("t", l1Var4);
        hashtable4.put("ou", l1Var3);
        hashtable4.put("cn", l1Var5);
        hashtable4.put(CmcdData.STREAM_TYPE_LIVE, l1Var8);
        hashtable4.put(CmcdConfiguration.KEY_STREAM_TYPE, l1Var9);
        hashtable4.put("sn", l1Var6);
        hashtable4.put("serialnumber", l1Var6);
        hashtable4.put("street", l1Var7);
        hashtable4.put("emailaddress", l1Var28);
        hashtable4.put("dc", l1Var31);
        hashtable4.put("e", l1Var28);
        hashtable4.put("uid", l1Var32);
        hashtable4.put("surname", l1Var10);
        hashtable4.put("givenname", l1Var11);
        hashtable4.put("initials", l1Var12);
        hashtable4.put("generation", l1Var13);
        hashtable4.put("unstructuredaddress", l1Var30);
        hashtable4.put("unstructuredname", l1Var29);
        hashtable4.put("uniqueidentifier", l1Var14);
        hashtable4.put("dn", l1Var17);
        hashtable4.put("pseudonym", l1Var18);
        hashtable4.put("postaladdress", l1Var25);
        hashtable4.put("nameofbirth", l1Var24);
        hashtable4.put("countryofcitizenship", l1Var22);
        hashtable4.put("countryofresidence", l1Var23);
        hashtable4.put("gender", l1Var21);
        hashtable4.put("placeofbirth", l1Var20);
        hashtable4.put("dateofbirth", l1Var19);
        hashtable4.put("postalcode", l1Var16);
        hashtable4.put("businesscategory", l1Var15);
        hashtable4.put("telephonenumber", l1Var26);
        hashtable4.put("name", l1Var27);
    }

    public hqc(s1 s1Var) {
        Vector vector;
        this.e = s1Var;
        Enumeration enumerationB = s1Var.B();
        while (enumerationB.hasMoreElements()) {
            t1 t1VarY = t1.y(((x0) enumerationB.nextElement()).j());
            int i2 = 0;
            while (i2 < t1VarY.size()) {
                s1 s1VarZ = s1.z(t1VarY.z(i2).j());
                if (s1VarZ.size() != 2) {
                    throw new IllegalArgumentException("badly sized pair");
                }
                this.b.addElement(l1.D(s1VarZ.A(0)));
                x0 x0VarA = s1VarZ.A(1);
                if (!(x0VarA instanceof v1) || (x0VarA instanceof c2)) {
                    try {
                        this.c.addElement("#" + n(jp4.d(x0VarA.j().l("DER"))));
                    } catch (IOException unused) {
                        throw new IllegalArgumentException("cannot encode value");
                    }
                } else {
                    String string = ((v1) x0VarA).getString();
                    if (string.length() <= 0 || string.charAt(0) != '#') {
                        vector = this.c;
                    } else {
                        vector = this.c;
                        string = "\\" + string;
                    }
                    vector.addElement(string);
                }
                this.d.addElement(i2 != 0 ? X : Y);
                i2++;
            }
        }
    }

    public static hqc r(Object obj) {
        if (obj instanceof hqc) {
            return (hqc) obj;
        }
        if (obj instanceof cqc) {
            return new hqc(s1.z(((cqc) obj).j()));
        }
        if (obj != null) {
            return new hqc(s1.z(obj));
        }
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        int i2;
        int i3;
        int i4;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hqc) && !(obj instanceof s1)) {
            return false;
        }
        if (j().s(((x0) obj).j())) {
            return true;
        }
        try {
            hqc hqcVarR = r(obj);
            int size = this.b.size();
            if (size != hqcVarR.b.size()) {
                return false;
            }
            boolean[] zArr = new boolean[size];
            if (this.b.elementAt(0).equals(hqcVarR.b.elementAt(0))) {
                i4 = 1;
                i3 = size;
                i2 = 0;
            } else {
                i2 = size - 1;
                i3 = -1;
                i4 = -1;
            }
            while (i2 != i3) {
                l1 l1Var = (l1) this.b.elementAt(i2);
                String str = (String) this.c.elementAt(i2);
                for (int i5 = 0; i5 < size; i5++) {
                    if (!zArr[i5] && l1Var.s((l1) hqcVarR.b.elementAt(i5)) && q(str, (String) hqcVarR.c.elementAt(i5))) {
                        zArr[i5] = true;
                        i2 += i4;
                    }
                }
                return false;
            }
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    @Override
    public int hashCode() {
        if (this.f) {
            return this.g;
        }
        this.f = true;
        for (int i2 = 0; i2 != this.b.size(); i2++) {
            String strS = s(o((String) this.c.elementAt(i2)));
            int iHashCode = this.g ^ this.b.elementAt(i2).hashCode();
            this.g = iHashCode;
            this.g = strS.hashCode() ^ iHashCode;
        }
        return this.g;
    }

    @Override
    public p1 j() {
        if (this.e == null) {
            y0 y0Var = new y0();
            y0 y0Var2 = new y0();
            if (this.b.size() != 0) {
                new y0(2).a((l1) this.b.elementAt(0));
                throw null;
            }
            y0Var.a(new bq1(y0Var2));
            this.e = new aq1(y0Var);
        }
        return this.e;
    }

    public final void m(StringBuffer stringBuffer, Hashtable hashtable, l1 l1Var, String str) {
        String strB = (String) hashtable.get(l1Var);
        if (strB == null) {
            strB = l1Var.B();
        }
        stringBuffer.append(strB);
        stringBuffer.append('=');
        int length = stringBuffer.length();
        stringBuffer.append(str);
        int length2 = stringBuffer.length();
        if (str.length() >= 2 && str.charAt(0) == '\\' && str.charAt(1) == '#') {
            length += 2;
        }
        while (length < length2 && stringBuffer.charAt(length) == ' ') {
            stringBuffer.insert(length, "\\");
            length += 2;
            length2++;
        }
        while (true) {
            length2--;
            if (length2 <= length || stringBuffer.charAt(length2) != ' ') {
                break;
            } else {
                stringBuffer.insert(length2, IOUtils.DIR_SEPARATOR_WINDOWS);
            }
        }
        while (length <= length2) {
            char cCharAt = stringBuffer.charAt(length);
            if (cCharAt != '\"' && cCharAt != '\\' && cCharAt != '+' && cCharAt != ',') {
                switch (cCharAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        length++;
                        break;
                }
            }
            stringBuffer.insert(length, "\\");
            length += 2;
            length2++;
        }
    }

    public final String n(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i2 = 0; i2 != length; i2++) {
            cArr[i2] = (char) (bArr[i2] & 255);
        }
        return new String(cArr);
    }

    public final String o(String str) {
        String strF = u0a.f(str.trim());
        if (strF.length() <= 0 || strF.charAt(0) != '#') {
            return strF;
        }
        y93 y93VarP = p(strF);
        return y93VarP instanceof v1 ? u0a.f(((v1) y93VarP).getString().trim()) : strF;
    }

    public final p1 p(String str) {
        try {
            return p1.t(jp4.c(str, 1, str.length() - 1));
        } catch (IOException e) {
            throw new IllegalStateException("unknown encoding in name: " + e);
        }
    }

    public final boolean q(String str, String str2) {
        String strO = o(str);
        String strO2 = o(str2);
        return strO.equals(strO2) || s(strO).equals(s(strO2));
    }

    public final String s(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char cCharAt = str.charAt(0);
            stringBuffer.append(cCharAt);
            int i2 = 1;
            while (i2 < str.length()) {
                char cCharAt2 = str.charAt(i2);
                if (cCharAt != ' ' || cCharAt2 != ' ') {
                    stringBuffer.append(cCharAt2);
                }
                i2++;
                cCharAt = cCharAt2;
            }
        }
        return stringBuffer.toString();
    }

    public String t(boolean z2, Hashtable hashtable) {
        StringBuffer stringBuffer = new StringBuffer();
        Vector vector = new Vector();
        StringBuffer stringBuffer2 = null;
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            if (((Boolean) this.d.elementAt(i2)).booleanValue()) {
                stringBuffer2.append('+');
                m(stringBuffer2, hashtable, (l1) this.b.elementAt(i2), (String) this.c.elementAt(i2));
            } else {
                stringBuffer2 = new StringBuffer();
                m(stringBuffer2, hashtable, (l1) this.b.elementAt(i2), (String) this.c.elementAt(i2));
                vector.addElement(stringBuffer2);
            }
        }
        boolean z3 = true;
        if (z2) {
            for (int size = vector.size() - 1; size >= 0; size--) {
                if (z3) {
                    z3 = false;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(size).toString());
            }
        } else {
            for (int i3 = 0; i3 < vector.size(); i3++) {
                if (z3) {
                    z3 = false;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(i3).toString());
            }
        }
        return stringBuffer.toString();
    }

    public String toString() {
        return t(Q, R);
    }
}
