package com.transsion.commercialization.gameres;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.blankj.utilcode.util.a0;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.widget.R$color;
import com.transsion.commercialization.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ni.f;
import sj.j;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010%\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001b\u001a\u00020\u00168\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\"\u0010!\u001a\u00020\u00128\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010\u0015R\u0018\u0010$\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R \u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/transsion/commercialization/gameres/GameResView;", "Lcom/noober/background/view/BLConstraintLayout;", "Lwj/c;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Luj/a;", "info", "", "setContent", "(Luj/a;)V", "", TtmlNode.TAG_STYLE, "setPageStyle", "(Ljava/lang/String;)V", "Lsj/j;", "a", "Lsj/j;", "getViewBinding", "()Lsj/j;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "getGamePageStyle", "()Ljava/lang/String;", "setGamePageStyle", "gamePageStyle", "c", "Luj/a;", "infoData", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/Map;", "pageStyleBrowsedMap", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class GameResView extends BLConstraintLayout implements wj.c {

    private final j viewBinding;

    private String gamePageStyle;

    private uj.a infoData;

    private final Map pageStyleBrowsedMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GameResView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.gamePageStyle = "detail";
        this.pageStyleBrowsedMap = new LinkedHashMap();
        View.inflate(getContext(), R$layout.view_game_resource, this);
        j jVarA = j.a(this);
        Intrinsics.g(jVarA, "bind(...)");
        this.viewBinding = jVarA;
        setBackground(new DrawableCreator.Builder().setCornersRadius(a0.a(8.0f)).setSolidColor(getContext().getResources().getColor(R$color.module_04)).build());
    }

    protected final String getGamePageStyle() {
        return this.gamePageStyle;
    }

    protected final j getViewBinding() {
        return this.viewBinding;
    }

    public void setContent(uj.a info) {
        Intrinsics.h(info, "info");
        this.infoData = info;
        f.a aVar = f.f67269a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        f.b bVarM = aVar.m(context).g(info.c()).m(a0.a(48.0f));
        ShapeableImageView ivCover = this.viewBinding.f72312b;
        Intrinsics.g(ivCover, "ivCover");
        bVarM.d(ivCover);
        this.viewBinding.f72318h.setText(info.d());
        this.viewBinding.f72317g.setText(info.f());
        this.viewBinding.f72316f.setText(info.e());
        this.viewBinding.f72314d.setText(info.b());
    }

    protected final void setGamePageStyle(String str) {
        Intrinsics.h(str, "<set-?>");
        this.gamePageStyle = str;
    }

    @Override
    public void setPageStyle(String style) {
        Intrinsics.h(style, "style");
        this.gamePageStyle = style;
        if (Intrinsics.c(style, "fullscreen")) {
            setBackground(new DrawableCreator.Builder().setCornersRadius(a0.a(8.0f)).setSolidColor(getContext().getResources().getColor(R$color.black_50)).build());
            this.viewBinding.f72318h.setTextColor(getContext().getResources().getColor(R$color.white));
            int color = getContext().getResources().getColor(R$color.white_60);
            this.viewBinding.f72317g.setTextColor(color);
            this.viewBinding.f72316f.setTextColor(color);
            this.viewBinding.f72314d.setTextColor(color);
            this.viewBinding.f72319i.setBackgroundColor(color);
        } else if (Intrinsics.c(style, "detail")) {
            setBackground(new DrawableCreator.Builder().setCornersRadius(a0.a(8.0f)).setSolidColor(getContext().getResources().getColor(R$color.module_04)).build());
            this.viewBinding.f72318h.setTextColor(getContext().getResources().getColor(R$color.text_01));
            int color2 = getContext().getResources().getColor(R$color.text_01);
            this.viewBinding.f72317g.setTextColor(color2);
            this.viewBinding.f72316f.setTextColor(color2);
            this.viewBinding.f72314d.setTextColor(color2);
            this.viewBinding.f72319i.setBackgroundColor(color2);
        }
        if (this.pageStyleBrowsedMap.containsKey(style)) {
            return;
        }
        this.pageStyleBrowsedMap.put(style, "");
        uj.a aVar = this.infoData;
        if (aVar != null) {
            vj.a.f73652a.c(aVar, style);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GameResView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.gamePageStyle = "detail";
        this.pageStyleBrowsedMap = new LinkedHashMap();
        View.inflate(getContext(), R$layout.view_game_resource, this);
        j jVarA = j.a(this);
        Intrinsics.g(jVarA, "bind(...)");
        this.viewBinding = jVarA;
        setBackground(new DrawableCreator.Builder().setCornersRadius(a0.a(8.0f)).setSolidColor(getContext().getResources().getColor(R$color.module_04)).build());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GameResView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.gamePageStyle = "detail";
        this.pageStyleBrowsedMap = new LinkedHashMap();
        View.inflate(getContext(), R$layout.view_game_resource, this);
        j jVarA = j.a(this);
        Intrinsics.g(jVarA, "bind(...)");
        this.viewBinding = jVarA;
        setBackground(new DrawableCreator.Builder().setCornersRadius(a0.a(8.0f)).setSolidColor(getContext().getResources().getColor(R$color.module_04)).build());
    }
}
