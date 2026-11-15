package yv;

import android.graphics.drawable.Drawable;
import com.blankj.utilcode.util.Utils;
import com.transsion.videodetail.R$drawable;
import com.transsion.videodetail.music.bean.MusicLoopEnum;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f76399a = new c();

    private static MusicLoopEnum f76400b = MusicLoopEnum.NORMAL;

    public class a {

        public static final int[] f76401a;

        static {
            int[] iArr = new int[MusicLoopEnum.values().length];
            try {
                iArr[MusicLoopEnum.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MusicLoopEnum.LIST_LOOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MusicLoopEnum.SINGLE_LOOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f76401a = iArr;
        }
    }

    private c() {
    }

    public final Drawable a(MusicLoopEnum loop) {
        Intrinsics.h(loop, "loop");
        int i10 = a.f76401a[loop.ordinal()];
        if (i10 == 1) {
            return androidx.core.content.b.getDrawable(Utils.a(), R$drawable.music_iv_loop_normal);
        }
        if (i10 == 2) {
            return androidx.core.content.b.getDrawable(Utils.a(), R$drawable.music_iv_loop_list);
        }
        if (i10 == 3) {
            return androidx.core.content.b.getDrawable(Utils.a(), R$drawable.music_iv_loop_single);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final MusicLoopEnum b() {
        return f76400b;
    }

    public final MusicLoopEnum c() {
        MusicLoopEnum musicLoopEnum;
        int i10 = a.f76401a[f76400b.ordinal()];
        if (i10 == 1) {
            musicLoopEnum = MusicLoopEnum.LIST_LOOP;
        } else if (i10 == 2) {
            musicLoopEnum = MusicLoopEnum.SINGLE_LOOP;
        } else {
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            musicLoopEnum = MusicLoopEnum.NORMAL;
        }
        f76400b = musicLoopEnum;
        return musicLoopEnum;
    }
}
