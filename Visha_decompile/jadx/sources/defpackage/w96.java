package defpackage;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;

public class w96 implements rq3 {
    @Override
    public String a(String str) {
        String strB = b(str);
        String strD = vj8.d(str);
        if (TextUtils.isEmpty(strB)) {
            return strD;
        }
        return strD + Consts.DOT + strB;
    }

    public final String b(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || iLastIndexOf <= str.lastIndexOf(47) || iLastIndexOf + 6 <= str.length()) ? "" : str.substring(iLastIndexOf + 1, str.length());
    }
}
