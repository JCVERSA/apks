package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;
import org.greenrobot.greendao.generator.Schema;

public final class q9f extends aaf {
    public String c;
    public boolean d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public final Object k;
    public final ejf l;
    public final Activity m;
    public kkf n;
    public ImageView o;
    public LinearLayout p;
    public final baf q;
    public PopupWindow r;
    public RelativeLayout s;
    public ViewGroup t;

    static {
        s71.f("top-left", "top-right", "top-center", TtmlNode.CENTER, "bottom-left", "bottom-right", "bottom-center");
    }

    public q9f(ejf ejfVar, baf bafVar) {
        super(ejfVar, "resize");
        this.c = "top-right";
        this.d = true;
        this.e = 0;
        this.f = 0;
        this.g = -1;
        this.h = 0;
        this.i = 0;
        this.j = -1;
        this.k = new Object();
        this.l = ejfVar;
        this.m = ejfVar.zzi();
        this.q = bafVar;
    }

    public final void i(final boolean z) {
        synchronized (this.k) {
            try {
                if (this.r != null) {
                    if (!((Boolean) zzbd.zzc().b(cye.Ua)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
                        n(z);
                    } else {
                        zef.f.i(new Runnable() {
                            @Override
                            public final void run() {
                                this.zza.n(z);
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:87:0x0183  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void j(Map map) {
        byte b;
        int i;
        byte b2;
        int i2;
        int i3;
        int i4;
        int i5;
        synchronized (this.k) {
            try {
                Activity activity = this.m;
                if (activity == null) {
                    c("Not an activity context. Cannot resize.");
                    return;
                }
                ejf ejfVar = this.l;
                if (ejfVar.zzO() == null) {
                    c("Webview is not yet available, size is not set.");
                    return;
                }
                if (ejfVar.zzO().i()) {
                    c("Is interstitial. Cannot resize an interstitial.");
                    return;
                }
                if (ejfVar.zzaF()) {
                    c("Cannot resize an expanded banner.");
                    return;
                }
                if (!TextUtils.isEmpty((CharSequence) map.get("width"))) {
                    zzv.zzq();
                    this.j = zzs.zzP((String) map.get("width"));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get("height"))) {
                    zzv.zzq();
                    this.g = zzs.zzP((String) map.get("height"));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get("offsetX"))) {
                    zzv.zzq();
                    this.h = zzs.zzP((String) map.get("offsetX"));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get("offsetY"))) {
                    zzv.zzq();
                    this.i = zzs.zzP((String) map.get("offsetY"));
                }
                if (!TextUtils.isEmpty((CharSequence) map.get("allowOffscreen"))) {
                    this.d = Boolean.parseBoolean((String) map.get("allowOffscreen"));
                }
                String str = (String) map.get("customClosePosition");
                if (!TextUtils.isEmpty(str)) {
                    this.c = str;
                }
                if (this.j < 0 || this.g < 0) {
                    c("Invalid width and height options. Cannot resize.");
                    return;
                }
                Window window = activity.getWindow();
                if (window != null && window.getDecorView() != null) {
                    zzv.zzq();
                    int[] iArrZzW = zzs.zzW(activity);
                    zzv.zzq();
                    int[] iArrZzS = zzs.zzS(activity);
                    int i6 = iArrZzW[0];
                    int i7 = iArrZzW[1];
                    int i8 = this.j;
                    int[] iArr = null;
                    if (i8 < 50 || i8 > i6) {
                        int i9 = zze.zza;
                        zzo.zzj("Width is too small or too large.");
                    } else {
                        int i10 = this.g;
                        if (i10 < 50 || i10 > i7) {
                            int i11 = zze.zza;
                            zzo.zzj("Height is too small or too large.");
                        } else if (i10 == i7 && i8 == i6) {
                            int i12 = zze.zza;
                            zzo.zzj("Cannot resize to a full-screen ad.");
                        } else if (this.d) {
                            switch (this.c) {
                                case "center":
                                    b2 = 2;
                                    break;
                                case "top-left":
                                    b2 = 0;
                                    break;
                                case "bottom-left":
                                    b2 = 3;
                                    break;
                                case "bottom-right":
                                    b2 = 5;
                                    break;
                                case "bottom-center":
                                    b2 = 4;
                                    break;
                                case "top-center":
                                    b2 = 1;
                                    break;
                                default:
                                    b2 = -1;
                                    break;
                            }
                            if (b2 == 0) {
                                i2 = this.e + this.h;
                                i3 = this.f;
                            } else if (b2 != 1) {
                                if (b2 != 2) {
                                    if (b2 == 3) {
                                        i2 = this.e + this.h;
                                        i5 = this.f;
                                    } else if (b2 == 4) {
                                        i2 = ((this.e + this.h) + (i8 >> 1)) - 25;
                                        i5 = this.f;
                                    } else if (b2 != 5) {
                                        i2 = ((this.e + this.h) + i8) - 50;
                                        i3 = this.f;
                                    } else {
                                        i2 = ((this.e + this.h) + i8) - 50;
                                        i5 = this.f;
                                    }
                                    i4 = ((i5 + this.i) + i10) - 50;
                                } else {
                                    i2 = ((this.e + this.h) + (i8 >> 1)) - 25;
                                    i4 = ((this.f + this.i) + (i10 >> 1)) - 25;
                                }
                                if (i2 >= 0 && i2 + 50 <= i6 && i4 >= iArrZzS[0] && i4 + 50 <= iArrZzS[1]) {
                                    iArr = new int[]{this.e + this.h, this.f + this.i};
                                }
                            } else {
                                i2 = ((this.e + this.h) + (i8 >> 1)) - 25;
                                i3 = this.f;
                            }
                            i4 = i3 + this.i;
                            if (i2 >= 0) {
                                iArr = new int[]{this.e + this.h, this.f + this.i};
                            }
                        } else {
                            zzv.zzq();
                            int[] iArrZzW2 = zzs.zzW(activity);
                            zzv.zzq();
                            int[] iArrZzS2 = zzs.zzS(activity);
                            int i13 = iArrZzW2[0];
                            int i14 = this.e + this.h;
                            int i15 = this.f + this.i;
                            if (i14 < 0) {
                                i = 0;
                            } else {
                                int i16 = this.j;
                                i = i14 + i16 > i13 ? i13 - i16 : i14;
                            }
                            int i17 = iArrZzS2[0];
                            if (i15 < i17) {
                                i15 = i17;
                            } else {
                                int i18 = this.g;
                                int i19 = i15 + i18;
                                int i20 = iArrZzS2[1];
                                if (i19 > i20) {
                                    i15 = i20 - i18;
                                }
                            }
                            iArr = new int[]{i, i15};
                        }
                    }
                    if (iArr == null) {
                        c("Resize location out of screen or close button is not visible.");
                        return;
                    }
                    zzbb.zzb();
                    int iZzy = zzf.zzy(activity, this.j);
                    zzbb.zzb();
                    int iZzy2 = zzf.zzy(activity, this.g);
                    ViewParent parent = ((View) ejfVar).getParent();
                    if (parent == null || !(parent instanceof ViewGroup)) {
                        c("Webview is detached, probably in the middle of a resize or expand.");
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) parent;
                    viewGroup.removeView((View) ejfVar);
                    PopupWindow popupWindow = this.r;
                    if (popupWindow == null) {
                        this.t = viewGroup;
                        zzv.zzq();
                        ((View) ejfVar).setDrawingCacheEnabled(true);
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((View) ejfVar).getDrawingCache());
                        ((View) ejfVar).setDrawingCacheEnabled(false);
                        ImageView imageView = new ImageView(activity);
                        this.o = imageView;
                        imageView.setImageBitmap(bitmapCreateBitmap);
                        this.n = ejfVar.zzO();
                        this.t.addView(this.o);
                    } else {
                        popupWindow.dismiss();
                    }
                    RelativeLayout relativeLayout = new RelativeLayout(activity);
                    this.s = relativeLayout;
                    relativeLayout.setBackgroundColor(0);
                    this.s.setLayoutParams(new ViewGroup.LayoutParams(iZzy, iZzy2));
                    zzv.zzq();
                    PopupWindow popupWindow2 = new PopupWindow((View) this.s, iZzy, iZzy2, false);
                    this.r = popupWindow2;
                    popupWindow2.setOutsideTouchable(false);
                    this.r.setTouchable(true);
                    this.r.setClippingEnabled(!this.d);
                    this.s.addView((View) ejfVar, -1, -1);
                    this.p = new LinearLayout(activity);
                    zzbb.zzb();
                    int iZzy3 = zzf.zzy(activity, 50);
                    zzbb.zzb();
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iZzy3, zzf.zzy(activity, 50));
                    switch (this.c) {
                        case "center":
                            b = 2;
                            break;
                        case "top-left":
                            b = 0;
                            break;
                        case "bottom-left":
                            b = 3;
                            break;
                        case "bottom-right":
                            b = 5;
                            break;
                        case "bottom-center":
                            b = 4;
                            break;
                        case "top-center":
                            b = 1;
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    if (b == 0) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(9);
                    } else if (b == 1) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(14);
                    } else if (b == 2) {
                        layoutParams.addRule(13);
                    } else if (b == 3) {
                        layoutParams.addRule(12);
                        layoutParams.addRule(9);
                    } else if (b == 4) {
                        layoutParams.addRule(12);
                        layoutParams.addRule(14);
                    } else if (b != 5) {
                        layoutParams.addRule(10);
                        layoutParams.addRule(11);
                    } else {
                        layoutParams.addRule(12);
                        layoutParams.addRule(11);
                    }
                    this.p.setOnClickListener(new p9f(this));
                    this.p.setContentDescription("Close button");
                    this.s.addView(this.p, layoutParams);
                    try {
                        PopupWindow popupWindow3 = this.r;
                        View decorView = window.getDecorView();
                        zzbb.zzb();
                        int iZzy4 = zzf.zzy(activity, iArr[0]);
                        zzbb.zzb();
                        popupWindow3.showAtLocation(decorView, 0, iZzy4, zzf.zzy(activity, iArr[1]));
                        int i21 = iArr[0];
                        int i22 = iArr[1];
                        baf bafVar = this.q;
                        if (bafVar != null) {
                            bafVar.a(i21, i22, this.j, this.g);
                        }
                        this.l.zzaj(kkf.b(iZzy, iZzy2));
                        int i23 = iArr[0];
                        int i24 = iArr[1];
                        zzv.zzq();
                        f(i23, i24 - zzs.zzS(this.m)[0], this.j, this.g);
                        g("resized");
                        return;
                    } catch (RuntimeException e) {
                        c("Cannot show popup window: " + e.getMessage());
                        RelativeLayout relativeLayout2 = this.s;
                        ejf ejfVar2 = this.l;
                        relativeLayout2.removeView((View) ejfVar2);
                        ViewGroup viewGroup2 = this.t;
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(this.o);
                            this.t.addView((View) ejfVar2);
                            ejfVar2.zzaj(this.n);
                        }
                        return;
                    }
                }
                c("Activity context is not ready, cannot get window or decor view.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(int i, int i2, boolean z) {
        synchronized (this.k) {
            this.e = i;
            this.f = i2;
        }
    }

    public final void l(int i, int i2) {
        this.e = i;
        this.f = i2;
    }

    public final boolean m() {
        boolean z;
        synchronized (this.k) {
            z = this.r != null;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n(boolean z) {
        if (((Boolean) zzbd.zzc().b(cye.Va)).booleanValue()) {
            this.s.removeView((View) this.l);
            this.r.dismiss();
        } else {
            this.r.dismiss();
            this.s.removeView((View) this.l);
        }
        if (((Boolean) zzbd.zzc().b(cye.Wa)).booleanValue()) {
            View view = (View) this.l;
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
        ViewGroup viewGroup = this.t;
        if (viewGroup != null) {
            viewGroup.removeView(this.o);
            if (((Boolean) zzbd.zzc().b(cye.Xa)).booleanValue()) {
                try {
                    ViewGroup viewGroup2 = this.t;
                    ejf ejfVar = this.l;
                    viewGroup2.addView((View) ejfVar);
                    ejfVar.zzaj(this.n);
                } catch (IllegalStateException e) {
                    int i = zze.zza;
                    zzo.zzh("Unable to add webview back to view hierarchy.", e);
                }
            } else {
                ViewGroup viewGroup3 = this.t;
                ejf ejfVar2 = this.l;
                viewGroup3.addView((View) ejfVar2);
                ejfVar2.zzaj(this.n);
            }
        }
        if (z) {
            g(Schema.DEFAULT_NAME);
            baf bafVar = this.q;
            if (bafVar != null) {
                bafVar.zzb();
            }
        }
        this.r = null;
        this.s = null;
        this.t = null;
        this.p = null;
    }
}
