package defpackage;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzau;

public final class jui extends RelativeLayout {
    public final zzau b;
    public boolean c;

    public jui(Context context, String str, String str2, String str3) {
        super(context);
        zzau zzauVar = new zzau(context, str);
        this.b = zzauVar;
        zzauVar.zzo(str2);
        zzauVar.zzn(str3);
    }

    @Override
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.c) {
            return false;
        }
        this.b.zzm(motionEvent);
        return false;
    }
}
