package androidx.fragment.app;

import androidx.annotation.MainThread;
import androidx.p004lifecycle.ViewModel;
import androidx.p004lifecycle.ViewModelLazy;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStore;
import androidx.p004lifecycle.ViewModelStoreOwner;
import defpackage.c74;
import defpackage.de5;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yi5;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aK\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u000e\b\n\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0087\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a;\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0010\b\n\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001aQ\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0013"}, d2 = {"Landroidx/lifecycle/ViewModel;", "VM", "Landroidx/fragment/app/Fragment;", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelStoreOwner;", "ownerProducer", "Landroidx/lifecycle/ViewModelProvider$Factory;", "factoryProducer", "Lyi5;", "viewModels", "(Landroidx/fragment/app/Fragment;Lc74;Lc74;)Lyi5;", "activityViewModels", "(Landroidx/fragment/app/Fragment;Lc74;)Lyi5;", "Lde5;", "viewModelClass", "Landroidx/lifecycle/ViewModelStore;", "storeProducer", "createViewModelLazy", "(Landroidx/fragment/app/Fragment;Lde5;Lc74;Lc74;)Lyi5;", "fragment-ktx_release"}, k = 2, mv = {1, 4, 1})
public final class FragmentViewModelLazyKt {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 4, 1})
    public static final class AnonymousClass1 extends Lambda implements c74 {
        final Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        @Override
        public final ViewModelStore invoke() {
            FragmentActivity fragmentActivityRequireActivity = this.$this_activityViewModels.requireActivity();
            y45.i(fragmentActivityRequireActivity, "requireActivity()");
            ViewModelStore viewModelStore = fragmentActivityRequireActivity.getViewModelStore();
            y45.i(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 4, 1})
    public static final class AnonymousClass2 extends Lambda implements c74 {
        final Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        @Override
        public final ViewModelProvider.Factory invoke() {
            FragmentActivity fragmentActivityRequireActivity = this.$this_activityViewModels.requireActivity();
            y45.i(fragmentActivityRequireActivity, "requireActivity()");
            return fragmentActivityRequireActivity.getDefaultViewModelProviderFactory();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 4, 1})
    public static final class C05002 extends Lambda implements c74 {
        final c74 $ownerProducer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05002(c74 c74Var) {
            super(0);
            this.$ownerProducer = c74Var;
        }

        @Override
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = ((ViewModelStoreOwner) this.$ownerProducer.invoke()).getViewModelStore();
            y45.i(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    @MainThread
    public static final <VM extends ViewModel> yi5 activityViewModels(Fragment fragment, c74 c74Var) {
        y45.j(fragment, "$this$activityViewModels");
        y45.p(4, "VM");
        de5 de5VarB = xq8.b(ViewModel.class);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(fragment);
        if (c74Var == null) {
            c74Var = new AnonymousClass2(fragment);
        }
        return createViewModelLazy(fragment, de5VarB, anonymousClass1, c74Var);
    }

    public static yi5 activityViewModels$default(Fragment fragment, c74 c74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            c74Var = null;
        }
        y45.j(fragment, "$this$activityViewModels");
        y45.p(4, "VM");
        de5 de5VarB = xq8.b(ViewModel.class);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(fragment);
        if (c74Var == null) {
            c74Var = new AnonymousClass2(fragment);
        }
        return createViewModelLazy(fragment, de5VarB, anonymousClass1, c74Var);
    }

    @MainThread
    public static final <VM extends ViewModel> yi5 createViewModelLazy(final Fragment fragment, de5 de5Var, c74 c74Var, c74 c74Var2) {
        y45.j(fragment, "$this$createViewModelLazy");
        y45.j(de5Var, "viewModelClass");
        y45.j(c74Var, "storeProducer");
        if (c74Var2 == null) {
            c74Var2 = new c74() {
                {
                    super(0);
                }

                @Override
                public final ViewModelProvider.Factory invoke() {
                    return fragment.getDefaultViewModelProviderFactory();
                }
            };
        }
        return new ViewModelLazy(de5Var, c74Var, c74Var2);
    }

    public static yi5 createViewModelLazy$default(Fragment fragment, de5 de5Var, c74 c74Var, c74 c74Var2, int i, Object obj) {
        if ((i & 4) != 0) {
            c74Var2 = null;
        }
        return createViewModelLazy(fragment, de5Var, c74Var, c74Var2);
    }

    @MainThread
    public static final <VM extends ViewModel> yi5 viewModels(Fragment fragment, c74 c74Var, c74 c74Var2) {
        y45.j(fragment, "$this$viewModels");
        y45.j(c74Var, "ownerProducer");
        y45.p(4, "VM");
        return createViewModelLazy(fragment, xq8.b(ViewModel.class), new C05002(c74Var), c74Var2);
    }

    public static yi5 viewModels$default(final Fragment fragment, c74 c74Var, c74 c74Var2, int i, Object obj) {
        if ((i & 1) != 0) {
            c74Var = new c74() {
                {
                    super(0);
                }

                @Override
                public final Fragment invoke() {
                    return fragment;
                }
            };
        }
        if ((i & 2) != 0) {
            c74Var2 = null;
        }
        y45.j(fragment, "$this$viewModels");
        y45.j(c74Var, "ownerProducer");
        y45.p(4, "VM");
        return createViewModelLazy(fragment, xq8.b(ViewModel.class), new C05002(c74Var), c74Var2);
    }
}
