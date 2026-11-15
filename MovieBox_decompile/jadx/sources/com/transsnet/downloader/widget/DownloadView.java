package com.transsnet.downloader.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$styleable;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.R$string;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b \u0018\u0000 G2\u00020\u0001:\u0001\rB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014JE\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\t¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\f¢\u0006\u0004\b\u001d\u0010\u0010J\r\u0010\u001e\u001a\u00020\f¢\u0006\u0004\b\u001e\u0010\u0010J\r\u0010\u001f\u001a\u00020\f¢\u0006\u0004\b\u001f\u0010\u0010J1\u0010$\u001a\u00020\f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\t¢\u0006\u0004\b&\u0010'R$\u0010.\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0016\u00100\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010/R\u0016\u00103\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00105\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00102R\u0016\u00107\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00102R\u0016\u00109\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00102R\u0016\u0010;\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00102R\u0018\u0010>\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010A\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\"\u0010F\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u00102\u001a\u0004\bC\u0010'\"\u0004\bD\u0010E¨\u0006H"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "a", "(Landroid/util/AttributeSet;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "", "pageName", "setPageFrom", "(Ljava/lang/String;)V", "subjectId", "resourceId", "", "isSeries", "mutiRatio", "downloadTextResId", "setShowType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZI)V", "setShowPlayType", "setAddCourse", "setCourseAdded", "tipTextColor", "", "tipsTextSize", "iconSrc", "setAttrs", "(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V", "getShowType", "()I", "Lbx/q;", "Lbx/q;", "getMViewBinding", "()Lbx/q;", "setMViewBinding", "(Lbx/q;)V", "mViewBinding", "F", "textSize", "c", "I", "downloadIconSrc", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "playIconSrc", "e", "textVisibility", "f", "textStyle", "g", "textColor", "h", "Ljava/lang/Integer;", "icTintColor", "i", "Ljava/lang/String;", "pageFrom", "j", "getType", "setType", "(I)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "Companion", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadView extends FrameLayout {
    public static final int ADD_COURSE = 2;
    public static final int COURSE_ADDED = 3;
    public static final int DOWNLOAD = 0;
    public static final int PLAY = 1;

    private bx.q mViewBinding;

    private float textSize;

    private int downloadIconSrc;

    private int playIconSrc;

    private int textVisibility;

    private int textStyle;

    private int textColor;

    private Integer icTintColor;

    private String pageFrom;

    private int type;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    private final void a(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R$styleable.download_view);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            try {
                this.textSize = typedArrayObtainStyledAttributes.getDimension(R$styleable.download_view_tips_textSize, this.textSize);
                this.downloadIconSrc = typedArrayObtainStyledAttributes.getResourceId(R$styleable.download_view_iconSrc, this.downloadIconSrc);
                this.playIconSrc = typedArrayObtainStyledAttributes.getResourceId(R$styleable.download_view_playIconSrc, this.playIconSrc);
                this.textStyle = typedArrayObtainStyledAttributes.getInteger(R$styleable.download_view_tips_textStyle, 1);
                this.textColor = typedArrayObtainStyledAttributes.getColor(R$styleable.download_view_tips_textColor, androidx.core.content.b.getColor(getContext(), R$color.white));
                if (typedArrayObtainStyledAttributes.hasValue(R$styleable.download_view_tips_textColor)) {
                    this.icTintColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.download_view_tips_textColor, androidx.core.content.b.getColor(getContext(), R$color.white)));
                }
                this.textVisibility = typedArrayObtainStyledAttributes.getColor(R$styleable.download_view_tips_textVisibility, 0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private final void b() {
        TnTextView tnTextView;
        Typeface typefaceD;
        TnTextView tnTextView2;
        TnTextView tnTextView3;
        TnTextView tnTextView4;
        bx.q qVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        View.inflate(getContext(), R$layout.download_view_type_list, this);
        bx.q qVarA = bx.q.a(this);
        this.mViewBinding = qVarA;
        if (qVarA != null && (appCompatImageView2 = qVarA.f16210b) != null) {
            appCompatImageView2.setImageResource(this.downloadIconSrc);
        }
        Integer num = this.icTintColor;
        if (num != null && (qVar = this.mViewBinding) != null && (appCompatImageView = qVar.f16210b) != null) {
            Intrinsics.e(num);
            appCompatImageView.setImageTintList(ColorStateList.valueOf(num.intValue()));
        }
        bx.q qVar2 = this.mViewBinding;
        if (qVar2 != null && (tnTextView4 = qVar2.f16212d) != null) {
            tnTextView4.setTextSize(0, this.textSize);
        }
        bx.q qVar3 = this.mViewBinding;
        if (qVar3 != null && (tnTextView3 = qVar3.f16212d) != null) {
            tnTextView3.setTextColor(this.textColor);
        }
        bx.q qVar4 = this.mViewBinding;
        if (qVar4 != null && (tnTextView2 = qVar4.f16212d) != null) {
            tnTextView2.setVisibility(this.textVisibility);
        }
        bx.q qVar5 = this.mViewBinding;
        if (qVar5 == null || (tnTextView = qVar5.f16212d) == null) {
            return;
        }
        int i10 = this.textStyle;
        if (i10 == 0) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            typefaceD = uf.a.d(context);
        } else if (i10 == 1) {
            Context context2 = getContext();
            Intrinsics.g(context2, "getContext(...)");
            typefaceD = uf.a.c(context2);
        } else if (i10 == 2) {
            Context context3 = getContext();
            Intrinsics.g(context3, "getContext(...)");
            typefaceD = uf.a.a(context3);
        } else if (i10 != 3) {
            Context context4 = getContext();
            Intrinsics.g(context4, "getContext(...)");
            typefaceD = uf.a.c(context4);
        } else {
            Context context5 = getContext();
            Intrinsics.g(context5, "getContext(...)");
            typefaceD = uf.a.b(context5);
        }
        tnTextView.setTypeface(typefaceD);
    }

    public static void setAttrs$default(DownloadView downloadView, Integer num, Float f10, Integer num2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        if ((i10 & 2) != 0) {
            f10 = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        downloadView.setAttrs(num, f10, num2);
    }

    public static void setShowType$default(DownloadView downloadView, String str, String str2, Boolean bool, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "";
        }
        if ((i11 & 2) != 0) {
            str2 = "";
        }
        if ((i11 & 4) != 0) {
            bool = Boolean.FALSE;
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        if ((i11 & 16) != 0) {
            i10 = R$string.download_movie;
        }
        downloadView.setShowType(str, str2, bool, z10, i10);
    }

    public final bx.q getMViewBinding() {
        return this.mViewBinding;
    }

    public final int getType() {
        return this.type;
    }

    public final int getType() {
        return this.type;
    }

    public final void setAddCourse() {
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView;
        this.type = 2;
        bx.q qVar = this.mViewBinding;
        if (qVar != null && (appCompatImageView = qVar.f16210b) != null) {
            appCompatImageView.setImageResource(R$mipmap.ic_add);
        }
        bx.q qVar2 = this.mViewBinding;
        if (qVar2 == null || (tnTextView = qVar2.f16212d) == null) {
            return;
        }
        tnTextView.setTextById(R$string.education_add_course);
    }

    public final void setAttrs(Integer tipTextColor, Float tipsTextSize, Integer iconSrc) {
        bx.q qVar;
        TnTextView tnTextView;
        TnTextView tnTextView2;
        AppCompatImageView appCompatImageView;
        if (iconSrc != null) {
            int iIntValue = iconSrc.intValue();
            bx.q qVar2 = this.mViewBinding;
            if (qVar2 != null && (appCompatImageView = qVar2.f16210b) != null) {
                appCompatImageView.setImageResource(iIntValue);
            }
        }
        if (tipsTextSize != null) {
            float fFloatValue = tipsTextSize.floatValue();
            bx.q qVar3 = this.mViewBinding;
            if (qVar3 != null && (tnTextView2 = qVar3.f16212d) != null) {
                tnTextView2.setTextSize(0, fFloatValue);
            }
        }
        if (tipTextColor == null || (qVar = this.mViewBinding) == null || (tnTextView = qVar.f16212d) == null) {
            return;
        }
        tnTextView.setTextColor(tipTextColor.intValue());
    }

    public final void setCourseAdded() {
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView;
        this.type = 3;
        bx.q qVar = this.mViewBinding;
        if (qVar != null && (appCompatImageView = qVar.f16210b) != null) {
            appCompatImageView.setImageResource(R$mipmap.ic_added);
        }
        bx.q qVar2 = this.mViewBinding;
        if (qVar2 == null || (tnTextView = qVar2.f16212d) == null) {
            return;
        }
        tnTextView.setTextById(R$string.education_added);
    }

    public final void setMViewBinding(bx.q qVar) {
        this.mViewBinding = qVar;
    }

    public final void setPageFrom(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.pageFrom = pageName;
    }

    public final void setShowPlayType() {
        bx.q qVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView3;
        this.type = 1;
        bx.q qVar2 = this.mViewBinding;
        if (qVar2 != null && (appCompatImageView3 = qVar2.f16210b) != null) {
            appCompatImageView3.setImageResource(this.playIconSrc);
        }
        bx.q qVar3 = this.mViewBinding;
        if (qVar3 != null && (tnTextView = qVar3.f16212d) != null) {
            tnTextView.setTextById(R$string.play);
        }
        bx.q qVar4 = this.mViewBinding;
        Drawable drawable = (qVar4 == null || (appCompatImageView2 = qVar4.f16210b) == null) ? null : appCompatImageView2.getDrawable();
        if (drawable == null || (qVar = this.mViewBinding) == null || (appCompatImageView = qVar.f16210b) == null) {
            return;
        }
        appCompatImageView.setImageDrawable(drawable);
    }

    public final void setShowType(String subjectId, String resourceId, Boolean isSeries, boolean mutiRatio, int downloadTextResId) {
        bx.q qVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView3;
        TnTextView tnTextView2;
        AppCompatImageView appCompatImageView4;
        boolean zW0 = DownloadManagerApi.f56187j.a().w0(subjectId, resourceId, isSeries != null ? isSeries.booleanValue() : false, mutiRatio);
        this.type = zW0 ? 1 : 0;
        if (!zW0) {
            bx.q qVar2 = this.mViewBinding;
            if (qVar2 != null && (appCompatImageView4 = qVar2.f16210b) != null) {
                appCompatImageView4.setImageResource(this.downloadIconSrc);
            }
            bx.q qVar3 = this.mViewBinding;
            if (qVar3 == null || (tnTextView2 = qVar3.f16212d) == null) {
                return;
            }
            tnTextView2.setTextById(downloadTextResId);
            return;
        }
        bx.q qVar4 = this.mViewBinding;
        if (qVar4 != null && (appCompatImageView3 = qVar4.f16210b) != null) {
            appCompatImageView3.setImageResource(this.playIconSrc);
        }
        bx.q qVar5 = this.mViewBinding;
        if (qVar5 != null && (tnTextView = qVar5.f16212d) != null) {
            tnTextView.setTextById(R$string.play);
        }
        bx.q qVar6 = this.mViewBinding;
        Drawable drawable = (qVar6 == null || (appCompatImageView2 = qVar6.f16210b) == null) ? null : appCompatImageView2.getDrawable();
        if (drawable == null || (qVar = this.mViewBinding) == null || (appCompatImageView = qVar.f16210b) == null) {
            return;
        }
        appCompatImageView.setImageDrawable(drawable);
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.textSize = com.blankj.utilcode.util.a0.a(12.0f);
        this.downloadIconSrc = R$mipmap.ic_download_red;
        this.playIconSrc = com.tn.lib.widget.R$mipmap.icon_play_white;
        this.textStyle = 1;
        this.textColor = -1;
        this.pageFrom = "";
        a(attributeSet);
        b();
    }
}
