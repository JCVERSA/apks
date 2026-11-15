package su;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
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
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.R$id;
import com.transsion.upgradesdk.R$layout;
import com.transsion.upgradesdk.R$string;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import com.transsion.upgradesdk.page.j;
import com.transsion.upgradesdk.page.k;
import java.math.BigDecimal;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tu.l;
import tu.n;

public final class i extends DialogFragment {

    public TextView f72399a;

    public TextView f72400b;

    public ImageView f72401c;

    public TextView f72402d;

    public TextView f72403e;

    public TextView f72404f;

    public TextView f72405g;

    public UpgradeData f72406h;

    public int f72407i = 1;

    public final Lazy f72408j = LazyKt.b(new com.transsion.upgradesdk.page.g(this));

    public final Lazy f72409k = LazyKt.b(new com.transsion.upgradesdk.page.h(this));

    public final Lazy f72410l = LazyKt.b(new k(this));

    public final Lazy f72411m = LazyKt.b(new com.transsion.upgradesdk.page.i(this));

    public static void a() {
        new Handler().postDelayed(new Runnable() {
            @Override
            public final void run() {
                i.e();
            }
        }, 300L);
    }

    public static final void c(i this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        UpgradeData upgradeData = this$0.f72406h;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        if (!upgradeData.isForceUpdate()) {
            l.e(this$0.f72407i, ((Boolean) this$0.f72410l.getValue()).booleanValue(), "later", com.transsion.upgradesdk.bean.c.DEFAULT);
            UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
            if (upgradeDialogCallback != null) {
                upgradeDialogCallback.onDialogClick(3);
            }
            this$0.dismiss();
            return;
        }
        l.e(this$0.f72407i, ((Boolean) this$0.f72410l.getValue()).booleanValue(), "exitapp", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback2 = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback2 != null) {
            upgradeDialogCallback2.onDialogClick(2);
        }
        this$0.dismiss();
        a();
    }

