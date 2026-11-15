package com.transsion.upgradesdk.page;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.method.ScrollingMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.R$id;
import com.transsion.upgradesdk.R$layout;
import com.transsion.upgradesdk.R$string;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import java.math.BigDecimal;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tu.l;
import tu.n;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/transsion/upgradesdk/page/f;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "upgradesdk_release"}, k = 1, mv = {1, 9, 0})
public final class f extends DialogFragment {

    public TextView f54536a;

    public TextView f54537b;

    public ImageView f54538c;

    public TextView f54539d;

    public TextView f54540e;

    public TextView f54541f;

    public TextView f54542g;

    public UpgradeData f54543h;

    public int f54544i = 1;

    public final Lazy f54545j = LazyKt.b(new a(this));

    public final Lazy f54546k = LazyKt.b(new b(this));

    public final Lazy f54547l = LazyKt.b(new e(this));

    public final Lazy f54548m = LazyKt.b(new c(this));

    public static void X() {
        new Handler().postDelayed(new Runnable() {
            @Override
            public final void run() {
                com.transsion.upgradesdk.page.f.c0();
            }
        }, 300L);
    }

    public static final void a0(f this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        UpgradeData upgradeData = this$0.f54543h;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        if (!upgradeData.isForceUpdate()) {
            l.e(this$0.f54544i, ((Boolean) this$0.f54547l.getValue()).booleanValue(), "later", com.transsion.upgradesdk.bean.c.DEFAULT);
            UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
            if (upgradeDialogCallback != null) {
                upgradeDialogCallback.onDialogClick(3);
            }
            this$0.dismiss();
            return;
        }
        l.e(this$0.f54544i, ((Boolean) this$0.f54547l.getValue()).booleanValue(), "exitapp", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback2 = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback2 != null) {
            upgradeDialogCallback2.onDialogClick(2);
        }
        this$0.dismiss();
        X();
    }

