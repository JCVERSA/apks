package com.transsion.player.longvideo.member;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.OpType;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\rJ!\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/transsion/player/longvideo/member/LongVodMemberNoFreeResolutionView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getClassTag", "()Ljava/lang/String;", "", "c", "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lln/a;", "bean", "pageName", "showCover", "(Lln/a;Ljava/lang/String;)V", "Lim/c;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "(Lim/c;)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lln/a;", "Lim/c;", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LongVodMemberNoFreeResolutionView extends FrameLayout {

    private String pageName;

    private ln.a bean;

    private im.c listener;

    public static final class a implements im.a {

        public static final class C0613a implements im.c {

            final LongVodMemberNoFreeResolutionView f46157a;

            final AppCompatActivity f46158b;

            public static final class C0614a implements nw.e {

                final LongVodMemberNoFreeResolutionView f46159a;

                C0614a(LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView) {
                    this.f46159a = longVodMemberNoFreeResolutionView;
                }

                @Override
                public void a(boolean z10) {
                    if (z10) {
                        this.f46159a.d();
                    }
                }
            }

            C0613a(LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView, AppCompatActivity appCompatActivity) {
                this.f46157a = longVodMemberNoFreeResolutionView;
                this.f46158b = appCompatActivity;
            }

            @Override
            public void a() {
                k.f46204a.a(this.f46157a.getClassTag() + " --> llUnlockBtn{} --> ka开通会员失败 --> 商业化逻辑");
                ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f46182a;
                FragmentManager supportFragmentManager = this.f46158b.getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                resolutionMemberManager.i(supportFragmentManager, MemberSource.SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR, this.f46157a.bean, this.f46157a.pageName, new C0614a(this.f46157a));
            }

            @Override
            public void onSuccess() {
                this.f46157a.d();
                k.f46204a.a(this.f46157a.getClassTag() + " --> llUnlockBtn{} --> ka开通会员成功");
            }
        }

        public static final class b implements wj.g {

            final LongVodMemberNoFreeResolutionView f46160a;

            b(LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView) {
                this.f46160a = longVodMemberNoFreeResolutionView;
            }

            @Override
            public void a(boolean z10) {
                wj.g.a.a(this, z10);
            }

            @Override
            public void onFail() {
                k.f46204a.a(this.f46160a.getClassTag() + " --> llUnlockBtn{} --> 三合一弹窗 失败");
            }

            @Override
            public void onSuccess() {
                this.f46160a.d();
                k.f46204a.a(this.f46160a.getClassTag() + " --> showTreasureDialog() --> 三合一弹窗 成功");
            }
        }

        a() {
        }

        public static final Unit h(LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView, Object obj) {
            wj.h.f74282a.a(longVodMemberNoFreeResolutionView.getClassTag() + " --> checkMemberRights() --> sceneType = MemberSceneType.SCENE_PREDL --> success");
            return Unit.f64096a;
        }

        @Override
        public void a(MemberCheckResult memberCheckResult) {
            Context context = LongVodMemberNoFreeResolutionView.this.getContext();
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity != null) {
                LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView = LongVodMemberNoFreeResolutionView.this;
                im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
                if (bVar != null) {
                    im.b.a.c(bVar, appCompatActivity, MemberSource.SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR, new C0613a(longVodMemberNoFreeResolutionView, appCompatActivity), false, null, 24, null);
                }
            }
        }

        @Override
        public void b(MemberCheckResult memberCheckResult) {
            im.a.C0761a.d(this, memberCheckResult);
        }

        @Override
        public void c(MemberCheckResult memberCheckResult) {
            im.a.C0761a.g(this, memberCheckResult);
            wj.f fVar = (wj.f) TheRouter.d(wj.f.class, new Object[0]);
            if (fVar != null) {
                fVar.b("", memberCheckResult, new b(LongVodMemberNoFreeResolutionView.this));
            }
        }

        @Override
        public void d(MemberCheckResult memberCheckResult) {
            im.a.C0761a.e(this, memberCheckResult);
        }

        @Override
        public void e() {
            LongVodMemberNoFreeResolutionView.this.d();
            wj.h.f74282a.a(LongVodMemberNoFreeResolutionView.this.getClassTag() + " --> checkMemberRights() --> passed() --> 会员权益通过验证 --> 继续下载任务");
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            if (bVar != null) {
                OpType opType = OpType.OP_DOWNLOAD;
                final LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView = LongVodMemberNoFreeResolutionView.this;
                bVar.n(opType, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return LongVodMemberNoFreeResolutionView.a.h(longVodMemberNoFreeResolutionView, obj);
                    }
                });
            }
        }

        @Override
        public void f(MemberCheckResult memberCheckResult) {
            im.a.C0761a.a(this, memberCheckResult);
            wj.h.f74282a.b(LongVodMemberNoFreeResolutionView.this.getClassTag() + " --> triggerDownload() --> showCheckMemberRights() --> notImplement() --> 当前类型没有实现");
        }

        @Override
        public void onFail(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            im.a.C0761a.b(this, errorMsg);
            wj.h.f74282a.b(LongVodMemberNoFreeResolutionView.this.getClassTag() + " --> checkMemberRights() --> showCheckMemberRightsDialog() --> " + errorMsg);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public LongVodMemberNoFreeResolutionView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    public static final void b(LongVodMemberNoFreeResolutionView longVodMemberNoFreeResolutionView, View view) {
        wj.h.f74282a.a(longVodMemberNoFreeResolutionView.getClassTag() + " --> llUnlockBtn{} --> 开通会员按钮点击");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "clarity_unlock");
        ln.a aVar = longVodMemberNoFreeResolutionView.bean;
        linkedHashMap.put("subject_id", aVar != null ? aVar.o() : null);
        qi.h hVar = qi.h.f69682a;
        String str = longVodMemberNoFreeResolutionView.pageName;
        if (str == null) {
            str = "vip_resolution";
        }
        hVar.o(str, linkedHashMap);
        longVodMemberNoFreeResolutionView.c();
    }

    private final void c() {
        wj.h.f74282a.a(getClassTag() + " --> showDialog() --> 接口校验 --> sceneType = " + MemberSceneType.SCENE_PREDL);
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.d(MemberSceneType.SCENE_START_RESOLUTION, 0, new a());
        }
    }

    public final void d() {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new LongVodMemberNoFreeResolutionView$unlock$1(this, null), 3, null);
    }

    public final String getClassTag() {
        String simpleName = LongVodMemberNoFreeResolutionView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void setListener(im.c listener) {
        this.listener = listener;
    }

    public final void showCover(ln.a bean, String pageName) {
        setVisibility(0);
        this.bean = bean;
        this.pageName = pageName;
        ImageView imageView = (ImageView) findViewById(R$id.ivCover);
        if (imageView != null) {
            ni.f.a aVar = ni.f.f67269a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(bean != null ? bean.c() : null).k(true).a(6).d(imageView);
        }
    }

    public LongVodMemberNoFreeResolutionView(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LongVodMemberNoFreeResolutionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.long_vod_member_no_free_resolution_view, (ViewGroup) this, false);
        addView(viewInflate);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tvUnlockTip);
        if (textView != null) {
            String string = context.getString(R$string.long_vod_unlock_720p_up_quality_with_premium, r.f46212a.j());
            Intrinsics.g(string, "getString(...)");
            textView.setText(string);
        }
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R$id.llUnlockBtn);
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    LongVodMemberNoFreeResolutionView.b(this.f46194a, view);
                }
            });
        }
    }
}
