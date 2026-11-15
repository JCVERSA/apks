package zm;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.i;
import com.therouter.TheRouter;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubjectPostCount;
import com.transsion.play.detail.viewmodel.PlayDetailViewModel;
import com.transsion.play.detail.widget.PlayDetailResTabTitleView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.PublishEvent;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

public final class e {

    public static final a f76830q = new a(null);

    private final Fragment f76831a;

    private final Subject f76832b;

    private final MagicIndicator f76833c;

    private final ViewPager2 f76834d;

    private final String f76835e;

    private final boolean f76836f;

    private final boolean f76837g;

    private final Function1 f76838h;

    private ORCommonNavigator f76839i;

    private b f76840j;

    private FragmentStateAdapter f76841k;

    private int f76842l;

    private long f76843m;

    private boolean f76844n;

    private final Lazy f76845o;

    private final Lazy f76846p;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b extends qj.a {

        private final ViewPager2 f76847b;

        private final List f76848c;

        private final boolean f76849d;

        private final boolean f76850e;

        final e f76851f;

        public b(e eVar, ViewPager2 viewPager2, List tabList, boolean z10, boolean z11) {
            Intrinsics.h(tabList, "tabList");
            this.f76851f = eVar;
            this.f76847b = viewPager2;
            this.f76848c = tabList;
            this.f76849d = z10;
            this.f76850e = z11;
        }

        private final LinearLayout.LayoutParams j() {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            layoutParams.setMarginStart(lj.a.b(6));
            layoutParams.setMarginEnd(lj.a.b(2));
            return layoutParams;
        }

        public static final void k(int i10, e eVar, PlayDetailResTabTitleView playDetailResTabTitleView, b bVar, View view) {
            if (i10 == 1 && eVar.f76844n) {
                eVar.f76844n = false;
                playDetailResTabTitleView.setDotVisibility(false);
                com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("key_subj_comment_dot", false);
            }
            ViewPager2 viewPager2 = bVar.f76847b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i10, true);
            }
        }

        @Override
        public int a() {
            return (this.f76849d && this.f76850e) ? this.f76848c.size() - 1 : this.f76848c.size();
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(1);
            linePagerIndicator.setLineHeight(i.e(3.0f));
            linePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            linePagerIndicator.setColors(-1, -1, -1);
            return linePagerIndicator;
        }

        @Override
        public xy.d c(Context context, final int i10) {
            Intrinsics.h(context, "context");
            final PlayDetailResTabTitleView playDetailResTabTitleView = new PlayDetailResTabTitleView(context);
            final e eVar = this.f76851f;
            if (i10 == 1) {
                playDetailResTabTitleView.setDotVisibility(eVar.f76844n);
            }
            Object obj = this.f76848c.get(i10);
            Intrinsics.g(obj, "get(...)");
            playDetailResTabTitleView.setTitle((String) obj);
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
            MagicIndicator magicIndicator = e.this.f76833c;
            if (magicIndicator != null) {
                magicIndicator.onPageScrollStateChanged(i10);
            }
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            super.onPageScrolled(i10, f10, i11);
            MagicIndicator magicIndicator = e.this.f76833c;
            if (magicIndicator != null) {
                magicIndicator.onPageScrolled(i10, f10, i11);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            Function1 function1 = e.this.f76838h;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(i10));
            }
            MagicIndicator magicIndicator = e.this.f76833c;
            if (magicIndicator != null) {
                magicIndicator.onPageSelected(i10);
            }
            e.this.f76842l = i10;
        }
    }

    public static final class d extends FragmentStateAdapter {

        final wv.a f76854b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(wv.a aVar, Fragment fragment) {
            super(fragment);
            this.f76854b = aVar;
        }

        @Override
        public Fragment createFragment(int i10) {
            if (i10 == 0) {
                wv.a aVar = this.f76854b;
                Subject subject = e.this.f76832b;
                Subject subject2 = e.this.f76832b;
                return aVar.d(subject, subject2 != null ? subject2.getOps() : null, e.this.f76835e, e.this.f76836f, e.this.f76837g);
            }
            wv.a aVar2 = this.f76854b;
            Subject subject3 = e.this.f76832b;
            String subjectId = subject3 != null ? subject3.getSubjectId() : null;
            Subject subject4 = e.this.f76832b;
            return aVar2.a(subjectId, subject4 != null ? subject4.getOps() : null, e.this.f76835e);
        }

        @Override
        public int getItemCount() {
            return (e.this.f76836f && e.this.f76837g) ? e.this.q().size() - 1 : e.this.q().size();
        }
    }

    static final class C0959e implements c0, FunctionAdapter {

        private final Function1 f76855a;

        C0959e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f76855a = function;
        }

        @Override
        public final Function a() {
            return this.f76855a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f76855a.invoke(obj);
        }
    }

    public e(Fragment fragment, Subject subject, MagicIndicator magicIndicator, ViewPager2 viewPager2, String str, boolean z10, boolean z11, Function1 function1) {
        Intrinsics.h(fragment, "fragment");
        this.f76831a = fragment;
        this.f76832b = subject;
        this.f76833c = magicIndicator;
        this.f76834d = viewPager2;
        this.f76835e = str;
        this.f76836f = z10;
        this.f76837g = z11;
        this.f76838h = function1;
        this.f76845o = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return e.y(this.f76826a);
            }
        });
        this.f76846p = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return e.z(this.f76827a);
            }
        });
        r();
        u();
        t();
        s();
    }

    private final void o() {
        ViewPager2 viewPager2 = this.f76834d;
        if (viewPager2 != null) {
            viewPager2.registerOnPageChangeCallback(new c());
        }
        ViewPager2 viewPager3 = this.f76834d;
        if (viewPager3 != null) {
            viewPager3.setCurrentItem(this.f76842l, false);
        }
    }

    private final PlayDetailViewModel p() {
        return (PlayDetailViewModel) this.f76845o.getValue();
    }

    public final List q() {
        return (List) this.f76846p.getValue();
    }

    private final void r() {
        this.f76844n = com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("key_subj_comment_dot", true);
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
    private final void s() {
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(this.f76831a.requireContext());
        oRCommonNavigator.setFollowTouch(true);
        b bVar = new b(this, this.f76834d, q(), this.f76836f, this.f76837g);
        this.f76840j = bVar;
        oRCommonNavigator.setAdapter(bVar);
        this.f76839i = oRCommonNavigator;
        MagicIndicator magicIndicator = this.f76833c;
        if (magicIndicator != null) {
            magicIndicator.setNavigator(oRCommonNavigator);
        }
    }

    private final void t() {
        wv.a aVar = (wv.a) TheRouter.d(wv.a.class, new Object[0]);
        if (aVar == null) {
            return;
        }
        d dVar = new d(aVar, this.f76831a);
        this.f76841k = dVar;
        ViewPager2 viewPager2 = this.f76834d;
        if (viewPager2 != null) {
            viewPager2.setAdapter(dVar);
        }
        o();
    }

    private final void u() {
        String subjectId;
        Fragment fragment = this.f76831a;
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return e.v(this.f76828a, (PublishEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PublishEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(fragment, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
        p().g().j(this.f76831a, new C0959e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return e.w(this.f76829a, (SubjectPostCount) obj);
            }
        }));
        Subject subject = this.f76832b;
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        p().f(subjectId);
    }

    public static final Unit v(e eVar, PublishEvent it) {
        String str;
        Intrinsics.h(it, "it");
        long j10 = eVar.f76843m + 1;
        eVar.f76843m = j10;
        String strValueOf = j10 > 99 ? "99+" : String.valueOf(j10);
        Object obj = eVar.q().get(1);
        if (strValueOf.length() == 0) {
            str = "";
        } else {
            str = "(" + strValueOf + ")";
        }
        String str2 = obj + str;
        ORCommonNavigator oRCommonNavigator = eVar.f76839i;
        xy.d pagerTitleView = oRCommonNavigator != null ? oRCommonNavigator.getPagerTitleView(1) : null;
        PlayDetailResTabTitleView playDetailResTabTitleView = pagerTitleView instanceof PlayDetailResTabTitleView ? (PlayDetailResTabTitleView) pagerTitleView : null;
        if (playDetailResTabTitleView != null) {
            playDetailResTabTitleView.setTitle(str2);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0043  */
    public static final Unit w(e eVar, SubjectPostCount subjectPostCount) {
        String count;
        String count2 = subjectPostCount != null ? subjectPostCount.getCount() : null;
        if (count2 == null || count2.length() == 0) {
            return Unit.f64096a;
        }
        String count3 = subjectPostCount != null ? subjectPostCount.getCount() : null;
        Intrinsics.e(count3);
        Long lX = StringsKt.x(count3);
        String str = "";
        if (lX != null) {
            long jLongValue = lX.longValue();
            eVar.f76843m = jLongValue;
            if (jLongValue > 99) {
                count = "99+";
            } else {
                count = jLongValue <= 0 ? "" : String.valueOf(jLongValue);
            }
            if (count == null) {
                count = subjectPostCount.getCount();
            }
        } else {
            count = subjectPostCount.getCount();
        }
        Object obj = eVar.q().get(1);
        if (count != null && count.length() != 0) {
            str = "(" + count + ")";
        }
        String str2 = obj + str;
        if (!eVar.f76836f || !eVar.f76837g) {
            ORCommonNavigator oRCommonNavigator = eVar.f76839i;
            xy.d pagerTitleView = oRCommonNavigator != null ? oRCommonNavigator.getPagerTitleView(1) : null;
            PlayDetailResTabTitleView playDetailResTabTitleView = pagerTitleView instanceof PlayDetailResTabTitleView ? (PlayDetailResTabTitleView) pagerTitleView : null;
            if (playDetailResTabTitleView != null) {
                playDetailResTabTitleView.setTitle(str2);
            }
        }
        return Unit.f64096a;
    }

    public static final PlayDetailViewModel y(e eVar) {
        return (PlayDetailViewModel) new v0(eVar.f76831a).a(PlayDetailViewModel.class);
    }

    public static final List z(e eVar) {
        return CollectionsKt.o(eVar.f76831a.requireContext().getString(R$string.for_you), eVar.f76831a.requireContext().getString(R$string.name_comments));
    }

    public final void x(boolean z10) {
        if (com.transsion.baseui.util.c.f42332a.a(90991, 500L) || !this.f76831a.isAdded() || this.f76831a.isDetached() || this.f76831a.isRemoving()) {
            return;
        }
        List<androidx.p010savedstate.e> listY0 = this.f76831a.getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        for (androidx.p010savedstate.e eVar : listY0) {
            if (eVar instanceof wv.b) {
                ((wv.b) eVar).onScreenChange(z10);
            }
        }
    }

    public e(Fragment fragment, Subject subject, MagicIndicator magicIndicator, ViewPager2 viewPager2, String str, boolean z10, boolean z11, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, subject, magicIndicator, viewPager2, str, (i10 & 32) != 0 ? false : z10, (i10 & 64) != 0 ? false : z11, (i10 & 128) != 0 ? null : function1);
    }
}
