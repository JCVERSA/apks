package defpackage;

import android.content.Context;
import com.transsion.dbdata.utils.AudioFilterUtils;
import java.util.ArrayList;
import java.util.List;

public class np extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(lw5.class);
        b.add(aq5.class);
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
        AudioFilterUtils.u();
        we6.e().f(context);
        return null;
    }
}
