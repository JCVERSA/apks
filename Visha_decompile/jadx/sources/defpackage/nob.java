package defpackage;

import android.content.Context;
import android.util.Log;
import java.util.Collections;
import java.util.List;

public class nob extends vec {
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
        return Collections.singletonList(oxa.class);
    }

    @Override
    public Void create(Context context) {
        Log.i("VerifyKeyTask", "HubSDK verify result: " + j5b.e(context));
        return null;
    }
}
