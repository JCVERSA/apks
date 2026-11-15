package defpackage;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.audiotagger.audio.asf.data.ContentDescription;
import java.util.Hashtable;

public class c40 extends i4 {
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
    public static final l1 Q;
    public static final Hashtable R;
    public static final Hashtable S;
    public static final eqc T;
    public static final l1 c;
    public static final l1 d;
    public static final l1 e;
    public static final l1 f;
    public static final l1 g;
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
    public final Hashtable b = i4.h(R);
    public final Hashtable a = i4.h(S);

    static {
        l1 l1VarE = new l1("2.5.4.6").E();
        c = l1VarE;
        l1 l1VarE2 = new l1("2.5.4.10").E();
        d = l1VarE2;
        l1 l1VarE3 = new l1("2.5.4.11").E();
        e = l1VarE3;
        l1 l1VarE4 = new l1("2.5.4.12").E();
        f = l1VarE4;
        l1 l1VarE5 = new l1("2.5.4.3").E();
        g = l1VarE5;
        h = new l1("2.5.4.5").E();
        l1 l1VarE6 = new l1("2.5.4.9").E();
        i = l1VarE6;
        l1 l1VarE7 = new l1("2.5.4.5").E();
        j = l1VarE7;
        l1 l1VarE8 = new l1("2.5.4.7").E();
        k = l1VarE8;
        l1 l1VarE9 = new l1("2.5.4.8").E();
        l = l1VarE9;
        l1 l1VarE10 = new l1("2.5.4.4").E();
        m = l1VarE10;
        l1 l1VarE11 = new l1("2.5.4.42").E();
        n = l1VarE11;
        l1 l1VarE12 = new l1("2.5.4.43").E();
        o = l1VarE12;
        l1 l1VarE13 = new l1("2.5.4.44").E();
        p = l1VarE13;
        l1 l1VarE14 = new l1("2.5.4.45").E();
        q = l1VarE14;
        l1 l1VarE15 = new l1("2.5.4.13").E();
        r = l1VarE15;
        l1 l1VarE16 = new l1("2.5.4.15").E();
        s = l1VarE16;
        l1 l1VarE17 = new l1("2.5.4.17").E();
        t = l1VarE17;
        l1 l1VarE18 = new l1("2.5.4.46").E();
        u = l1VarE18;
        l1 l1VarE19 = new l1("2.5.4.65").E();
        v = l1VarE19;
        l1 l1VarE20 = new l1("2.5.4.72").E();
        w = l1VarE20;
        l1 l1VarE21 = new l1("1.3.6.1.5.5.7.9.1").E();
        x = l1VarE21;
        l1 l1VarE22 = new l1("1.3.6.1.5.5.7.9.2").E();
        y = l1VarE22;
        l1 l1VarE23 = new l1("1.3.6.1.5.5.7.9.3").E();
        z = l1VarE23;
        l1 l1VarE24 = new l1("1.3.6.1.5.5.7.9.4").E();
        A = l1VarE24;
        l1 l1VarE25 = new l1("1.3.6.1.5.5.7.9.5").E();
        B = l1VarE25;
        l1 l1VarE26 = new l1("1.3.36.8.3.14").E();
        C = l1VarE26;
        l1 l1VarE27 = new l1("2.5.4.16").E();
        D = l1VarE27;
        E = new l1("2.5.4.54").E();
        l1 l1Var = iqc.g;
        F = l1Var;
        l1 l1Var2 = iqc.h;
        G = l1Var2;
        l1 l1Var3 = iqc.i;
        H = l1Var3;
        l1 l1Var4 = yu7.N2;
        I = l1Var4;
        l1 l1Var5 = yu7.O2;
        J = l1Var5;
        l1 l1Var6 = yu7.U2;
        K = l1Var6;
        L = l1Var4;
        l1 l1Var7 = new l1("0.9.2342.19200300.100.1.25");
        M = l1Var7;
        l1 l1Var8 = new l1("0.9.2342.19200300.100.1.1");
        N = l1Var8;
        l1 l1Var9 = new l1("1.3.6.1.4.1.311.60.2.1.3");
        O = l1Var9;
        l1 l1Var10 = new l1("1.3.6.1.4.1.311.60.2.1.2");
        P = l1Var10;
        l1 l1Var11 = new l1("1.3.6.1.4.1.311.60.2.1.1");
        Q = l1Var11;
        Hashtable hashtable = new Hashtable();
        R = hashtable;
        Hashtable hashtable2 = new Hashtable();
        S = hashtable2;
        hashtable.put(l1VarE, "C");
        hashtable.put(l1VarE2, "O");
        hashtable.put(l1VarE4, "T");
        hashtable.put(l1VarE3, "OU");
        hashtable.put(l1VarE5, "CN");
        hashtable.put(l1VarE8, "L");
        hashtable.put(l1VarE9, "ST");
        hashtable.put(l1VarE7, "SERIALNUMBER");
        hashtable.put(l1Var4, ExifInterface.LONGITUDE_EAST);
        hashtable.put(l1Var7, "DC");
        hashtable.put(l1Var8, "UID");
        hashtable.put(l1VarE6, "STREET");
        hashtable.put(l1VarE10, "SURNAME");
        hashtable.put(l1VarE11, "GIVENNAME");
        hashtable.put(l1VarE12, "INITIALS");
        hashtable.put(l1VarE13, "GENERATION");
        hashtable.put(l1VarE15, ContentDescription.KEY_DESCRIPTION);
        hashtable.put(l1VarE20, "ROLE");
        hashtable.put(l1Var6, "unstructuredAddress");
        hashtable.put(l1Var5, "unstructuredName");
        hashtable.put(l1VarE14, "UniqueIdentifier");
        hashtable.put(l1VarE18, "DN");
        hashtable.put(l1VarE19, "Pseudonym");
        hashtable.put(l1VarE27, "PostalAddress");
        hashtable.put(l1VarE26, "NameAtBirth");
        hashtable.put(l1VarE24, "CountryOfCitizenship");
        hashtable.put(l1VarE25, "CountryOfResidence");
        hashtable.put(l1VarE23, "Gender");
        hashtable.put(l1VarE22, "PlaceOfBirth");
        hashtable.put(l1VarE21, "DateOfBirth");
        hashtable.put(l1VarE17, "PostalCode");
        hashtable.put(l1VarE16, "BusinessCategory");
        hashtable.put(l1Var, "TelephoneNumber");
        hashtable.put(l1Var2, "Name");
        hashtable.put(l1Var3, "organizationIdentifier");
        hashtable.put(l1Var9, "jurisdictionCountry");
        hashtable.put(l1Var10, "jurisdictionState");
        hashtable.put(l1Var11, "jurisdictionLocality");
        hashtable2.put("c", l1VarE);
        hashtable2.put("o", l1VarE2);
        hashtable2.put("t", l1VarE4);
        hashtable2.put("ou", l1VarE3);
        hashtable2.put("cn", l1VarE5);
        hashtable2.put(CmcdData.STREAM_TYPE_LIVE, l1VarE8);
        hashtable2.put(CmcdConfiguration.KEY_STREAM_TYPE, l1VarE9);
        hashtable2.put("sn", l1VarE10);
        hashtable2.put("serialnumber", l1VarE7);
        hashtable2.put("street", l1VarE6);
        hashtable2.put("emailaddress", l1Var4);
        hashtable2.put("dc", l1Var7);
        hashtable2.put("e", l1Var4);
        hashtable2.put("uid", l1Var8);
        hashtable2.put("surname", l1VarE10);
        hashtable2.put("givenname", l1VarE11);
        hashtable2.put("initials", l1VarE12);
        hashtable2.put("generation", l1VarE13);
        hashtable2.put("description", l1VarE15);
        hashtable2.put("role", l1VarE20);
        hashtable2.put("unstructuredaddress", l1Var6);
        hashtable2.put("unstructuredname", l1Var5);
        hashtable2.put("uniqueidentifier", l1VarE14);
        hashtable2.put("dn", l1VarE18);
        hashtable2.put("pseudonym", l1VarE19);
        hashtable2.put("postaladdress", l1VarE27);
        hashtable2.put("nameatbirth", l1VarE26);
        hashtable2.put("countryofcitizenship", l1VarE24);
        hashtable2.put("countryofresidence", l1VarE25);
        hashtable2.put("gender", l1VarE23);
        hashtable2.put("placeofbirth", l1VarE22);
        hashtable2.put("dateofbirth", l1VarE21);
        hashtable2.put("postalcode", l1VarE17);
        hashtable2.put("businesscategory", l1VarE16);
        hashtable2.put("telephonenumber", l1Var);
        hashtable2.put("name", l1Var2);
        hashtable2.put("organizationidentifier", l1Var3);
        hashtable2.put("jurisdictionCountry", l1Var9);
        hashtable2.put("jurisdictionState", l1Var10);
        hashtable2.put("jurisdictionLocality", l1Var11);
        T = new c40();
    }

    @Override
    public wm8[] b(String str) {
        return zu4.p(str, this);
    }

    @Override
    public l1 d(String str) {
        return zu4.k(str, this.a);
    }

    @Override
    public String e(cqc cqcVar) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z2 = true;
        for (wm8 wm8Var : cqcVar.p()) {
            if (z2) {
                z2 = false;
            } else {
                stringBuffer.append(',');
            }
            zu4.d(stringBuffer, wm8Var, this.b);
        }
        return stringBuffer.toString();
    }

    @Override
    public x0 i(l1 l1Var, String str) {
        if (l1Var.s(I) || l1Var.s(M)) {
            return new tp1(str);
        }
        if (l1Var.s(x)) {
            return new c1(str);
        }
        return (l1Var.s(c) || l1Var.s(j) || l1Var.s(u) || l1Var.s(F) || l1Var.s(O)) ? new zp1(str) : super.i(l1Var, str);
    }
}
