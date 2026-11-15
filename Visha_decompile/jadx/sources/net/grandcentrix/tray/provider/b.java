package net.grandcentrix.tray.provider;

import android.content.Context;
import android.net.Uri;
import defpackage.o9b;
import net.grandcentrix.tray.core.TrayStorage;
import org.apache.commons.lang3.BooleanUtils;

public class b {
    public final Uri a;
    public final Uri b;
    public Context c;

    public final class a {
        public boolean a;
        public String b;
        public String c;
        public TrayStorage.Type d = TrayStorage.Type.UNDEFINED;

        public a(Context context) {
            b.this.c = context.getApplicationContext();
        }

        public Uri a() {
            Uri.Builder builderBuildUpon = (this.a ? b.this.b : b.this.a).buildUpon();
            String str = this.c;
            if (str != null) {
                builderBuildUpon.appendPath(str);
            }
            String str2 = this.b;
            if (str2 != null) {
                builderBuildUpon.appendPath(str2);
            }
            TrayStorage.Type type = this.d;
            if (type != TrayStorage.Type.UNDEFINED) {
                builderBuildUpon.appendQueryParameter("backup", TrayStorage.Type.USER.equals(type) ? BooleanUtils.TRUE : BooleanUtils.FALSE);
            }
            return builderBuildUpon.build();
        }

        public a b(boolean z) {
            this.a = z;
            return this;
        }

        public a c(String str) {
            this.b = str;
            return this;
        }

        public a d(String str) {
            this.c = str;
            return this;
        }

        public a e(TrayStorage.Type type) {
            this.d = type;
            return this;
        }
    }

    public b(Context context) {
        this.c = context;
        this.a = o9b.b(context);
        this.b = o9b.d(context);
    }

    public a d() {
        return new a(this.c);
    }
}
