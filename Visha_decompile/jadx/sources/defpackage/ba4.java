package defpackage;

import java.math.BigInteger;
import java.util.Hashtable;

public abstract class ba4 {
    public static rqc a = new a();
    public static rqc b = new b();
    public static final Hashtable c = new Hashtable();
    public static final Hashtable d = new Hashtable();
    public static final Hashtable e = new Hashtable();

    public static class a extends rqc {
        @Override
        public t43 a() {
            return ba4.e(new t43.f(ba4.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"), ba4.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC"), ba4.g("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93"), ba4.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"), BigInteger.valueOf(1L), true));
        }

        @Override
        public qqc b() {
            t43 t43VarC = c();
            return new qqc(t43VarC, ba4.d(t43VarC, "0432C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0"), t43VarC.u(), t43VarC.o(), null);
        }
    }

    public static class b extends rqc {
        @Override
        public t43 a() {
            return ba4.e(new t43.f(ba4.g("BDB6F4FE3E8B1D9E0DA8C0D46F4C318CEFE4AFE3B6B8551F"), ba4.g("BB8E5E8FBC115E139FE6A814FE48AAA6F0ADA1AA5DF91985"), ba4.g("1854BEBDC31B21B7AEFC80AB0ECD10D5B1B3308E6DBF11C1"), ba4.g("BDB6F4FE3E8B1D9E0DA8C0D40FC962195DFAE76F56564677"), BigInteger.valueOf(1L), true));
        }

        @Override
        public qqc b() {
            t43 t43VarC = c();
            return new qqc(t43VarC, ba4.d(t43VarC, "044AD5F7048DE709AD51236DE65E4D4B482C836DC6E410664002BB3A02D4AAADACAE24817A4CA3A1B014B5270432DB27D2"), t43VarC.u(), t43VarC.o(), null);
        }
    }

    static {
        f("wapip192v1", ca4.J, b);
        f("wapi192v1", ca4.K, b);
        f("sm2p256v1", ca4.F, a);
    }

    public static sqc d(t43 t43Var, String str) {
        sqc sqcVar = new sqc(t43Var, jp4.b(str));
        fgc.a(sqcVar.m());
        return sqcVar;
    }

    public static t43 e(t43 t43Var) {
        return t43Var;
    }

    public static void f(String str, l1 l1Var, rqc rqcVar) {
        c.put(u0a.f(str), l1Var);
        e.put(l1Var, str);
        d.put(l1Var, rqcVar);
    }

    public static BigInteger g(String str) {
        return new BigInteger(1, jp4.b(str));
    }

    public static rqc h(String str) {
        l1 l1VarL = l(str);
        if (l1VarL == null) {
            return null;
        }
        return j(l1VarL);
    }

    public static qqc i(l1 l1Var) {
        rqc rqcVarJ = j(l1Var);
        if (rqcVarJ == null) {
            return null;
        }
        return rqcVarJ.d();
    }

    public static rqc j(l1 l1Var) {
        return (rqc) d.get(l1Var);
    }

    public static String k(l1 l1Var) {
        return (String) e.get(l1Var);
    }

    public static l1 l(String str) {
        return (l1) c.get(u0a.f(str));
    }
}
