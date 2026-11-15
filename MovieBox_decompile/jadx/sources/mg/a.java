package mg;

import com.tencent.mmkv.MMKV;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0814a f66402a = new C0814a(null);

    private static MMKV f66403b = xg.a.f75335a.a();

    public static final class C0814a {
        public C0814a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            String string;
            MMKV mmkvC = c();
            return (mmkvC == null || (string = mmkvC.getString("install_ch", "")) == null) ? "" : string;
        }

        public final String b() {
            String string;
            MMKV mmkvC = c();
            return (mmkvC == null || (string = mmkvC.getString("install_id", "")) == null) ? "" : string;
        }

        public final MMKV c() {
            return a.f66403b;
        }

        public final String d() {
            String string;
            MMKV mmkvC = c();
            return (mmkvC == null || (string = mmkvC.getString("install_share_uid", "")) == null) ? "" : string;
        }

        public final void e(String v10) {
            Intrinsics.h(v10, "v");
            MMKV mmkvC = c();
            if (mmkvC != null) {
                mmkvC.putString("install_ch", v10);
            }
        }

        public final void f(String v10) {
            Intrinsics.h(v10, "v");
            MMKV mmkvC = c();
            if (mmkvC != null) {
                mmkvC.putString("install_id", v10);
            }
        }

        public final void g(String uid) {
            Intrinsics.h(uid, "uid");
            MMKV mmkvC = c();
            if (mmkvC != null) {
                mmkvC.putString("install_share_uid", uid);
            }
        }

        public final void h(String userId) {
            Intrinsics.h(userId, "userId");
            MMKV mmkvC = c();
            if (mmkvC != null) {
                mmkvC.putString("myuserid", userId);
            }
        }

        private C0814a() {
        }
    }
}
