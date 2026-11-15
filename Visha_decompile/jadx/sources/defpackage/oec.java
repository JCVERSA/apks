package defpackage;

import android.content.Context;
import com.transsion.playercommon.tranquestion.VishaQuestionnaireManager;
import java.util.ArrayList;
import java.util.List;

public class oec extends vec {
    public static List b;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(lw5.class);
        b.add(lz6.class);
        b.add(zz4.class);
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
        VishaQuestionnaireManager.c().e(context);
        return null;
    }
}
