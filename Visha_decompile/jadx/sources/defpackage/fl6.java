package defpackage;

import android.app.Application;
import android.content.Context;
import com.transsion.mediasession.a;
import java.util.ArrayList;
import java.util.List;

public class fl6 extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(bg.class);
        b.add(ec2.class);
        b.add(dec.class);
        b.add(lw5.class);
        b.add(v06.class);
        b.add(zz4.class);
    }

    @Override
    public boolean b() {
        return true;
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
    public Void create(Context context) {
        if (!(context instanceof Application)) {
            return null;
        }
        a.a().b((Application) context);
        return null;
    }
}
