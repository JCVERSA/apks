package defpackage;

import android.os.Environment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;
import kotlin.text.Regex;
import kotlin.text.RegexOption;

public final class uf1 {
    public static final uf1 a = new uf1();
    public static final String b;
    public static final yi5 c;
    public static final yi5 d;

    static {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        y45.i(absolutePath, "getAbsolutePath(...)");
        b = absolutePath;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        c = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return uf1.d();
            }
        });
        d = b.b(lazyThreadSafetyMode, new c74() {
            @Override
            public final Object invoke() {
                return uf1.c();
            }
        });
    }

    public static final List c() {
        List listD = dw6.c.a().d();
        ArrayList arrayList = new ArrayList(z71.v(listD, 10));
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            arrayList.add(new Regex((String) it.next(), RegexOption.IGNORE_CASE));
        }
        return arrayList;
    }

    public static final String[] d() {
        return new String[]{".rmvb", ".rm", ".vob", ".RMVB", ".RM", ".VOB", ".asf", ".ps", ".mpg", ".mpeg", ".MP4V", ".m2ts", ".divx"};
    }

    public final List e() {
        return (List) d.getValue();
    }

    public final String f() {
        return b;
    }

    public final String[] g() {
        return (String[]) c.getValue();
    }
}
