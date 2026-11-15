package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.transsion.dbdata.beans.media.PlayAudioData;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class u5 extends Dialog {
    public static final a m = new a(null);
    public c74 b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public final TextView f;
    public final ImageView g;
    public final ImageView h;
    public String i;
    public qk1 j;
    public int k;
    public AdsDTO l;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b extends qk1 {
        public final u5 f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j, u5 u5Var) {
            super(j, 1000L);
            this.f = u5Var;
        }

        @Override
        public void e() {
            this.f.k(true);
        }

        @Override
        public void f(long j) {
            u5 u5Var = this.f;
            try {
                Result.Companion companion = Result.INSTANCE;
                int i = (int) ((j + ((long) 999)) / ((long) 1000));
                if (u5Var.e != null) {
                    u5Var.e.setText(u5Var.i + " (" + i + "s)");
                }
                Result.m279constructorimpl(zfb.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m279constructorimpl(c.a(th));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u5(Context context, c74 c74Var) {
        super(context, R.style.HSDialogTheme);
        y45.j(context, "context");
        this.b = c74Var;
        this.i = "";
        setCancelable(false);
        setOnKeyListener(new DialogInterface.OnKeyListener() {
            @Override
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return u5.d(this.b, dialogInterface, i, keyEvent);
            }
        });
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.hs_ad_bubble_popup_layout, (ViewGroup) null);
        setContentView(viewInflate);
        View viewFindViewById = viewInflate.findViewById(R.id.tv_app_name);
        y45.i(viewFindViewById, "findViewById(...)");
        this.c = (TextView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R.id.tv_app_size);
        y45.i(viewFindViewById2, "findViewById(...)");
        this.d = (TextView) viewFindViewById2;
        View viewFindViewById3 = viewInflate.findViewById(R.id.tv_cta);
        y45.i(viewFindViewById3, "findViewById(...)");
        TextView textView = (TextView) viewFindViewById3;
        this.e = textView;
        View viewFindViewById4 = viewInflate.findViewById(R.id.tv_auto_start);
        y45.i(viewFindViewById4, "findViewById(...)");
        this.f = (TextView) viewFindViewById4;
        View viewFindViewById5 = viewInflate.findViewById(R.id.iv_close);
        y45.i(viewFindViewById5, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById5;
        this.g = imageView;
        View viewFindViewById6 = viewInflate.findViewById(R.id.iv_icon);
        y45.i(viewFindViewById6, "findViewById(...)");
        this.h = (ImageView) viewFindViewById6;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                u5.e(this.b, view);
            }
        });
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                u5.f(this.b, view);
            }
        });
    }

    public static final boolean d(u5 u5Var, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        y45.j(u5Var, "this$0");
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        u5Var.dismiss();
        return true;
    }

    public static final void e(u5 u5Var, View view) {
        y45.j(u5Var, "this$0");
        u5Var.dismiss();
    }

    public static final void f(u5 u5Var, View view) {
        y45.j(u5Var, "this$0");
        u5Var.k(false);
    }

    @Override
    public void dismiss() {
        try {
            j();
            super.dismiss();
        } catch (Throwable th) {
            ikd.b().w("AdBubblePopupDialog", "hide failed: " + th.getMessage());
        }
    }

    public final void j() {
        try {
            Result.Companion companion = Result.INSTANCE;
            qk1 qk1Var = this.j;
            if (qk1Var != null) {
                qk1Var.d();
            }
            this.j = null;
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(c.a(th));
        }
    }

    public final void k(boolean z) {
        try {
            Result.Companion companion = Result.INSTANCE;
            j();
            c74 c74Var = this.b;
            if (c74Var != null) {
                c74Var.invoke();
            }
            AthenaTracker.f0(this.l, z);
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(c.a(th));
        }
    }

    public final boolean l() {
        return isShowing();
    }

    public final void m(AdsDTO adsDTO) {
        Object objM279constructorimpl;
        PslinkInfo pslinkInfo;
        NativeBean nativeObject;
        this.l = adsDTO;
        String sourceSize = null;
        String titleTxt = (adsDTO == null || (nativeObject = adsDTO.getNativeObject()) == null) ? null : nativeObject.getTitleTxt();
        if (titleTxt != null && titleTxt.length() != 0) {
            this.c.setText(titleTxt);
        }
        n(adsDTO);
        HSCommonUtils hSCommonUtils = HSCommonUtils.a;
        AdsDTO adsDTO2 = this.l;
        if (adsDTO2 != null && (pslinkInfo = adsDTO2.getPslinkInfo()) != null) {
            sourceSize = pslinkInfo.getSourceSize();
        }
        o(hSCommonUtils.j(sourceSize));
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(getContext().getString(R.string.hs_bubble_install_btn));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = "Install it";
        }
        y45.i(objM279constructorimpl, "getOrDefault(...)");
        q((String) objM279constructorimpl);
        int autoRetentionTime = adsDTO != null ? adsDTO.getAutoRetentionTime() : 0;
        p(autoRetentionTime);
        if (autoRetentionTime > 0) {
            this.f.setVisibility(0);
            this.f.setText(getContext().getString(R.string.ad_bubble_auto_start, Integer.valueOf(autoRetentionTime)));
            return;
        }
        try {
            String string = getContext().getString(R.string.install);
            y45.i(string, "getString(...)");
            q(string);
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m279constructorimpl(c.a(th2));
        }
        this.f.setVisibility(8);
    }

    public final void n(AdsDTO adsDTO) {
        NativeBean nativeObject;
        if (adsDTO != null && adsDTO.getSource() == 4) {
            DownLoadRequest.n(adsDTO.getLogoUrl(), adsDTO, null, this.h);
            return;
        }
        String logoUrl = (adsDTO == null || (nativeObject = adsDTO.getNativeObject()) == null) ? null : nativeObject.getLogoUrl();
        if (logoUrl == null) {
            logoUrl = "";
        }
        DownLoadRequest.o(logoUrl, adsDTO, 1, null, this.h);
    }

    public final void o(String str) {
        y45.j(str, PlayAudioData.TAG_SIZE);
        if (str.length() <= 0) {
            this.d.setVisibility(8);
        } else {
            this.d.setText(str);
            this.d.setVisibility(0);
        }
    }

    public final void p(int i) {
        this.k = i;
    }

    public final void q(String str) {
        y45.j(str, "text");
        this.i = str;
        this.e.setText(str);
    }

    public final void r() {
        j();
        this.j = new b(((long) this.k) * 1000, this).g();
    }

    @Override
    public void show() {
        try {
            super.show();
            AthenaTracker.g0(this.l);
            if (this.k > 0) {
                r();
            }
        } catch (Throwable th) {
            ikd.b().w("AdBubblePopupDialog", "show failed: " + th.getMessage());
        }
    }
}
