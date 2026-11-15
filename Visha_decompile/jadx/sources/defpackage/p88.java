package defpackage;

import android.app.Application;
import android.content.Context;
import java.util.ArrayList;
import java.util.List;

public class p88 extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(ec2.class);
        b.add(lw5.class);
        b.add(lz6.class);
        b.add(dec.class);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public List dependencies() {
        return b;
    }

    @Override
    public Void create(Context context) throws Throwable {
        n88.b().c();
        if (!(context instanceof Application)) {
            return null;
        }
        di1.f().e((Application) context);
        return null;
    }
}
