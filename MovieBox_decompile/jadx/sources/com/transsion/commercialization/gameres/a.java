package com.transsion.commercialization.gameres;

import android.content.Context;
import com.transsion.bean.GameInfoType;
import com.transsion.commercialization.gameres.aha.AHAGameResLoader;
import com.transsion.commercialization.gameres.ps.PSGameResLoader;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public interface a {

    public static final C0586a f42596a = C0586a.f42597a;

    public static final class C0586a {

        static final C0586a f42597a = new C0586a();

        public class C0587a {

            public static final int[] f42598a;

            static {
                int[] iArr = new int[GameInfoType.values().length];
                try {
                    iArr[GameInfoType.AHA.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[GameInfoType.PS.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f42598a = iArr;
            }
        }

        private C0586a() {
        }

        public final a a(GameInfoType type) {
            Intrinsics.h(type, "type");
            int i10 = C0587a.f42598a[type.ordinal()];
            if (i10 == 1) {
                return new AHAGameResLoader();
            }
            if (i10 == 2) {
                return new PSGameResLoader();
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    void a(Context context, String str, String str2, Function1 function1);
}
