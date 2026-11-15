package com.yandex.div.core.dagger;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.expression.local.DivRuntimeVisitor;
import com.yandex.div.core.tooltip.DivTooltipController;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.errors.ErrorVisualMonitor;
import com.yandex.div.core.view2.state.DivStateTransitionHolder;
import defpackage.a15;
import defpackage.dl6;
import defpackage.kg2;
import defpackage.tv2;
import defpackage.ut2;
import defpackage.vbc;
import defpackage.vq2;
import defpackage.xc3;
import defpackage.zr8;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\ba\u0018\u00002\u00020\u0001:\u00016R\u0014\u0010\u0005\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00068&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8&X¦\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8&X¦\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8&X¦\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8&X¦\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u00105\u001a\u0002028&X¦\u0004¢\u0006\u0006\u001a\u0004\b3\u00104ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00067À\u0006\u0001"}, d2 = {"Lcom/yandex/div/core/dagger/Div2ViewComponent;", "", "Ltv2;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "()Ltv2;", "viewIdProvider", "Lut2;", "c", "()Lut2;", "transitionBuilder", "Lzr8;", "k", "()Lzr8;", "releaseViewVisitor", "Ldl6;", CmcdData.OBJECT_TYPE_MANIFEST, "()Ldl6;", "mediaReleaseViewVisitor", "Lvq2;", CmcdData.STREAMING_FORMAT_HLS, "()Lvq2;", "stateSwitcher", "Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;", "d", "()Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;", "stateTransitionHolder", "Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;", "e", "()Lcom/yandex/div/core/view2/errors/ErrorVisualMonitor;", "errorMonitor", "Lvbc;", CmcdData.STREAM_TYPE_LIVE, "()Lvbc;", "bindingProvider", "Lxc3;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lxc3;", "errorCollectors", "La15;", "f", "()La15;", "inputFocusTracker", "Lkg2;", "j", "()Lkg2;", "animatorController", "Lcom/yandex/div/core/tooltip/DivTooltipController;", "b", "()Lcom/yandex/div/core/tooltip/DivTooltipController;", "divTooltipController", "Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;", GslbInterceptor.HEADER_KEY_GSLB, "()Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;", "runtimeVisitor", "Builder", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface Div2ViewComponent {

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\u0007\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/yandex/div/core/dagger/Div2ViewComponent$Builder;", "", "Lcom/yandex/div/core/view2/Div2View;", "divView", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/div/core/dagger/Div2ViewComponent$Builder;", "Lcom/yandex/div/core/dagger/Div2ViewComponent;", "build", "()Lcom/yandex/div/core/dagger/Div2ViewComponent;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface Builder {
        Builder a(Div2View divView);

        Div2ViewComponent build();
    }

    xc3 a();

    DivTooltipController b();

    ut2 c();

    DivStateTransitionHolder d();

    ErrorVisualMonitor e();

    a15 f();

    DivRuntimeVisitor g();

    vq2 h();

    tv2 i();

    kg2 j();

    zr8 k();

    vbc l();

    dl6 m();
}
