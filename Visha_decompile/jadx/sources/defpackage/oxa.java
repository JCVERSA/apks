package defpackage;

import android.content.Context;
import com.transsion.hubsdk.common.init.TranHubSdkManager;

public class oxa extends vec {
    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public Void create(Context context) {
        TranHubSdkManager.getInstance().init(context);
        return null;
    }
}