    public static final boolean d(i this$0, DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        Intrinsics.h(this$0, "this$0");
        if (i10 != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        UpgradeData upgradeData = this$0.f72406h;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        if (upgradeData.isForceUpdate()) {
            l.e(this$0.f72407i, ((Boolean) this$0.f72410l.getValue()).booleanValue(), "back_exit", com.transsion.upgradesdk.bean.c.DEFAULT);
            UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
            if (upgradeDialogCallback != null) {
                upgradeDialogCallback.onDialogClick(5);
            }
            a();
            return false;
        }
        l.e(this$0.f72407i, ((Boolean) this$0.f72410l.getValue()).booleanValue(), "back", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback2 = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback2 == null) {
            return false;
        }
        upgradeDialogCallback2.onDialogClick(4);
        return false;
    }

    public static final void e() {
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    public static final void f(i this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        l.e(this$0.f72407i, ((Boolean) this$0.f72410l.getValue()).booleanValue(), "update", com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogClick(1);
        }
        UpgradeData upgradeData = this$0.f72406h;
        UpgradeData upgradeData2 = null;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        String pkg = upgradeData.getPkg();
        UpgradeData upgradeData3 = this$0.f72406h;
        if (upgradeData3 == null) {
            Intrinsics.y("upgradeData");
            upgradeData3 = null;
        }
        int directDwl = upgradeData3.getDirectDwl();
        UpgradeData upgradeData4 = this$0.f72406h;
        if (upgradeData4 == null) {
            Intrinsics.y("upgradeData");
        } else {
            upgradeData2 = upgradeData4;
        }
        n.c(pkg, directDwl, upgradeData2.getHoverBtn(), new j(this$0));
    }

    public final void b(View view) {
        double d10;
        String str;
        ImageView imageView;
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.icon_stub);
        UpgradeData upgradeData = this.f72406h;
        UpgradeData upgradeData2 = null;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        viewStub.setLayoutResource(Intrinsics.c(upgradeData.getPkg(), "com.transsion.phonemaster") ? R$layout.layout_icon_pm_style : R$layout.layout_icon_sdk_default);
        this.f72401c = (ImageView) viewStub.inflate().findViewById(R$id.iv_icon);
        this.f72399a = (TextView) view.findViewById(R$id.tv_name);
        this.f72400b = (TextView) view.findViewById(R$id.tv_version);
        this.f72402d = (TextView) view.findViewById(R$id.tv_size);
        this.f72403e = (TextView) view.findViewById(R$id.tv_message);
        this.f72404f = (TextView) view.findViewById(R$id.tv_cancel);
        this.f72405g = (TextView) view.findViewById(R$id.tv_ok);
        try {
            TextView textView = this.f72399a;
            if (textView != null) {
                textView.setText(StringsKt.n1(qu.f.f70259o.a().e().f67361c).toString());
            }
            Drawable drawable = qu.f.f70259o.a().e().f67360b;
            if (drawable != null && (imageView = this.f72401c) != null) {
                imageView.setImageDrawable(drawable);
            }
            TextView textView2 = this.f72400b;
            if (textView2 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getString(R$string.upgrade_sdk_text_version));
                sb2.append(":  ");
                UpgradeData upgradeData3 = this.f72406h;
                if (upgradeData3 == null) {
                    Intrinsics.y("upgradeData");
                    upgradeData3 = null;
                }
                sb2.append(upgradeData3.getPkgVersionName());
                textView2.setText(sb2.toString());
            }
            TextView textView3 = this.f72402d;
            if (textView3 != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(getString(R$string.upgrade_sdk_text_size));
                sb3.append(":  ");
                UpgradeData upgradeData4 = this.f72406h;
                if (upgradeData4 == null) {
                    Intrinsics.y("upgradeData");
                    upgradeData4 = null;
                }
                long pkgSize = upgradeData4.getPkgSize();
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
            TextView textView4 = this.f72403e;
            if (textView4 != null) {
                UpgradeData upgradeData5 = this.f72406h;
                if (upgradeData5 == null) {
                    Intrinsics.y("upgradeData");
                    upgradeData5 = null;
                }
                textView4.setText(upgradeData5.getUpgradeMessage());
            }
            TextView textView5 = this.f72404f;
            if (textView5 != null) {
                UpgradeData upgradeData6 = this.f72406h;
                if (upgradeData6 == null) {
                    Intrinsics.y("upgradeData");
                } else {
                    upgradeData2 = upgradeData6;
                }
                Context context = textView5.getContext();
                Intrinsics.g(context, "getContext(...)");
                textView5.setText(upgradeData2.getCancelButtonText(context));
            }
            TextView textView6 = this.f72403e;
            if (textView6 != null) {
                textView6.setMovementMethod(new ScrollingMovementMethod());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            dismiss();
        }
        g();
    }

    public final void g() {
        TextView textView = this.f72404f;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    i.c(this.f72396a, view);
                }
            });
        }
        TextView textView2 = this.f72405g;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    i.f(this.f72397a, view);
                }
            });
        }
    }

    @Override
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.h(inflater, "inflater");
        View viewInflate = inflater.inflate(((Number) this.f72411m.getValue()).intValue() == 1 ? R$layout.upgradesdk_layout_dialog_os16 : R$layout.upgradesdk_layout_dialog_os15, viewGroup, false);
        try {
            UpgradeData upgradeData = qu.f.f70259o.a().f70262b;
            Intrinsics.e(upgradeData);
            this.f72406h = upgradeData;
            if (upgradeData == null) {
                Intrinsics.y("upgradeData");
                upgradeData = null;
            }
            this.f72407i = upgradeData.isForceUpdate() ? 2 : 1;
            Intrinsics.e(viewInflate);
            b(viewInflate);
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
        if (fVarA.f70270j == this) {
            fVarA.f70270j = null;
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
        if (context2 == null || ((Boolean) this.f72410l.getValue()).booleanValue()) {
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
                    return i.d(this.f72398a, dialogInterface, i10, keyEvent);
                }
            });
        }
        Integer num = (Integer) this.f72408j.getValue();
        if (num != null) {
            int iIntValue = num.intValue();
            TextView textView = this.f72404f;
            if (textView != null) {
                textView.setTextColor(iIntValue);
            }
        }
        Integer num2 = (Integer) this.f72409k.getValue();
        if (num2 != null) {
            int iIntValue2 = num2.intValue();
            TextView textView2 = this.f72405g;
            if (textView2 != null) {
                textView2.setTextColor(iIntValue2);
            }
        }
        l.d(this.f72407i, ((Boolean) this.f72410l.getValue()).booleanValue(), com.transsion.upgradesdk.bean.c.DEFAULT);
        UpgradeDialogCallback upgradeDialogCallback = qu.f.f70259o.a().f70267g;
        if (upgradeDialogCallback != null) {
            upgradeDialogCallback.onDialogShow();
        }
    }
}
