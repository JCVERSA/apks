package defpackage;

import android.content.Context;
import com.transsion.retrofit.cache.CacheManager;

public class ec2 extends vec {
    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public Void create(Context context) {
        CacheManager.getInstance().createDiskLruCache(context);
        return null;
    }
}
