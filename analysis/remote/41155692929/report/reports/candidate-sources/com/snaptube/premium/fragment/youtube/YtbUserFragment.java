package com.snaptube.premium.fragment.youtube;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.base.BaseFragment;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.mixed_list.view.FABBatchDownload;
import com.snaptube.premium.R;
import com.snaptube.premium.navigator.LaunchFlag;
import com.snaptube.premium.navigator.STNavigator;
import com.trello.rxlifecycle.android.FragmentEvent;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import com.wandoujia.em.common.protomodel.CardAnnotation;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;
import o.al3;
import o.bl;
import o.cy2;
import o.dx2;
import o.kf5;
import o.lt;
import o.or3;
import o.re3;
import o.ri0;
import o.ru7;
import o.rv2;
import o.sh;
import o.sr7;
import o.t14;
import o.ux2;
import o.wg9;
import o.xg9;
import o.yg9;
import o.zl1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rx.c;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 @2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001AB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0002¢\u0006\u0004\b&\u0010\u0005J\u0019\u0010(\u001a\u00020\u00062\b\u0010'\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b(\u0010\fJ\u000f\u0010)\u001a\u00020\u0006H\u0002¢\u0006\u0004\b)\u0010\u0005J\u000f\u0010*\u001a\u00020\u0006H\u0002¢\u0006\u0004\b*\u0010\u0005J\u0019\u0010-\u001a\u00020\u00062\b\u0010,\u001a\u0004\u0018\u00010+H\u0002¢\u0006\u0004\b-\u0010.J\u0019\u00101\u001a\u0002002\b\u0010/\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>¨\u0006B"}, d2 = {"Lcom/snaptube/premium/fragment/youtube/YtbUserFragment;", "Lcom/snaptube/base/BaseFragment;", "Lcom/snaptube/premium/batch_download/a$a;", "Landroidx/appcompat/widget/Toolbar$h;", "<init>", "()V", "Lo/mg8;", "W2", "Y2", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "onResume", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Lcom/snaptube/mixed_list/view/FABBatchDownload;", "y1", "()Lcom/snaptube/mixed_list/view/FABBatchDownload;", "Landroid/view/MenuItem;", "item", "", "onMenuItemClick", "(Landroid/view/MenuItem;)Z", "R2", "args", "X2", "U2", "S2", "Lcom/wandoujia/em/common/protomodel/Card;", "card", "Z2", "(Lcom/wandoujia/em/common/protomodel/Card;)V", "bundle", "", "P2", "(Landroid/os/Bundle;)Ljava/lang/String;", "g", "Ljava/lang/String;", "url", "Lo/rv2;", "h", "Lo/rv2;", "binding", "Lo/wg9$b;", "i", "Lo/t14;", "Q2", "()Lo/wg9$b;", "viewModel", "j", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class YtbUserFragment extends BaseFragment implements com.snaptube.premium.batch_download.a.InterfaceC0414a, Toolbar.h {

    public String url;

    public rv2 binding;

    public final t14 viewModel = kotlin.b.b(new YtbUserFragment$viewModel$2(this));

    public static final class b implements kf5, cy2 {
        public final dx2 a;

        public b(dx2 dx2Var) {
            or3.f(dx2Var, "function");
            this.a = dx2Var;
        }

        @Override
        public final ux2 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof kf5) && (obj instanceof cy2)) {
                return or3.a(a(), ((cy2) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public static void L2(YtbUserFragment ytbUserFragment, View view) {
        T2(ytbUserFragment, view);
    }

    public static void M2(YtbUserFragment ytbUserFragment, View view) {
        V2(ytbUserFragment, view);
    }

    public static final wg9.b N2(YtbUserFragment ytbUserFragment) {
        return ytbUserFragment.Q2();
    }

    public static final void O2(YtbUserFragment ytbUserFragment, Card card) {
        ytbUserFragment.Z2(card);
    }

    public static final void T2(YtbUserFragment ytbUserFragment, View view) {
        or3.f(ytbUserFragment, "this$0");
        ru7.d(ytbUserFragment.getContext(), new Intent("phoenix.intent.action.SUBSCRIBE"), (Card) ytbUserFragment.Q2().t(ytbUserFragment.hashCode()).f());
    }

    public static final void V2(YtbUserFragment ytbUserFragment, View view) {
        or3.f(ytbUserFragment, "this$0");
        FragmentActivity activity = ytbUserFragment.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    private final void W2() {
        View view = getView();
        if (view != null) {
            sr7.h(view, true, false, false, 2, null);
        }
        U2();
        Y2();
        S2();
    }

    private final void Y2() {
        c cVarY = RxBus.d().c(1069, 1070).g(z2(FragmentEvent.DESTROY_VIEW)).Y(sh.c());
        or3.e(cVarY, "observeOn(...)");
        ObservableKt.i(cVarY, new YtbUserFragment$setupSubscription$1(this));
    }

    public final String P2(Bundle bundle) {
        String string = bundle != null ? bundle.getString("title") : null;
        return string == null ? "" : string;
    }

    public final wg9.b Q2() {
        return (wg9.b) this.viewModel.getValue();
    }

    public final void R2() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.url = bl.a(Uri.parse(arguments.getString("data")));
        }
    }

    public final void S2() {
        Q2().t(hashCode()).i(getViewLifecycleOwner(), new b(new YtbUserFragment$initSubscribeIcon$1(this)));
        rv2 rv2Var = this.binding;
        if (rv2Var == null) {
            or3.w("binding");
            rv2Var = null;
        }
        rv2Var.d.setOnClickListener(new xg9(this));
    }

    public final void U2() {
        rv2 rv2Var = this.binding;
        rv2 rv2Var2 = null;
        if (rv2Var == null) {
            or3.w("binding");
            rv2Var = null;
        }
        rv2Var.e.setOnMenuItemClickListener(this);
        rv2 rv2Var3 = this.binding;
        if (rv2Var3 == null) {
            or3.w("binding");
            rv2Var3 = null;
        }
        rv2Var3.e.setNavigationIcon(R.drawable.ic_left);
        rv2 rv2Var4 = this.binding;
        if (rv2Var4 == null) {
            or3.w("binding");
            rv2Var4 = null;
        }
        rv2Var4.e.setNavigationOnClickListener(new yg9(this));
        rv2 rv2Var5 = this.binding;
        if (rv2Var5 == null) {
            or3.w("binding");
            rv2Var5 = null;
        }
        rv2Var5.e.setContentInsetsRelative(zl1.b(getContext(), 16), 0);
        rv2 rv2Var6 = this.binding;
        if (rv2Var6 == null) {
            or3.w("binding");
        } else {
            rv2Var2 = rv2Var6;
        }
        rv2Var2.e.setTitle(P2(getArguments()));
    }

    public final void X2(Bundle args) {
        YtbUserMultiTabFragment ytbUserMultiTabFragment = new YtbUserMultiTabFragment();
        ytbUserMultiTabFragment.setArguments(args);
        ytbUserMultiTabFragment.N3(this.url);
        getChildFragmentManager().beginTransaction().replace(R.id.content_fragment, ytbUserMultiTabFragment).commit();
    }

    public final void Z2(Card card) {
        Integer num;
        CardAnnotation cardAnnotationC = ri0.c(card, 20040);
        boolean z = cardAnnotationC != null && ((num = cardAnnotationC.intValue) == null || num.intValue() != 0);
        rv2 rv2Var = null;
        if (cardAnnotationC == null) {
            rv2 rv2Var2 = this.binding;
            if (rv2Var2 == null) {
                or3.w("binding");
            } else {
                rv2Var = rv2Var2;
            }
            rv2Var.d.setVisibility(8);
            return;
        }
        CardAnnotation cardAnnotationC2 = ri0.c(card, 20055);
        boolean z2 = (cardAnnotationC2 == null || TextUtils.isEmpty(cardAnnotationC2.stringValue)) ? false : true;
        rv2 rv2Var3 = this.binding;
        if (rv2Var3 == null) {
            or3.w("binding");
            rv2Var3 = null;
        }
        rv2Var3.d.setVisibility(z2 ? 0 : 8);
        rv2 rv2Var4 = this.binding;
        if (rv2Var4 == null) {
            or3.w("binding");
            rv2Var4 = null;
        }
        if (rv2Var4.d.getVisibility() != 0) {
            return;
        }
        if (z) {
            rv2 rv2Var5 = this.binding;
            if (rv2Var5 == null) {
                or3.w("binding");
            } else {
                rv2Var = rv2Var5;
            }
            ImageView imageView = rv2Var.d;
            or3.e(imageView, "ivSubscribe");
            al3.b(imageView, R.drawable.ic_followed, R.color.content_weak);
            return;
        }
        rv2 rv2Var6 = this.binding;
        if (rv2Var6 == null) {
            or3.w("binding");
        } else {
            rv2Var = rv2Var6;
        }
        ImageView imageView2 = rv2Var.d;
        or3.e(imageView2, "ivSubscribe");
        al3.b(imageView2, R.drawable.ic_follow, R.color.content_main);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
        R2();
        X2(getArguments());
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        or3.f(menu, "menu");
        or3.f(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        String str = this.url;
        int i = 0;
        if (str == null || !StringsKt__StringsKt.S(str, "tab/specials", false, 2, null)) {
            String str2 = this.url;
            if (str2 == null || !StringsKt__StringsKt.S(str2, "tab/youtube/channel", false, 2, null)) {
                i = R.menu.menu_back_to_home;
            }
        } else {
            i = R.menu.menu_curator;
        }
        if (i != 0) {
            inflater.inflate(i, menu);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        rv2 rv2VarC = rv2.c(inflater);
        or3.e(rv2VarC, "inflate(...)");
        this.binding = rv2VarC;
        if (rv2VarC == null) {
            or3.w("binding");
            rv2VarC = null;
        }
        ConstraintLayout constraintLayoutB = rv2VarC.b();
        or3.e(constraintLayoutB, "getRoot(...)");
        return constraintLayoutB;
    }

    @Override
    public void onDestroy() {
        Q2().s(hashCode());
        super.onDestroy();
    }

    @Override
    public boolean onMenuItemClick(MenuItem item) {
        or3.f(item, "item");
        int itemId = item.getItemId();
        if (itemId == 16908332) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.onBackPressed();
            }
            return true;
        }
        if (itemId == R.id.apply_curator) {
            new lt(getContext()).h();
            return true;
        }
        if (itemId != R.id.back_to_home) {
            return false;
        }
        STNavigator sTNavigator = STNavigator.a;
        Context contextRequireContext = requireContext();
        or3.e(contextRequireContext, "requireContext(...)");
        re3.a.a(sTNavigator, contextRequireContext, "/search_home", null, LaunchFlag.SINGLE_TASK, 4, null);
        return true;
    }

    @Override
    public void onResume() {
        super.onResume();
        com.snaptube.premium.minibar.c.d(com.snaptube.premium.minibar.c.a, getActivity(), 0.0f, 2, null);
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        W2();
    }

    @Override
    public FABBatchDownload getMDownloadView() {
        rv2 rv2Var;
        rv2 rv2Var2 = null;
        if (getView() == null || (rv2Var = this.binding) == null) {
            return null;
        }
        if (rv2Var == null) {
            or3.w("binding");
        } else {
            rv2Var2 = rv2Var;
        }
        return rv2Var2.c;
    }
}
