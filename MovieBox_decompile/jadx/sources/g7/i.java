package g7;

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
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.util.r;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class i extends PopupWindow {

    private final boolean f60702a;

    private View f60703b;

    private int f60704c;

    private int f60705d;

    private a f60706e;

    private TranCircleImageView f60707f;

    private TextView f60708g;

    private TextView f60709h;

    private ImageView f60710i;

    public interface a {
        void a();

        void onClick(View view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(final Context context, final AdsDTO adsDTO, boolean z10) {
        super(context);
        Intrinsics.h(context, "context");
        this.f60702a = z10;
        View view = null;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_hs_popupwindow_confirm, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        this.f60703b = viewInflate;
        if (viewInflate == null) {
            Intrinsics.y("popupView");
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
                i.d(this.f60697a, context);
            }
        });
        View view2 = this.f60703b;
        if (view2 == null) {
            Intrinsics.y("popupView");
            view2 = null;
        }
        this.f60707f = (TranCircleImageView) view2.findViewById(R$id.iv_pop_logo);
        View view3 = this.f60703b;
        if (view3 == null) {
            Intrinsics.y("popupView");
            view3 = null;
        }
        this.f60708g = (TextView) view3.findViewById(R$id.tv_pop_name);
        View view4 = this.f60703b;
        if (view4 == null) {
            Intrinsics.y("popupView");
            view4 = null;
        }
        this.f60709h = (TextView) view4.findViewById(R$id.tv_pop_size);
        View view5 = this.f60703b;
        if (view5 == null) {
            Intrinsics.y("popupView");
            view5 = null;
        }
        this.f60710i = (ImageView) view5.findViewById(R$id.iv_pop_close);
        View view6 = this.f60703b;
        if (view6 == null) {
            Intrinsics.y("popupView");
        } else {
            view = view6;
        }
        TextView textView = (TextView) view.findViewById(R$id.btn_pop_confirm);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view7) {
                    i.e(adsDTO, this, view7);
                }
            });
        }
        ImageView imageView = this.f60710i;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view7) {
                    i.f(this.f60701a, view7);
                }
            });
        }
    }

    public static final void d(i this$0, Context context) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(context, "$context");
        a aVar = this$0.f60706e;
        if (aVar != null) {
            aVar.a();
        }
        if (Build.VERSION.SDK_INT <= 30 || !this$0.f60702a) {
            return;
        }
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            this$0.i(activity, 1.0f);
        }
    }

    public static final void e(AdsDTO adsDTO, i this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        AthenaTracker.Z(adsDTO, false);
        a aVar = this$0.f60706e;
        if (aVar != null) {
            aVar.onClick(view);
        }
    }

    public static final void f(i this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        try {
            this$0.dismiss();
        } catch (Throwable unused) {
        }
    }

    private final void g() {
        getContentView().measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        this.f60704c = getContentView().getMeasuredWidth();
        this.f60705d = getContentView().getMeasuredHeight();
    }

    public final void h(a popwindowEventListener) {
        Intrinsics.h(popwindowEventListener, "popwindowEventListener");
        this.f60706e = popwindowEventListener;
    }

    public final void i(Activity activity, float f10) {
        Intrinsics.h(activity, "activity");
        try {
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = f10;
            window.setAttributes(attributes);
        } catch (Throwable unused) {
        }
    }

    public final void j(Context context, AdsDTO adsDTO, View anchor, int i10, int i11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(anchor, "anchor");
        try {
            if (isShowing()) {
                return;
            }
            AthenaTracker.a0(adsDTO);
            if (this.f60704c == 0) {
                g();
            }
            try {
                if (Build.VERSION.SDK_INT > 30 && this.f60702a) {
                    Activity activity = context instanceof Activity ? (Activity) context : null;
                    if (activity != null) {
                        i(activity, 0.5f);
                    }
                }
            } catch (Throwable unused) {
            }
            showAtLocation(anchor, 0, i10 - (this.f60704c / 2), i11 - this.f60705d);
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
            DownLoadRequest.o(logoUrl, adsDTO, 1, null, this.f60707f);
        } else {
            DownLoadRequest.n(adsDTO.getLogoUrl(), adsDTO, null, this.f60707f);
        }
        if (adsDTO != null) {
            try {
                TextView textView = this.f60708g;
                if (textView != null) {
                    NativeBean nativeObject2 = adsDTO.getNativeObject();
                    textView.setText(nativeObject2 != null ? nativeObject2.getTitleTxt() : null);
                }
                TextView textView2 = this.f60709h;
                if (textView2 == null) {
                    return;
                }
                r rVar = r.f21605a;
                PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
                textView2.setText(rVar.h(pslinkInfo != null ? pslinkInfo.getSourceSize() : null));
            } catch (Throwable unused) {
            }
        }
    }

    public i(Context context, AdsDTO adsDTO, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, adsDTO, (i10 & 4) != 0 ? true : z10);
    }
}
