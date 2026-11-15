package com.transsion.usercenter.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.R$mipmap;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.profile.bean.CoverUrl;
import com.transsion.usercenter.widget.MyRoomView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import lj.a;
import ni.f;
import uf.c;
import xu.b1;
import zg.h;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 >2\u00020\u0001:\u00028;B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJI\u0010\u0016\u001a\u00020\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J+\u0010\u001a\u001a\u00020\r2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010 \u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b \u0010!J\r\u0010\"\u001a\u00020\r¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\r2\b\b\u0001\u0010$\u001a\u00020\u0006¢\u0006\u0004\b%\u0010&J~\u0010/\u001a\u00020\r2\u0006\u0010'\u001a\u00020\u00062\b\b\u0002\u0010)\u001a\u00020(2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00102!\u0010.\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020\r0*¢\u0006\u0004\b/\u00100Ji\u00103\u001a\u00020\r2\u0006\u0010'\u001a\u00020\u00062\b\b\u0002\u0010)\u001a\u00020(2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u0001012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u0001012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u0001012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u0001012\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\r02¢\u0006\u0004\b3\u00104JM\u00105\u001a\u00020\r2\u0006\u0010'\u001a\u00020\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u001f2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\r02¢\u0006\u0004\b5\u00106R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010=\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006?"}, d2 = {"Lcom/transsion/usercenter/widget/MyRoomView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", RewardPlus.AMOUNT, "", "n", "(Ljava/lang/Integer;)V", "", "ivUrl1", "ivUrl2", "ivUrl3", "ivUrl4", "placeHolder", TtmlNode.TAG_P, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "Landroid/widget/ImageView;", "imageView", "m", "(Landroid/widget/ImageView;Ljava/lang/String;I)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "l", "(I)I", "Lcom/transsion/usercenter/widget/MyRoomView$b;", CampaignEx.JSON_KEY_AD_R, "(Lcom/transsion/usercenter/widget/MyRoomView$b;Lcom/transsion/usercenter/widget/MyRoomView$b;Lcom/transsion/usercenter/widget/MyRoomView$b;)V", "resetUserUi", "()V", "titleId", "setTitle", "(I)V", "layoutType", "", "isSelf", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "clickType", "itemClick", "showMyRoomData", "(IZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "Lcom/transsion/usercenter/profile/bean/CoverUrl;", "Lkotlin/Function0;", "showCollectionData", "(IZLjava/lang/Integer;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lkotlin/jvm/functions/Function0;)V", "showDownloadsData", "(ILjava/lang/Integer;Lcom/transsion/usercenter/widget/MyRoomView$b;Lcom/transsion/usercenter/widget/MyRoomView$b;Lcom/transsion/usercenter/widget/MyRoomView$b;Lkotlin/jvm/functions/Function0;)V", "Lxu/b1;", "a", "Lxu/b1;", "mViewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "mLayoutType", "Companion", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MyRoomView extends ConstraintLayout {
    public static final int LAYOUT_TYPE_DOWNLOADS = 2;
    public static final int LAYOUT_TYPE_MY_ROOM = 1;
    public static final int LAYOUT_TYPE_WATCHER_LATER = 3;
    public static final int ON_CLICK_TYPE_BTN = 5;
    public static final int ON_CLICK_TYPE_ITEM = 4;

    private b1 mViewBinding;

    private int mLayoutType;

    public static final class b {

        private String f55346a;

        private int f55347b;

        public b(String str, int i10) {
            this.f55346a = str;
            this.f55347b = i10;
        }

        public final int a() {
            return this.f55347b;
        }

        public final String b() {
            return this.f55346a;
        }

        public final void c(String str) {
            this.f55346a = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f55346a, bVar.f55346a) && this.f55347b == bVar.f55347b;
        }

        public int hashCode() {
            String str = this.f55346a;
            return ((str == null ? 0 : str.hashCode()) * 31) + this.f55347b;
        }

        public String toString() {
            return "MyViewDownloads(url=" + this.f55346a + ", type=" + this.f55347b + ")";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyRoomView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.mLayoutType = 1;
        View.inflate(context, R$layout.view_my_room_layout, this);
        this.mViewBinding = b1.a(this);
    }

    private final int l(int type) {
        if (type != 1) {
            return type != 2 ? R$drawable.profile_shape_dotted_line_img : R$mipmap.ic_default_video;
        }
        return R$mipmap.default_audio_ic_9_16;
    }

    private final void m(ImageView imageView, String ivUrl3, int placeHolder) {
        if (imageView != null) {
            f.a aVar = f.f67269a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            f.b bVarM = aVar.m(context);
            if (ivUrl3 == null) {
                ivUrl3 = "";
            }
            f.b bVarI = bVarM.g(ivUrl3).i(placeHolder);
            h hVar = h.f76787a;
            Context context2 = imageView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            f.b bVarM2 = bVarI.m(hVar.a(context2, 26.0f));
            Context context3 = imageView.getContext();
            Intrinsics.g(context3, "getContext(...)");
            bVarM2.c(hVar.a(context3, 26.0f)).d(imageView);
        }
    }

    private final void n(Integer amount) {
        AppCompatTextView appCompatTextView;
        b1 b1Var = this.mViewBinding;
        if (b1Var == null || (appCompatTextView = b1Var.f75513i) == null) {
            return;
        }
        appCompatTextView.setText(com.transsion.baseui.util.h.f42343a.a(String.valueOf(amount)));
    }

    public static final void o(Function0 function0, View view) {
        function0.invoke();
    }

    private final void p(String ivUrl1, String ivUrl2, String ivUrl3, String ivUrl4, int placeHolder) {
        b1 b1Var = this.mViewBinding;
        m(b1Var != null ? b1Var.f75509e : null, ivUrl1, placeHolder);
        b1 b1Var2 = this.mViewBinding;
        m(b1Var2 != null ? b1Var2.f75510f : null, ivUrl2, placeHolder);
        b1 b1Var3 = this.mViewBinding;
        m(b1Var3 != null ? b1Var3.f75511g : null, ivUrl3, placeHolder);
        b1 b1Var4 = this.mViewBinding;
        m(b1Var4 != null ? b1Var4.f75512h : null, ivUrl4, placeHolder);
    }

    static void q(MyRoomView myRoomView, String str, String str2, String str3, String str4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "";
        }
        if ((i11 & 2) != 0) {
            str2 = "";
        }
        if ((i11 & 4) != 0) {
            str3 = "";
        }
        if ((i11 & 8) != 0) {
            str4 = "";
        }
        if ((i11 & 16) != 0) {
            i10 = R$drawable.profile_shape_dotted_line_img;
        }
        myRoomView.p(str, str2, str3, str4, i10);
    }

    private final void r(b ivUrl1, b ivUrl2, b ivUrl3) {
        ShapeableImageView shapeableImageView;
        String strB;
        ShapeableImageView shapeableImageView2;
        String strB2;
        ShapeableImageView shapeableImageView3;
        String strB3;
        b1 b1Var = this.mViewBinding;
        String str = "ivUrl1?.url";
        if (b1Var != null && (shapeableImageView3 = b1Var.f75509e) != null) {
            if (TextUtils.isEmpty(ivUrl1 != null ? ivUrl1.b() : null) && ivUrl1 != null) {
                ivUrl1.c("ivUrl1.url");
            }
            f.a aVar = f.f67269a;
            Context context = shapeableImageView3.getContext();
            Intrinsics.g(context, "getContext(...)");
            f.b bVarM = aVar.m(context);
            if (ivUrl1 == null || (strB3 = ivUrl1.b()) == null) {
                strB3 = "ivUrl1?.url";
            }
            f.b bVarI = bVarM.g(strB3).i(l(ivUrl1 != null ? ivUrl1.a() : 3));
            h hVar = h.f76787a;
            Context context2 = shapeableImageView3.getContext();
            Intrinsics.g(context2, "getContext(...)");
            f.b bVarM2 = bVarI.m(hVar.a(context2, 26.0f));
            Context context3 = shapeableImageView3.getContext();
            Intrinsics.g(context3, "getContext(...)");
            bVarM2.c(hVar.a(context3, 26.0f)).d(shapeableImageView3);
        }
        b1 b1Var2 = this.mViewBinding;
        if (b1Var2 != null && (shapeableImageView2 = b1Var2.f75510f) != null) {
            if (TextUtils.isEmpty(ivUrl2 != null ? ivUrl2.b() : null) && ivUrl2 != null) {
                ivUrl2.c("ivUrl2.url");
            }
            f.a aVar2 = f.f67269a;
            Context context4 = shapeableImageView2.getContext();
            Intrinsics.g(context4, "getContext(...)");
            f.b bVarM3 = aVar2.m(context4);
            if (ivUrl2 == null || (strB2 = ivUrl2.b()) == null) {
                strB2 = "ivUrl1?.url";
            }
            f.b bVarI2 = bVarM3.g(strB2).i(l(ivUrl2 != null ? ivUrl2.a() : 3));
            h hVar2 = h.f76787a;
            Context context5 = shapeableImageView2.getContext();
            Intrinsics.g(context5, "getContext(...)");
            f.b bVarM4 = bVarI2.m(hVar2.a(context5, 26.0f));
            Context context6 = shapeableImageView2.getContext();
            Intrinsics.g(context6, "getContext(...)");
            bVarM4.c(hVar2.a(context6, 26.0f)).d(shapeableImageView2);
        }
        b1 b1Var3 = this.mViewBinding;
        if (b1Var3 == null || (shapeableImageView = b1Var3.f75511g) == null) {
            return;
        }
        if (TextUtils.isEmpty(ivUrl3 != null ? ivUrl3.b() : null) && ivUrl3 != null) {
            ivUrl3.c("ivUrl3.url");
        }
        f.a aVar3 = f.f67269a;
        Context context7 = shapeableImageView.getContext();
        Intrinsics.g(context7, "getContext(...)");
        f.b bVarM5 = aVar3.m(context7);
        if (ivUrl3 != null && (strB = ivUrl3.b()) != null) {
            str = strB;
        }
        f.b bVarI3 = bVarM5.g(str).i(l(ivUrl3 != null ? ivUrl3.a() : 3));
        h hVar3 = h.f76787a;
        Context context8 = shapeableImageView.getContext();
        Intrinsics.g(context8, "getContext(...)");
        f.b bVarM6 = bVarI3.m(hVar3.a(context8, 26.0f));
        Context context9 = shapeableImageView.getContext();
        Intrinsics.g(context9, "getContext(...)");
        bVarM6.c(hVar3.a(context9, 26.0f)).d(shapeableImageView);
    }

    public static final void s(Function0 function0, View view) {
        function0.invoke();
    }

    public static void showDownloadsData$default(MyRoomView myRoomView, int i10, Integer num, b bVar, b bVar2, b bVar3, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            num = 0;
        }
        myRoomView.showDownloadsData(i10, num, bVar, bVar2, bVar3, function0);
    }

    public static final void t(Function1 function1, View view) {
        function1.invoke(4);
    }

    public static final void u(Function1 function1, View view) {
        function1.invoke(5);
    }

    public final void resetUserUi() {
        TnTextView tnTextView;
        TnTextView tnTextView2;
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        ShapeableImageView shapeableImageView3;
        ShapeableImageView shapeableImageView4;
        TnTextView tnTextView3;
        ShapeableImageView shapeableImageView5;
        b1 b1Var = this.mViewBinding;
        if (b1Var != null && (shapeableImageView5 = b1Var.f75512h) != null) {
            c.k(shapeableImageView5);
        }
        b1 b1Var2 = this.mViewBinding;
        ViewGroup.LayoutParams layoutParams = null;
        ViewParent parent = (b1Var2 == null || (tnTextView3 = b1Var2.f75514j) == null) ? null : tnTextView3.getParent();
        ConstraintLayout constraintLayout = parent instanceof ConstraintLayout ? (ConstraintLayout) parent : null;
        if (constraintLayout != null) {
            ViewGroup.LayoutParams layoutParams2 = constraintLayout.getLayoutParams();
            Intrinsics.f(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            layoutParams2.width = a.b(162);
            constraintLayout.setLayoutParams(layoutParams2);
        }
        b1 b1Var3 = this.mViewBinding;
        ViewGroup.LayoutParams layoutParams3 = (b1Var3 == null || (shapeableImageView4 = b1Var3.f75512h) == null) ? null : shapeableImageView4.getLayoutParams();
        Intrinsics.f(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams3;
        bVar.setMarginEnd(a.b(32));
        b1 b1Var4 = this.mViewBinding;
        if (b1Var4 != null && (shapeableImageView3 = b1Var4.f75512h) != null) {
            shapeableImageView3.setLayoutParams(bVar);
        }
        b1 b1Var5 = this.mViewBinding;
        ViewGroup.LayoutParams layoutParams4 = (b1Var5 == null || (appCompatTextView2 = b1Var5.f75513i) == null) ? null : appCompatTextView2.getLayoutParams();
        Intrinsics.f(layoutParams4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams4;
        bVar2.f7391t = -1;
        bVar2.f7371j = -1;
        int i10 = R$id.ivPlaceholder4;
        bVar2.f7389s = i10;
        bVar2.f7369i = i10;
        bVar2.f7375l = i10;
        bVar2.f7395v = 0;
        ((ViewGroup.MarginLayoutParams) bVar2).topMargin = 0;
        b1 b1Var6 = this.mViewBinding;
        if (b1Var6 != null && (appCompatTextView = b1Var6.f75513i) != null) {
            appCompatTextView.setLayoutParams(bVar2);
        }
        b1 b1Var7 = this.mViewBinding;
        ViewGroup.LayoutParams layoutParams5 = (b1Var7 == null || (shapeableImageView2 = b1Var7.f75509e) == null) ? null : shapeableImageView2.getLayoutParams();
        Intrinsics.f(layoutParams5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams5;
        bVar3.f7371j = R$id.tvTitle;
        ((ViewGroup.MarginLayoutParams) bVar3).topMargin = a.b(12);
        b1 b1Var8 = this.mViewBinding;
        if (b1Var8 != null && (shapeableImageView = b1Var8.f75509e) != null) {
            shapeableImageView.setLayoutParams(bVar3);
        }
        b1 b1Var9 = this.mViewBinding;
        if (b1Var9 != null && (tnTextView2 = b1Var9.f75506b) != null) {
            layoutParams = tnTextView2.getLayoutParams();
        }
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams;
        bVar4.f7371j = R$id.tvTitle;
        b1 b1Var10 = this.mViewBinding;
        if (b1Var10 == null || (tnTextView = b1Var10.f75506b) == null) {
            return;
        }
        tnTextView.setLayoutParams(bVar4);
    }

    public final void setTitle(int titleId) {
        TnTextView tnTextView;
        b1 b1Var = this.mViewBinding;
        if (b1Var == null || (tnTextView = b1Var.f75514j) == null) {
            return;
        }
        tnTextView.setTextById(titleId);
    }

    public final void showCollectionData(int layoutType, boolean isSelf, Integer amount, CoverUrl ivUrl1, CoverUrl ivUrl2, CoverUrl ivUrl3, CoverUrl ivUrl4, final Function0<Unit> itemClick) {
        ConstraintLayout constraintLayout;
        Intrinsics.h(itemClick, "itemClick");
        this.mLayoutType = layoutType;
        n(amount);
        b1 b1Var = this.mViewBinding;
        m(b1Var != null ? b1Var.f75509e : null, ivUrl1 != null ? ivUrl1.getCoverUrl() : null, (ivUrl1 == null || ivUrl1.getType() != 1) ? R$drawable.profile_shape_dotted_line_img : com.transsion.usercenter.R$mipmap.profile_staff_avatar_empty);
        b1 b1Var2 = this.mViewBinding;
        m(b1Var2 != null ? b1Var2.f75510f : null, ivUrl2 != null ? ivUrl2.getCoverUrl() : null, (ivUrl2 == null || ivUrl2.getType() != 1) ? R$drawable.profile_shape_dotted_line_img : com.transsion.usercenter.R$mipmap.profile_staff_avatar_empty);
        b1 b1Var3 = this.mViewBinding;
        m(b1Var3 != null ? b1Var3.f75511g : null, ivUrl3 != null ? ivUrl3.getCoverUrl() : null, (ivUrl3 == null || ivUrl3.getType() != 1) ? R$drawable.profile_shape_dotted_line_img : com.transsion.usercenter.R$mipmap.profile_staff_avatar_empty);
        b1 b1Var4 = this.mViewBinding;
        m(b1Var4 != null ? b1Var4.f75512h : null, ivUrl4 != null ? ivUrl4.getCoverUrl() : null, (ivUrl4 == null || ivUrl4.getType() != 1) ? R$drawable.profile_shape_dotted_line_img : com.transsion.usercenter.R$mipmap.profile_staff_avatar_empty);
        b1 b1Var5 = this.mViewBinding;
        if (b1Var5 == null || (constraintLayout = b1Var5.f75507c) == null) {
            return;
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MyRoomView.o(itemClick, view);
            }
        });
    }

    public final void showDownloadsData(int layoutType, Integer amount, b ivUrl1, b ivUrl2, b ivUrl3, final Function0<Unit> itemClick) {
        ConstraintLayout constraintLayout;
        Intrinsics.h(itemClick, "itemClick");
        this.mLayoutType = layoutType;
        n(amount);
        r(ivUrl1, ivUrl2, ivUrl3);
        b1 b1Var = this.mViewBinding;
        if (b1Var == null || (constraintLayout = b1Var.f75507c) == null) {
            return;
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MyRoomView.s(itemClick, view);
            }
        });
    }

    public final void showMyRoomData(int layoutType, boolean isSelf, Integer amount, String ivUrl1, String ivUrl2, String ivUrl3, String ivUrl4, final Function1<? super Integer, Unit> itemClick) {
        Group group;
        TnTextView tnTextView;
        TnTextView tnTextView2;
        ConstraintLayout constraintLayout;
        Group group2;
        TnTextView tnTextView3;
        Group group3;
        TnTextView tnTextView4;
        TnTextView tnTextView5;
        Intrinsics.h(itemClick, "itemClick");
        this.mLayoutType = layoutType;
        b1 b1Var = this.mViewBinding;
        if (b1Var != null && (tnTextView5 = b1Var.f75506b) != null) {
            tnTextView5.setTextById(R$string.profile_add_room);
        }
        n(amount);
        if (amount == null || amount.intValue() != 0) {
            q(this, ivUrl1, ivUrl2, ivUrl3, ivUrl4, 0, 16, null);
            b1 b1Var2 = this.mViewBinding;
            if (b1Var2 != null && (tnTextView = b1Var2.f75506b) != null) {
                tnTextView.setVisibility(8);
            }
            b1 b1Var3 = this.mViewBinding;
            if (b1Var3 != null && (group = b1Var3.f75508d) != null) {
                group.setVisibility(0);
            }
        } else if (isSelf) {
            b1 b1Var4 = this.mViewBinding;
            if (b1Var4 != null && (tnTextView4 = b1Var4.f75506b) != null) {
                tnTextView4.setVisibility(0);
            }
            b1 b1Var5 = this.mViewBinding;
            if (b1Var5 != null && (group3 = b1Var5.f75508d) != null) {
                group3.setVisibility(8);
            }
        } else {
            b1 b1Var6 = this.mViewBinding;
            if (b1Var6 != null && (tnTextView3 = b1Var6.f75506b) != null) {
                tnTextView3.setVisibility(8);
            }
            b1 b1Var7 = this.mViewBinding;
            if (b1Var7 != null && (group2 = b1Var7.f75508d) != null) {
                group2.setVisibility(0);
            }
        }
        b1 b1Var8 = this.mViewBinding;
        if (b1Var8 != null && (constraintLayout = b1Var8.f75507c) != null) {
            constraintLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MyRoomView.t(itemClick, view);
                }
            });
        }
        b1 b1Var9 = this.mViewBinding;
        if (b1Var9 == null || (tnTextView2 = b1Var9.f75506b) == null) {
            return;
        }
        tnTextView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MyRoomView.u(itemClick, view);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MyRoomView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MyRoomView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }
}
