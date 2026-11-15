package defpackage;

import android.app.Application;
import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.getkeepsafe.relinker.b;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.utils.AudioFilterUtils;
import java.util.ArrayList;
import java.util.List;

public class lw5 extends vec {
    public static List c;
    public String b = lw5.class.toString();

    public class a implements MMKV.b {
        public final Application a;

        public a(Application application) {
            this.a = application;
        }

        @Override
        public void a(String str) {
            try {
                b.a(this.a, str);
            } catch (Throwable th) {
                System.loadLibrary(str);
                th.printStackTrace();
            }
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        c = arrayList;
        arrayList.add(zz4.class);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public List dependencies() {
        return c;
    }

    @Override
    public Void create(Context context) {
        if (!(context instanceof Application)) {
            return null;
        }
        i((Application) context);
        AudioFilterUtils.u();
        return null;
    }

    public final void i(Application application) {
        try {
            LogUtils.j(this.b, MMKV.C(application, new a(application)));
        } catch (Throwable th) {
            LogUtils.m(this.b, "exception:" + th.getMessage());
        }
    }
}
