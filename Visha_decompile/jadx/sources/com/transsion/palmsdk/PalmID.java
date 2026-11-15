package com.transsion.palmsdk;

import android.app.Activity;
import android.content.Context;
import com.google.gson.annotations.SerializedName;
import com.transsion.palmsdk.data.PalmAuthResult;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class PalmID {
    public static volatile PalmID c;
    public static Context d;
    public List a = new CopyOnWriteArrayList();
    public List b = new CopyOnWriteArrayList();

    public static class LoginRecord implements Serializable {
        public long loginTime;
        public String loginType;
    }

    public static class Profile implements Serializable {
        public String avatarUrl;
        public String base64Avatar;
        public String birthday;
        public String city;
        public String country;
        public String countryCode;
        public String countryIso;
        public String countryName;
        public String email;
        public String fullName;
        public int gender;

        @SerializedName(alternate = {"nickName"}, value = "nickname")
        public String nickname;
        public String openId;
        public String phone;
        public String signature;
        public String state;
        public String uniqueId;

        @SerializedName(alternate = {"userName"}, value = "username")
        public String username;
    }

    public interface a {
        void a(int i, String str);

        void onSuccess(Object obj);
    }

    public interface b {
        void a(int i, String str);

        void b(PalmAuthResult palmAuthResult);

        void onCancel();
    }

    public interface c {
        void onChanged(boolean z);
    }

    public interface d {
        void a(Profile profile);
    }

    public interface e {
        void a(int i);

        void b(int i, String str);
    }

    public static PalmID f(Context context, PalmAuthParam palmAuthParam) {
        if (context == null || palmAuthParam == null) {
            throw new IllegalArgumentException("invalid arguments");
        }
        if (d == null) {
            d = context.getApplicationContext();
        }
        if (c == null) {
            synchronized (PalmID.class) {
                try {
                    if (c == null) {
                        c = new PalmDefaultImpl(context, palmAuthParam);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public static Context h() {
        return d;
    }

    public static PalmID l(Context context) {
        if (context == null) {
            return new com.transsion.palmsdk.a();
        }
        if (c == null) {
            synchronized (PalmID.class) {
                try {
                    if (c == null) {
                        return new com.transsion.palmsdk.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public void a(c cVar) {
        if (cVar == null || this.b.contains(cVar)) {
            return;
        }
        this.b.add(cVar);
    }

    public void b(d dVar) {
        if (dVar == null || this.a.contains(dVar)) {
            return;
        }
        this.a.add(dVar);
    }

    public abstract void c(Context context, b bVar);

    public abstract void d(Context context, boolean z, boolean z2, b bVar);

    public abstract void e(String str, String str2, Map map, a aVar);

    public PalmAuthParam g() {
        if (this instanceof PalmDefaultImpl) {
            return ((PalmDefaultImpl) this).x();
        }
        return null;
    }

    public abstract Profile i();

    public abstract String j();

    public abstract long k();

    public abstract boolean m();

    public abstract boolean n();

    public abstract void o(Activity activity, String str);

    public abstract void p(a aVar);

    public void q(c cVar) {
        if (cVar != null) {
            this.b.remove(cVar);
        }
    }

    public void r(d dVar) {
        if (dVar != null) {
            this.a.remove(dVar);
        }
    }
}
