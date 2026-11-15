package g7;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.R$style;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.util.r;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d extends Dialog {

    public static final a f60678l = new a(null);

    private Function0 f60679a;

    private final TextView f60680b;

    private final TextView f60681c;

    private final TextView f60682d;

    private final TextView f60683e;

    private final ImageView f60684f;

    private final ImageView f60685g;

    private String f60686h;

    private e f60687i;

    private int f60688j;

    private AdsDTO f60689k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends e {

        final d f60690f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j10, d dVar) {
            super(j10, 1000L);
            this.f60690f = dVar;
        }

        @Override
        public void e() {
            this.f60690f.k(true);
        }

        @Override
        public void f(long j10) {
            d dVar = this.f60690f;
            try {
                Result.Companion companion = Result.INSTANCE;
                int i10 = (int) ((j10 + ((long) DescriptorProtos$Edition.EDITION_PROTO3_VALUE)) / ((long) 1000));
                if (dVar.f60682d != null) {
                    dVar.f60682d.setText(dVar.f60686h + " (" + i10 + "s)");
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context, Function0 function0) {
        super(context, R$style.HSDialogTheme);
        Intrinsics.h(context, "context");
        this.f60679a = function0;
        this.f60686h = "";
        setCancelable(false);
        setOnKeyListener(new DialogInterface.OnKeyListener() {
            @Override
            public final boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                return d.d(this.f60675a, dialogInterface, i10, keyEvent);
            }
        });
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.hs_ad_bubble_popup_layout, (ViewGroup) null);
        setContentView(viewInflate);
        View viewFindViewById = viewInflate.findViewById(R$id.tv_app_name);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.f60680b = (TextView) viewFindViewById;
        View viewFindViewById2 = viewInflate.findViewById(R$id.tv_app_size);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.f60681c = (TextView) viewFindViewById2;
        View viewFindViewById3 = viewInflate.findViewById(R$id.tv_cta);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        TextView textView = (TextView) viewFindViewById3;
        this.f60682d = textView;
        View viewFindViewById4 = viewInflate.findViewById(R$id.tv_auto_start);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.f60683e = (TextView) viewFindViewById4;
        View viewFindViewById5 = viewInflate.findViewById(R$id.iv_close);
        Intrinsics.g(viewFindViewById5, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById5;
        this.f60684f = imageView;
        View viewFindViewById6 = viewInflate.findViewById(R$id.iv_icon);
        Intrinsics.g(viewFindViewById6, "findViewById(...)");
        this.f60685g = (ImageView) viewFindViewById6;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                d.e(this.f60676a, view);
            }
        });
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                d.f(this.f60677a, view);
            }
        });
    }

    public static final boolean d(d this$0, DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        Intrinsics.h(this$0, "this$0");
        if (i10 != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        this$0.dismiss();
        return true;
    }

    public static final void e(d this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.dismiss();
    }

    public static final void f(d this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.k(false);
    }

    private final void j() {
        try {
            Result.Companion companion = Result.INSTANCE;
            e eVar = this.f60687i;
            if (eVar != null) {
                eVar.d();
            }
            this.f60687i = null;
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void k(boolean z10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            j();
            Function0 function0 = this.f60679a;
            if (function0 != null) {
                function0.invoke();
            }
            AthenaTracker.Z(this.f60689k, z10);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void r() {
        j();
        this.f60687i = new b(((long) this.f60688j) * 1000, this).g();
    }

    @Override
    public void dismiss() {
        try {
            j();
            super.dismiss();
        } catch (Throwable th2) {
            b4.b().w("AdBubblePopupDialog", "hide failed: " + th2.getMessage());
        }
    }

    public final boolean l() {
        return isShowing();
    }

    public final void m(AdsDTO adsDTO) {
        Object objM453constructorimpl;
        PslinkInfo pslinkInfo;
        NativeBean nativeObject;
        this.f60689k = adsDTO;
        String sourceSize = null;
        String titleTxt = (adsDTO == null || (nativeObject = adsDTO.getNativeObject()) == null) ? null : nativeObject.getTitleTxt();
        if (titleTxt != null && titleTxt.length() != 0) {
            this.f60680b.setText(titleTxt);
        }
        n(adsDTO);
        r rVar = r.f21605a;
        AdsDTO adsDTO2 = this.f60689k;
        if (adsDTO2 != null && (pslinkInfo = adsDTO2.getPslinkInfo()) != null) {
            sourceSize = pslinkInfo.getSourceSize();
        }
        o(rVar.h(sourceSize));
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(getContext().getString(R$string.hs_bubble_install_btn));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = "Install it";
        }
        Intrinsics.g(objM453constructorimpl, "getOrDefault(...)");
        q((String) objM453constructorimpl);
        int autoRetentionTime = adsDTO != null ? adsDTO.getAutoRetentionTime() : 0;
        p(autoRetentionTime);
        if (autoRetentionTime > 0) {
            this.f60683e.setVisibility(0);
            this.f60683e.setText(getContext().getString(R$string.ad_bubble_auto_start, Integer.valueOf(autoRetentionTime)));
            return;
        }
        try {
            String string = getContext().getString(R$string.install);
            Intrinsics.g(string, "getString(...)");
            q(string);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th3));
        }
        this.f60683e.setVisibility(8);
    }

    public final void n(AdsDTO adsDTO) {
        NativeBean nativeObject;
        if (adsDTO != null && adsDTO.getSource() == 4) {
            DownLoadRequest.n(adsDTO.getLogoUrl(), adsDTO, null, this.f60685g);
            return;
        }
        String logoUrl = (adsDTO == null || (nativeObject = adsDTO.getNativeObject()) == null) ? null : nativeObject.getLogoUrl();
        if (logoUrl == null) {
            logoUrl = "";
        }
        DownLoadRequest.o(logoUrl, adsDTO, 1, null, this.f60685g);
    }

    public final void o(String size) {
        Intrinsics.h(size, "size");
        if (size.length() <= 0) {
            this.f60681c.setVisibility(8);
        } else {
            this.f60681c.setText(size);
            this.f60681c.setVisibility(0);
        }
    }

    public final void p(int i10) {
        this.f60688j = i10;
    }

    public final void q(String text) {
        Intrinsics.h(text, "text");
        this.f60686h = text;
        this.f60682d.setText(text);
    }

    @Override
    public void show() {
        try {
            super.show();
            AthenaTracker.a0(this.f60689k);
            if (this.f60688j > 0) {
                r();
            }
        } catch (Throwable th2) {
            b4.b().w("AdBubblePopupDialog", "show failed: " + th2.getMessage());
        }
    }
}
