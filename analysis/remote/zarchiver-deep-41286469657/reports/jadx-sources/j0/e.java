package j0;

import android.content.Context;
import android.net.Uri;
import h0.h;
import java.util.ArrayList;
import ru.zdevs.zarchiver.provider.FileProvider;

public final class e implements h0.c {

    public final ArrayList<String> f1157a;

    public final int f1158b;

    public final String f1159c;

    public e(ArrayList<String> arrayList, String str, int i2) {
        this.f1157a = arrayList;
        this.f1158b = i2;
        this.f1159c = str;
    }

    @Override
    public final int a() {
        return this.f1158b;
    }

    @Override
    public final Uri b(Context context, int i2) {
        return FileProvider.c(a0.c.i(this.f1159c, this.f1157a.get(i2)));
    }

    @Override
    public final boolean c() {
        return true;
    }

    @Override
    public final g.a d(int i2) {
        String strI = a0.c.i(this.f1159c, this.f1157a.get(i2));
        if (strI != null) {
            return new g.a(null, strI, null);
        }
        throw new NullPointerException("Path must not be null");
    }

    @Override
    public final h e() {
        return new h(this.f1159c);
    }

    @Override
    public final int getCount() {
        return this.f1157a.size();
    }

    @Override
    public final String getName(int i2) {
        return this.f1157a.get(i2);
    }

    @Override
    public final boolean remove(int i2) {
        this.f1157a.remove(i2);
        return true;
    }
}