    public static final boolean b0(f this$0, DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        Intrinsics.h(this$0, "this$0");
        if (i10 != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        UpgradeData upgradeData = this$0.f54543h;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        if (upgradeData.isForceUpdate()) {
            l.e(this$0.f54544i, ((Boolean) this$0.f54547l.getValue()).booleanValue(), "back_exit", com.transsion.upgradesdk.bean.c.DEFAULT);
            UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
            if (upgradeDialogCallback != null) {
                upgradeDialogCallback.onDialogClick(5);
            }
            X();
            return false;
        }
        l.e(this$0.f54544i, ((Boolean) this$0.f54547l.getValue()).booleanValue(), "back", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback2 = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback2 == null) {
            return false;
        }
        upgradeDialogCallback2.onDialogClick(4);
        return false;
    }

    public static final void c0() {
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    public static final void d0(f this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        l.e(this$0.f54544i, ((Boolean) this$0.f54547l.getValue()).booleanValue(), "update", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogClick(1);
        }
        UpgradeData upgradeData = this$0.f54543h;
        UpgradeData upgradeData2 = null;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        String pkg = upgradeData.getPkg();
        UpgradeData upgradeData3 = this$0.f54543h;
        if (upgradeData3 == null) {
            Intrinsics.y("upgradeData");
            upgradeData3 = null;
        }
        int directDwl = upgradeData3.getDirectDwl();
        UpgradeData upgradeData4 = this$0.f54543h;
        if (upgradeData4 == null) {
            Intrinsics.y("upgradeData");
        } else {
            upgradeData2 = upgradeData4;
        }
        n.c(pkg, directDwl, upgradeData2.getHoverBtn(), new d(this$0));
    }

    /* JADX WARN: Code duplicated, block: B:75:0x019f  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a0 A[Catch: Exception -> 0x008f, TRY_LEAVE, TryCatch #1 {Exception -> 0x008f, blocks: (B:10:0x0079, B:12:0x0087, B:14:0x008b, B:17:0x0092, B:21:0x0099, B:23:0x00ae, B:24:0x00b2, B:25:0x00c0, B:39:0x012b, B:46:0x013f, B:48:0x0145, B:55:0x0159, B:58:0x015e, B:71:0x0190, B:72:0x0198, B:68:0x018a, B:51:0x014a, B:53:0x014e, B:54:0x0152, B:73:0x019b, B:76:0x01a0, B:42:0x0130, B:44:0x0134, B:45:0x0138, B:28:0x00c5, B:30:0x00da, B:31:0x00de, B:33:0x00e9, B:38:0x0103, B:36:0x00f8, B:37:0x00fe, B:59:0x0167, B:61:0x0176, B:64:0x0181, B:66:0x0185), top: B:83:0x0079, inners: #0 }] */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x018e, code lost:
    
        r11 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void Y(View view) {
        double d10;
        String str;
        TextView textView;
        String string;
        ImageView imageView;
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.icon_stub);
        UpgradeData upgradeData = this.f54543h;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        viewStub.setLayoutResource(Intrinsics.c(upgradeData.getPkg(), "com.transsion.phonemaster") ? R$layout.layout_icon_pm_style : R$layout.layout_icon_sdk_default);
        this.f54538c = (ImageView) viewStub.inflate().findViewById(R$id.iv_icon);
        this.f54536a = (TextView) view.findViewById(R$id.tv_name);
        this.f54537b = (TextView) view.findViewById(R$id.tv_version);
        this.f54539d = (TextView) view.findViewById(R$id.tv_size);
        this.f54540e = (TextView) view.findViewById(R$id.tv_message);
        this.f54541f = (TextView) view.findViewById(R$id.tv_cancel);
        this.f54542g = (TextView) view.findViewById(R$id.tv_ok);
        try {
            Drawable drawable = qu.f.f70259o.a().e().f67360b;
            if (drawable != null && (imageView = this.f54538c) != null) {
                imageView.setImageDrawable(drawable);
            }
            TextView textView2 = this.f54537b;
            if (textView2 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getString(R$string.upgrade_sdk_text_version));
                sb2.append(":  ");
                UpgradeData upgradeData2 = this.f54543h;
                if (upgradeData2 == null) {
                    Intrinsics.y("upgradeData");
                    upgradeData2 = null;
                }
                sb2.append(upgradeData2.getPkgVersionName());
                textView2.setText(sb2.toString());
            }
            TextView textView3 = this.f54539d;
            if (textView3 != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(getString(R$string.upgrade_sdk_text_size));
                sb3.append(":  ");
                UpgradeData upgradeData3 = this.f54543h;
                if (upgradeData3 == null) {
                    Intrinsics.y("upgradeData");
                    upgradeData3 = null;
                }
                long pkgSize = upgradeData3.getPkgSize();
                if (pkgSize < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
                    d10 = pkgSize / 1024;
                    str = "K";
                } else if (pkgSize < 1073741824) {
                    d10 = pkgSize / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                    str = "M";
                } else {
                    d10 = pkgSize / 1073741824;
                    str = "G";
                }
                sb3.append(new BigDecimal(d10).setScale(1, 4).doubleValue() + str);
                textView3.setText(sb3.toString());
            }
            TextView textView4 = this.f54540e;
            if (textView4 != null) {
                UpgradeData upgradeData4 = this.f54543h;
                if (upgradeData4 == null) {
                    Intrinsics.y("upgradeData");
                    upgradeData4 = null;
                }
                textView4.setText(upgradeData4.getUpgradeMessage());
            }
            Context context = getContext();
            if (context == null) {
                textView = this.f54540e;
                if (textView == null) {
                    textView.setMovementMethod(new ScrollingMovementMethod());
                }
            } else {
                TextView textView5 = this.f54541f;
                if (textView5 != null) {
                    UpgradeData upgradeData5 = this.f54543h;
                    if (upgradeData5 == null) {
                        Intrinsics.y("upgradeData");
                        upgradeData5 = null;
                    }
                    textView5.setText(upgradeData5.getCancelButtonText(context));
                }
                TextView textView6 = this.f54536a;
                if (textView6 != null) {
                    Intrinsics.h(context, "context");
                    try {
                        ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo;
                        int i10 = applicationInfo.labelRes;
                        if (i10 != 0) {
                            string = context.getResources().getString(i10);
                        } else {
                            CharSequence charSequence = applicationInfo.nonLocalizedLabel;
                            string = charSequence != null ? charSequence.toString() : null;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    textView6.setText(string != null ? StringsKt.n1(string).toString() : null);
                }
                textView = this.f54540e;
                if (textView == null) {
                    textView.setMovementMethod(new ScrollingMovementMethod());
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            dismiss();
        }
        e0();
    }

    public final void Z(FragmentManager manager) {
        Intrinsics.h(manager, "manager");
        if (manager.L0() || manager.T0()) {
            return;
        }
        Fragment fragmentK0 = manager.k0("UpgradeBottomDialog");
        if ((fragmentK0 == null || !fragmentK0.isAdded()) && !isAdded()) {
            show(manager, "UpgradeBottomDialog");
        }
    }

    public final void e0() {
        TextView textView = this.f54541f;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    com.transsion.upgradesdk.page.f.a0(this.f72394a, view);
                }
            });
        }
        TextView textView2 = this.f54542g;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    com.transsion.upgradesdk.page.f.d0(this.f72395a, view);
                }
            });
        }
    }

    @Override
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.h(inflater, "inflater");
        View viewInflate = inflater.inflate(((Number) this.f54548m.getValue()).intValue() == 1 ? R$layout.upgradesdk_layout_dialog_os16 : R$layout.upgradesdk_layout_dialog_os15, viewGroup, false);
        try {
            UpgradeData upgradeData = qu.f.f70259o.a().f70262b;
            Intrinsics.e(upgradeData);
            this.f54543h = upgradeData;
            if (upgradeData == null) {
                Intrinsics.y("upgradeData");
                upgradeData = null;
            }
            this.f54544i = upgradeData.isForceUpdate() ? 2 : 1;
            Intrinsics.e(viewInflate);
            Y(viewInflate);
        } catch (Exception unused) {
            dismiss();
        }
        return viewInflate;
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        qu.f fVarA = qu.f.f70259o.a();
        Intrinsics.h(this, "dialog");
        if (fVarA.f70269i == this) {
            fVarA.f70269i = null;
        }
    }

    @Override
    public final void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogDismiss();
        }
    }

    @Override
    public final void onStart() {
        Window window;
        Context context;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (context = getContext()) != null) {
            Intrinsics.e(context);
            tu.d.a(window, context);
        }
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        Context context2 = getContext();
        if (context2 == null || ((Boolean) this.f54547l.getValue()).booleanValue()) {
            return;
        }
        tu.h hVar = tu.i.f72841b;
        tu.i iVarA = hVar.a(context2);
        long jCurrentTimeMillis = System.currentTimeMillis();
        Intrinsics.h("KV_UPGRADE_POPUP_LAST_TIME", "key");
        MMKV mmkv = iVarA.f72843a;
        if (mmkv != null) {
            mmkv.t("KV_UPGRADE_POPUP_LAST_TIME", jCurrentTimeMillis);
        }
        tu.i iVarA2 = hVar.a(context2);
        Intrinsics.h("KV_UPGRADE_POPUP_TIMES", "key");
        MMKV mmkv2 = iVarA2.f72843a;
        int iG = (mmkv2 != null ? mmkv2.g("KV_UPGRADE_POPUP_TIMES", 0) : 0) + 1;
        tu.i iVarA3 = hVar.a(context2);
        Intrinsics.h("KV_UPGRADE_POPUP_TIMES", "key");
        MMKV mmkv3 = iVarA3.f72843a;
        if (mmkv3 != null) {
            mmkv3.s("KV_UPGRADE_POPUP_TIMES", iG);
        }
    }

    @Override
    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
                @Override
                public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                    return com.transsion.upgradesdk.page.f.b0(this.f72393a, dialogInterface, i10, keyEvent);
                }
            });
        }
        Integer num = (Integer) this.f54545j.getValue();
        if (num != null) {
            int iIntValue = num.intValue();
            TextView textView = this.f54541f;
            if (textView != null) {
                textView.setTextColor(iIntValue);
            }
        }
        Integer num2 = (Integer) this.f54546k.getValue();
        if (num2 != null) {
            int iIntValue2 = num2.intValue();
            TextView textView2 = this.f54542g;
            if (textView2 != null) {
                textView2.setTextColor(iIntValue2);
            }
        }
        l.d(this.f54544i, ((Boolean) this.f54547l.getValue()).booleanValue(), com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogShow();
        }
    }
}
