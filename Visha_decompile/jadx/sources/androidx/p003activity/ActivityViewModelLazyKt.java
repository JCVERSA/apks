package androidx.p003activity;

import androidx.annotation.MainThread;
import androidx.p004lifecycle.ViewModel;
import androidx.p004lifecycle.ViewModelLazy;
import androidx.p004lifecycle.ViewModelStore;
import androidx.p004lifecycle.viewmodel.CreationExtras;
import defpackage.c74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yi5;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0010\b\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001aM\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\u0010\b\n\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00032\u0010\b\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\f"}, d2 = {"Landroidx/lifecycle/ViewModel;", "VM", "Landroidx/activity/ComponentActivity;", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "factoryProducer", "Lyi5;", "viewModels", "(Landroidx/activity/ComponentActivity;Lc74;)Lyi5;", "Landroidx/lifecycle/viewmodel/CreationExtras;", "extrasProducer", "(Landroidx/activity/ComponentActivity;Lc74;Lc74;)Lyi5;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ActivityViewModelLazyKt {

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    public static final class AnonymousClass1 extends Lambda implements c74 {
        final ComponentActivity $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ComponentActivity componentActivity) {
            super(0);
            this.$this_viewModels = componentActivity;
        }

        @Override
        public final ViewModelStore invoke() {
            return this.$this_viewModels.getViewModelStore();
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    public static final class AnonymousClass2 extends Lambda implements c74 {
        final ComponentActivity $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ComponentActivity componentActivity) {
            super(0);
            this.$this_viewModels = componentActivity;
        }

        @Override
        public final CreationExtras invoke() {
            return this.$this_viewModels.getDefaultViewModelCreationExtras();
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    public static final class AnonymousClass3 extends Lambda implements c74 {
        final ComponentActivity $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(ComponentActivity componentActivity) {
            super(0);
            this.$this_viewModels = componentActivity;
        }

        @Override
        public final ViewModelStore invoke() {
            return this.$this_viewModels.getViewModelStore();
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
    public static final class AnonymousClass4 extends Lambda implements c74 {
        final c74 $extrasProducer;
        final ComponentActivity $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(c74 c74Var, ComponentActivity componentActivity) {
            super(0);
            this.$extrasProducer = c74Var;
            this.$this_viewModels = componentActivity;
        }

        @Override
        public final CreationExtras invoke() {
            CreationExtras creationExtras;
            c74 c74Var = this.$extrasProducer;
            return (c74Var == null || (creationExtras = (CreationExtras) c74Var.invoke()) == null) ? this.$this_viewModels.getDefaultViewModelCreationExtras() : creationExtras;
        }
    }

    @MainThread
    public static final <VM extends ViewModel> yi5 viewModels(ComponentActivity componentActivity, c74 c74Var) {
        y45.j(componentActivity, "<this>");
        if (c74Var == null) {
            c74Var = new ActivityViewModelLazyKt$viewModels$factoryPromise$1(componentActivity);
        }
        y45.p(4, "VM");
        return new ViewModelLazy(xq8.b(ViewModel.class), new AnonymousClass1(componentActivity), c74Var, new AnonymousClass2(componentActivity));
    }

    public static yi5 viewModels$default(ComponentActivity componentActivity, c74 c74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            c74Var = null;
        }
        y45.j(componentActivity, "<this>");
        if (c74Var == null) {
            c74Var = new ActivityViewModelLazyKt$viewModels$factoryPromise$1(componentActivity);
        }
        y45.p(4, "VM");
        return new ViewModelLazy(xq8.b(ViewModel.class), new AnonymousClass1(componentActivity), c74Var, new AnonymousClass2(componentActivity));
    }

    @MainThread
    public static final <VM extends ViewModel> yi5 viewModels(ComponentActivity componentActivity, c74 c74Var, c74 c74Var2) {
        y45.j(componentActivity, "<this>");
        if (c74Var2 == null) {
            c74Var2 = new ActivityViewModelLazyKt$viewModels$factoryPromise$2(componentActivity);
        }
        y45.p(4, "VM");
        return new ViewModelLazy(xq8.b(ViewModel.class), new AnonymousClass3(componentActivity), c74Var2, new AnonymousClass4(c74Var, componentActivity));
    }

    public static yi5 viewModels$default(ComponentActivity componentActivity, c74 c74Var, c74 c74Var2, int i, Object obj) {
        if ((i & 1) != 0) {
            c74Var = null;
        }
        if ((i & 2) != 0) {
            c74Var2 = null;
        }
        y45.j(componentActivity, "<this>");
        if (c74Var2 == null) {
            c74Var2 = new ActivityViewModelLazyKt$viewModels$factoryPromise$2(componentActivity);
        }
        y45.p(4, "VM");
        return new ViewModelLazy(xq8.b(ViewModel.class), new AnonymousClass3(componentActivity), c74Var2, new AnonymousClass4(c74Var, componentActivity));
    }
}
