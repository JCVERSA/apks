package com.transsion.ugcvideodetail.hepler;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.play.detail.widget.PlayDetailResTabTitleView;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDetailParams;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveInfo;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailCommentFragment;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailForYouFragment;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.user.action.sync.event.CommentEvent;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

public final class e {

    public static final a f54259r = new a(null);

    private final Fragment f54260a;

    private final UGCVideoDetailViewModel f54261b;

    private final UGCVideo f54262c;

    private final DownloadBean f54263d;

    private final MagicIndicator f54264e;

    private final ViewPager2 f54265f;

    private final String f54266g;

    private final UGCVideoPlayFrom f54267h;

    private final String f54268i;

    private final int f54269j;

    private final AppBarLayout f54270k;

    private ORCommonNavigator f54271l;

    private b f54272m;

    private FragmentStateAdapter f54273n;

    private int f54274o;

    private boolean f54275p;

    private final List f54276q;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b extends qj.a {

        private final ViewPager2 f54277b;

        private final List f54278c;

        final e f54279d;

        public b(e eVar, ViewPager2 viewPager2, List tabList) {
            Intrinsics.h(tabList, "tabList");
            this.f54279d = eVar;
            this.f54277b = viewPager2;
            this.f54278c = tabList;
        }

        private final LinearLayout.LayoutParams j() {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            layoutParams.setMarginStart(lj.a.b(6));
            layoutParams.setMarginEnd(lj.a.b(2));
            return layoutParams;
        }

        public static final void k(int i10, e eVar, PlayDetailResTabTitleView playDetailResTabTitleView, b bVar, View view) {
            if (i10 == 1 && eVar.f54275p) {
                eVar.f54275p = false;
                playDetailResTabTitleView.setDotVisibility(false);
                com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("key_subj_comment_dot", false);
            }
            ViewPager2 viewPager2 = bVar.f54277b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i10, true);
            }
        }

        @Override
        public int a() {
            return this.f54279d.f54267h == UGCVideoPlayFrom.LOCAL_VIDEO ? this.f54279d.f54276q.size() - 1 : this.f54279d.f54276q.size();
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            if (this.f54279d.f54267h == UGCVideoPlayFrom.LOCAL_VIDEO) {
                LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
                linePagerIndicator.setColors(0);
                return linePagerIndicator;
            }
            LinePagerIndicator linePagerIndicator2 = new LinePagerIndicator(context);
            linePagerIndicator2.setMode(1);
            linePagerIndicator2.setLineHeight(com.blankj.utilcode.util.i.e(3.0f));
            linePagerIndicator2.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator2.setEndInterpolator(new DecelerateInterpolator(2.0f));
            linePagerIndicator2.setColors(-1, -1, -1);
            return linePagerIndicator2;
        }

        @Override
        public xy.d c(Context context, final int i10) {
            String strValueOf;
            UGCVideoInteractiveInfo interactiveInfo;
            String commentNum;
            Integer numV;
            Intrinsics.h(context, "context");
            final PlayDetailResTabTitleView playDetailResTabTitleView = new PlayDetailResTabTitleView(context);
            final e eVar = this.f54279d;
            if (i10 == 1) {
                playDetailResTabTitleView.setDotVisibility(eVar.f54275p);
                UGCVideo uGCVideo = eVar.f54262c;
                int iIntValue = (uGCVideo == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (commentNum = interactiveInfo.getCommentNum()) == null || (numV = StringsKt.v(commentNum)) == null) ? 0 : numV.intValue();
                String str = "";
                if (iIntValue > 99) {
                    strValueOf = "99+";
                } else {
                    strValueOf = iIntValue <= 0 ? "" : String.valueOf(iIntValue);
                }
                Object obj = this.f54278c.get(i10);
                if (strValueOf.length() != 0) {
                    str = "(" + strValueOf + ")";
                }
                playDetailResTabTitleView.setTitle(obj + str);
            } else {
                playDetailResTabTitleView.setTitle((String) this.f54278c.get(i10));
            }
            playDetailResTabTitleView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    e.b.k(i10, eVar, playDetailResTabTitleView, this, view);
                }
            });
            return playDetailResTabTitleView;
        }

        @Override
        public LinearLayout.LayoutParams h(Context context, int i10) {
            Intrinsics.h(context, "context");
            return j();
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            super.onPageScrollStateChanged(i10);
            MagicIndicator magicIndicator = e.this.f54264e;
            if (magicIndicator != null) {
                magicIndicator.onPageScrollStateChanged(i10);
            }
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            super.onPageScrolled(i10, f10, i11);
            MagicIndicator magicIndicator = e.this.f54264e;
            if (magicIndicator != null) {
                magicIndicator.onPageScrolled(i10, f10, i11);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            MagicIndicator magicIndicator = e.this.f54264e;
            if (magicIndicator != null) {
                magicIndicator.onPageSelected(i10);
            }
            e.this.f54274o = i10;
            if (i10 == 1) {
                e.this.t();
            }
        }
    }

    public static final class d extends FragmentStateAdapter {
        d(Fragment fragment) {
            super(fragment);
        }

        @Override
        public Fragment createFragment(int i10) {
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            DownloadBean downloadBean;
            UGCVideoBelongToCollection belongToCollection;
            UGCVideo uGCVideo = e.this.f54262c;
            String name = null;
            if (uGCVideo == null || (ops = uGCVideo.getOps()) == null) {
                DownloadBean downloadBean2 = e.this.f54263d;
                if (downloadBean2 != null) {
                    String ops = downloadBean2.getOps();
                    str = ops;
                } else {
                    str = null;
                }
            } else {
                str = ops;
            }
            UGCVideo uGCVideo2 = e.this.f54262c;
            if (uGCVideo2 == null || (ugcVideoId = uGCVideo2.getUgcVideoId()) == null) {
                DownloadBean downloadBean3 = e.this.f54263d;
                if (downloadBean3 != null) {
                    String ugcVideoId = downloadBean3.getUgcVideoId();
                    str2 = ugcVideoId;
                } else {
                    str2 = null;
                }
            } else {
                str2 = ugcVideoId;
            }
            UGCVideo uGCVideo3 = e.this.f54262c;
            String collectionId = (uGCVideo3 == null || (belongToCollection = uGCVideo3.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId();
            UGCVideo uGCVideo4 = e.this.f54262c;
            if (uGCVideo4 == null || (subjectId = uGCVideo4.getSubjectId()) == null) {
                DownloadBean downloadBean4 = e.this.f54263d;
                if (downloadBean4 != null) {
                    String subjectId = downloadBean4.getSubjectId();
                    str3 = subjectId;
                } else {
                    str3 = null;
                }
            } else {
                str3 = subjectId;
            }
            UGCVideo uGCVideo5 = e.this.f54262c;
            if (uGCVideo5 == null || (ugcVideoType = uGCVideo5.getCategory()) == null) {
                DownloadBean downloadBean5 = e.this.f54263d;
                if (downloadBean5 != null) {
                    String ugcVideoType = downloadBean5.getUgcVideoType();
                    str4 = ugcVideoType;
                } else {
                    str4 = null;
                }
            } else {
                str4 = ugcVideoType;
            }
            UGCVideoDetailParams uGCVideoDetailParams = new UGCVideoDetailParams(str, str2, collectionId, str3, str4);
            if (e.this.f54267h == UGCVideoPlayFrom.ON_LINE_VIDEO) {
                str5 = "TYPE_ONLINE";
            } else {
                DownloadBean downloadBean6 = e.this.f54263d;
                str5 = (downloadBean6 == null || !downloadBean6.isInnerRes()) ? "TYPE_LOCAL_OUT" : "TYPE_LOCAL_INNER";
            }
            if (i10 != 0) {
                UGCVideoDetailCommentFragment uGCVideoDetailCommentFragmentA = UGCVideoDetailCommentFragment.INSTANCE.a();
                e eVar = e.this;
                uGCVideoDetailCommentFragmentA.setArguments(androidx.core.os.d.b(TuplesKt.a("page_name", eVar.f54266g), TuplesKt.a("video_params", uGCVideoDetailParams), TuplesKt.a(WebConstants.PAGE_FROM, eVar.f54266g), TuplesKt.a("from_opt_id", eVar.f54268i)));
                return uGCVideoDetailCommentFragmentA;
            }
            UGCVideoDetailForYouFragment uGCVideoDetailForYouFragmentA = UGCVideoDetailForYouFragment.INSTANCE.a();
            e eVar2 = e.this;
            Pair pairA = TuplesKt.a("page_name", eVar2.f54266g);
            Pair pairA2 = TuplesKt.a("video_params", uGCVideoDetailParams);
            Pair pairA3 = TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, str5);
            if (Intrinsics.c(str5, "TYPE_LOCAL_OUT") && (downloadBean = eVar2.f54263d) != null) {
                name = downloadBean.getName();
            }
            uGCVideoDetailForYouFragmentA.setArguments(androidx.core.os.d.b(pairA, pairA2, pairA3, TuplesKt.a("content_name", name), TuplesKt.a("from_opt_id", eVar2.f54268i)));
            return uGCVideoDetailForYouFragmentA;
        }

        @Override
        public int getItemCount() {
            return e.this.f54267h == UGCVideoPlayFrom.LOCAL_VIDEO ? e.this.f54276q.size() - 1 : e.this.f54276q.size();
        }
    }

    public e(Fragment fragment, UGCVideoDetailViewModel uGCVideoDetailViewModel, UGCVideo uGCVideo, DownloadBean downloadBean, MagicIndicator magicIndicator, ViewPager2 viewPager2, String str, UGCVideoPlayFrom playFrom, String str2, int i10, AppBarLayout appBarLayout) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(playFrom, "playFrom");
        this.f54260a = fragment;
        this.f54261b = uGCVideoDetailViewModel;
        this.f54262c = uGCVideo;
        this.f54263d = downloadBean;
        this.f54264e = magicIndicator;
        this.f54265f = viewPager2;
        this.f54266g = str;
        this.f54267h = playFrom;
        this.f54268i = str2;
        this.f54269j = i10;
        this.f54270k = appBarLayout;
        this.f54274o = RangesKt.l(i10, 0, playFrom == UGCVideoPlayFrom.LOCAL_VIDEO ? 0 : 1);
        this.f54276q = CollectionsKt.o(Utils.a().getString(R$string.for_you), Utils.a().getString(R$string.name_comments));
        n();
        q();
        p();
        o();
    }

    private final void m() {
        ViewPager2 viewPager2 = this.f54265f;
        if (viewPager2 != null) {
            viewPager2.registerOnPageChangeCallback(new c());
        }
        ViewPager2 viewPager3 = this.f54265f;
        if (viewPager3 != null) {
            viewPager3.setCurrentItem(this.f54274o, false);
        }
    }

    private final void n() {
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void o() {
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(this.f54260a.requireContext());
        oRCommonNavigator.setFollowTouch(true);
        b bVar = new b(this, this.f54265f, this.f54276q);
        this.f54272m = bVar;
        oRCommonNavigator.setAdapter(bVar);
        this.f54271l = oRCommonNavigator;
        MagicIndicator magicIndicator = this.f54264e;
        if (magicIndicator != null) {
            magicIndicator.setNavigator(oRCommonNavigator);
        }
        MagicIndicator magicIndicator2 = this.f54264e;
        if (magicIndicator2 != null) {
            magicIndicator2.onPageSelected(this.f54274o);
        }
    }

    private final void p() {
        d dVar = new d(this.f54260a);
        this.f54273n = dVar;
        ViewPager2 viewPager2 = this.f54265f;
        if (viewPager2 != null) {
            viewPager2.setAdapter(dVar);
        }
        ViewPager2 viewPager3 = this.f54265f;
        if (viewPager3 != null) {
            viewPager3.setUserInputEnabled(false);
        }
        m();
    }

    private final void q() {
        Fragment fragment = this.f54260a;
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return e.r(this.f54258a, (CommentEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = CommentEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(fragment, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
    }

    public static final Unit r(e eVar, CommentEvent value) {
        String strValueOf;
        UGCVideoInteractiveInfo interactiveInfo;
        String commentNum;
        Integer numV;
        Intrinsics.h(value, "value");
        try {
            UGCVideo uGCVideo = eVar.f54262c;
            if (Intrinsics.c(uGCVideo != null ? uGCVideo.getUgcVideoId() : null, value.getSubjectId())) {
                UGCVideo uGCVideo2 = eVar.f54262c;
                int iIntValue = ((uGCVideo2 == null || (interactiveInfo = uGCVideo2.getInteractiveInfo()) == null || (commentNum = interactiveInfo.getCommentNum()) == null || (numV = StringsKt.v(commentNum)) == null) ? 0 : numV.intValue()) + 1;
                String str = "";
                if (iIntValue > 99) {
                    strValueOf = "99+";
                } else {
                    strValueOf = iIntValue <= 0 ? "" : String.valueOf(iIntValue);
                }
                Object obj = eVar.f54276q.get(1);
                if (strValueOf.length() != 0) {
                    str = "(" + strValueOf + ")";
                }
                String str2 = obj + str;
                ORCommonNavigator oRCommonNavigator = eVar.f54271l;
                xy.d pagerTitleView = oRCommonNavigator != null ? oRCommonNavigator.getPagerTitleView(1) : null;
                PlayDetailResTabTitleView playDetailResTabTitleView = pagerTitleView instanceof PlayDetailResTabTitleView ? (PlayDetailResTabTitleView) pagerTitleView : null;
                if (playDetailResTabTitleView != null) {
                    playDetailResTabTitleView.setTitle(str2);
                }
            }
        } catch (Exception e10) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail " + e10.getMessage(), false, 2, null);
        }
        return Unit.f64096a;
    }

    public final void t() {
        AppBarLayout appBarLayout = this.f54270k;
        if (appBarLayout != null) {
            appBarLayout.setExpanded(false, true);
        }
    }

    public final void s(boolean z10) {
        if (com.transsion.baseui.util.c.f42332a.a(90991, 500L) || !this.f54260a.isAdded() || this.f54260a.isDetached() || this.f54260a.isRemoving()) {
            return;
        }
        List<androidx.p010savedstate.e> listY0 = this.f54260a.getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        for (androidx.p010savedstate.e eVar : listY0) {
            if (eVar instanceof wv.b) {
                ((wv.b) eVar).onScreenChange(z10);
            }
        }
    }
}
