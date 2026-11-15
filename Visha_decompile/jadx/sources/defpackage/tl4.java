package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class tl4 extends PopupWindow {
    public final boolean a;
    public View b;
    public int c;
    public int d;
    public a e;
    public TranCircleImageView f;
    public TextView g;
    public TextView h;
    public ImageView i;

    public interface a {
        void a();

        void onClick(View view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tl4(final Context context, final AdsDTO adsDTO, boolean z) {
        super(context);
        y45.j(context, "context");
        this.a = z;
        View view = null;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_hs_popupwindow_confirm, (ViewGroup) null);
        y45.i(viewInflate, "inflate(...)");
        this.b = viewInflate;
        if (viewInflate == null) {
            y45.B("popupView");
            viewInflate = null;
        }
        setContentView(viewInflate);
        setFocusable(true);
        setOutsideTouchable(true);
        setBackgroundDrawable(new ColorDrawable(0));
        g();
        setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public final void onDismiss() {
                tl4.d(this.b, context);
            }
        });
        View view2 = this.b;
        if (view2 == null) {
            y45.B("popupView");
            view2 = null;
        }
        this.f = (TranCircleImageView) view2.findViewById(R.id.iv_pop_logo);
        View view3 = this.b;
        if (view3 == null) {
            y45.B("popupView");
            view3 = null;
        }
        this.g = (TextView) view3.findViewById(R.id.tv_pop_name);
        View view4 = this.b;
        if (view4 == null) {
            y45.B("popupView");
            view4 = null;
        }
        this.h = (TextView) view4.findViewById(R.id.tv_pop_size);
        View view5 = this.b;
        if (view5 == null) {
            y45.B("popupView");
            view5 = null;
        }
        this.i = (ImageView) view5.findViewById(R.id.iv_pop_close);
        View view6 = this.b;
        if (view6 == null) {
            y45.B("popupView");
        } else {
            view = view6;
        }
        TextView textView = (TextView) view.findViewById(R.id.btn_pop_confirm);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view7) {
                    tl4.e(adsDTO, this, view7);
                }
            });
        }
        ImageView imageView = this.i;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view7) {
                    tl4.f(this.b, view7);
                }
            });
        }
    }

    public static final void d(tl4 tl4Var, Context context) {
        y45.j(tl4Var, "this$0");
        y45.j(context, "$context");
        a aVar = tl4Var.e;
        if (aVar != null) {
            aVar.a();
        }
        if (Build.VERSION.SDK_INT <= 30 || !tl4Var.a) {
            return;
        }
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            tl4Var.i(activity, 1.0f);
        }
    }

    public static final void e(AdsDTO adsDTO, tl4 tl4Var, View view) {
        y45.j(tl4Var, "this$0");
        AthenaTracker.f0(adsDTO, false);
        a aVar = tl4Var.e;
        if (aVar != null) {
            aVar.onClick(view);
        }
    }

    public static final void f(tl4 tl4Var, View view) {
        y45.j(tl4Var, "this$0");
        try {
            tl4Var.dismiss();
        } catch (Throwable unused) {
        }
    }

    public final void g() {
        getContentView().measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        this.c = getContentView().getMeasuredWidth();
        this.d = getContentView().getMeasuredHeight();
    }

    public final void h(a aVar) {
        y45.j(aVar, "popwindowEventListener");
        this.e = aVar;
    }

    public final void i(Activity activity, float f) {
        y45.j(activity, "activity");
        try {
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = f;
            window.setAttributes(attributes);
        } catch (Throwable unused) {
        }
    }

    public final void j(Context context, AdsDTO adsDTO, View view, int i, int i2) {
        y45.j(context, "context");
        y45.j(view, "anchor");
        try {
            if (isShowing()) {
                return;
            }
            AthenaTracker.g0(adsDTO);
            if (this.c == 0) {
                g();
            }
            try {
                if (Build.VERSION.SDK_INT > 30 && this.a) {
                    Activity activity = context instanceof Activity ? (Activity) context : null;
                    if (activity != null) {
                        i(activity, 0.5f);
                    }
                }
            } catch (Throwable unused) {
            }
            showAtLocation(view, 0, i - (this.c / 2), i2 - this.d);
        } catch (Throwable unused2) {
        }
    }

    public final void k(AdsDTO adsDTO) {
        NativeBean nativeObject;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            String logoUrl = (adsDTO == null || (nativeObject = adsDTO.getNativeObject()) == null) ? null : nativeObject.getLogoUrl();
            if (logoUrl == null) {
                logoUrl = "";
            }
            DownLoadRequest.o(logoUrl, adsDTO, 1, null, this.f);
        } else {
            DownLoadRequest.n(adsDTO.getLogoUrl(), adsDTO, null, this.f);
        }
        if (adsDTO != null) {
            try {
                TextView textView = this.g;
                if (textView != null) {
                    NativeBean nativeObject2 = adsDTO.getNativeObject();
                    textView.setText(nativeObject2 != null ? nativeObject2.getTitleTxt() : null);
                }
                TextView textView2 = this.h;
                if (textView2 == null) {
                    return;
                }
                HSCommonUtils hSCommonUtils = HSCommonUtils.a;
                PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
                textView2.setText(hSCommonUtils.j(pslinkInfo != null ? pslinkInfo.getSourceSize() : null));
            } catch (Throwable unused) {
            }
        }
    }

    public tl4(Context context, AdsDTO adsDTO, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, adsDTO, (i & 4) != 0 ? true : z);
    }
}
