package defpackage;

import com.geecko.fpcalc.FpCalc;

public class gj4 implements cv4 {
    @Override
    public String a(String str) {
        String strFpCalc;
        String[] strArr = {"-json", str};
        synchronized (FpCalc.class) {
            strFpCalc = FpCalc.fpCalc(strArr);
        }
        return strFpCalc;
    }
}
