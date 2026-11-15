package defpackage;

import android.app.Application;
import android.content.Context;
import com.cloud.tupdate.TUpdate;
import java.util.ArrayList;
import java.util.List;

public class chb extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(v06.class);
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
    public Void create(Context context) {
        if (!(context instanceof Application)) {
            return null;
        }
        TUpdate.c.b().f(false).c((Application) context, true);
        return null;
    }
}
