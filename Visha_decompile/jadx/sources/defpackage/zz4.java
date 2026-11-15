package defpackage;

import android.content.Context;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.b;

public class zz4 extends vec {
    @Override
    public boolean b() {
        return true;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public Void create(Context context) {
        Utils.a();
        b.d();
        StringBuilder sb = new StringBuilder();
        sb.append("Visha Version Name is ");
        sb.append(b.d());
        sb.append(", Version Code is ");
        sb.append(b.b());
        sb.append(", Is GP Version: ");
        sb.append(!pp3.b);
        Log.i("InitAppVersionTask", sb.toString());
        return null;
    }
}
