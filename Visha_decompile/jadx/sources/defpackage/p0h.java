package defpackage;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.internal.client.zzbd;

public final class p0h {
    public final String a;
    public final String b;
    public int c;
    public long d;
    public final Integer e;

    public p0h(String str, String str2, int i, long j, Integer num) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
        this.e = num;
    }

    public final String toString() {
        Integer num;
        String str = this.a + Consts.DOT + this.c + Consts.DOT + this.d;
        String str2 = this.b;
        if (!TextUtils.isEmpty(str2)) {
            str = str + Consts.DOT + str2;
        }
        if (!((Boolean) zzbd.zzc().b(cye.O1)).booleanValue() || (num = this.e) == null || TextUtils.isEmpty(str2)) {
            return str;
        }
        return str + Consts.DOT + num;
    }
}
