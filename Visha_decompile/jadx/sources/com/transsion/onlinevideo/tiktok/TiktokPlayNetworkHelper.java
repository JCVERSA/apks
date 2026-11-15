package com.transsion.onlinevideo.tiktok;

import android.content.Context;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.R;
import com.transsion.utils.ToastUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import defpackage.db3;
import defpackage.e07;
import defpackage.w6c;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

public final class TiktokPlayNetworkHelper {
    public static final TiktokPlayNetworkHelper a = new TiktokPlayNetworkHelper();
    public static volatile boolean b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/TiktokPlayNetworkHelper$PlayBlockType;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "NONE", "NO_NET", "NO_WIFI", "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum PlayBlockType {
        NONE,
        NO_NET,
        NO_WIFI;

        private static final db3 $ENTRIES = kotlin.enums.a.a(values());

        public static db3 getEntries() {
            return $ENTRIES;
        }
    }

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[PlayBlockType.values().length];
            try {
                iArr[PlayBlockType.NO_NET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PlayBlockType.NO_WIFI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PlayBlockType.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final void a() {
        b = false;
    }

    public static final PlayBlockType b(Context context) {
        if (context != null && e07.e(context)) {
            return (e07.g(context) && PlayHandler.getInstance().mShowMobileData) ? PlayBlockType.NO_WIFI : PlayBlockType.NONE;
        }
        return PlayBlockType.NO_NET;
    }

    public static final boolean c(int i) {
        return i == 2 || i == 3 || i == 4 || i == 5 || i == 6;
    }

    public static final void d() {
        b = true;
        PlayHandler.getInstance().mShowMobileData = false;
    }

    public static final void e(Context context, boolean z) {
        if (context != null && e07.g(context)) {
            i(context, z);
            if (w6c.c(context, "allow_mobile_data_play", false) || !PlayHandler.getInstance().mShowMobileData) {
                return;
            }
            ToastUtils.s(R.string.auto_play_stream_toast);
        }
    }

    public static final int f(Context context, Integer num) {
        if (context == null) {
            return 0;
        }
        return h(e07.e(context), e07.h(context), e07.g(context), num);
    }

    public static int g(Context context, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        return f(context, num);
    }

    public static final int h(boolean z, boolean z2, boolean z3, Integer num) {
        if (!z) {
            return 0;
        }
        if (z2) {
            return 1;
        }
        if (z3) {
            if (num != null) {
                if (!c(num.intValue())) {
                    num = null;
                }
                if (num != null) {
                    return num.intValue();
                }
            }
            return 4;
        }
        if (num != null) {
            if (num.intValue() == 0) {
                num = null;
            }
            if (num != null) {
                return num.intValue();
            }
        }
        return 6;
    }

    public static final void i(Context context, boolean z) {
        if (context == null || b) {
            return;
        }
        boolean z2 = false;
        boolean zC = w6c.c(context, "allow_mobile_data_play", false);
        if (z) {
            PlayHandler.getInstance().mShowMobileData = !zC;
            return;
        }
        PlayHandler playHandler = PlayHandler.getInstance();
        if (!zC && !MMKV.p().e("moble_remind", false)) {
            z2 = true;
        }
        playHandler.mShowMobileData = z2;
    }

    public static final Integer j(PlayBlockType playBlockType) {
        y45.j(playBlockType, "block");
        int i = a.a[playBlockType.ordinal()];
        if (i == 1) {
            return 1002;
        }
        if (i == 2) {
            return 1001;
        }
        if (i == 3) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }
}
