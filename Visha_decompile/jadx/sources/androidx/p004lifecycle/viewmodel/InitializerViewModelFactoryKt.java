package androidx.p004lifecycle.viewmodel;

import androidx.p004lifecycle.ViewModel;
import androidx.p004lifecycle.ViewModelProvider;
import defpackage.e74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a9\u0010\n\u001a\u00020\u0002\"\n\b\u0000\u0010\b\u0018\u0001*\u00020\u0007*\u00020\u00012\u0014\b\b\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u0000H\u0086\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\f"}, d2 = {"Lkotlin/Function1;", "Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;", "Lzfb;", "builder", "Landroidx/lifecycle/ViewModelProvider$Factory;", "viewModelFactory", "(Le74;)Landroidx/lifecycle/ViewModelProvider$Factory;", "Landroidx/lifecycle/ViewModel;", "VM", "Landroidx/lifecycle/viewmodel/CreationExtras;", "initializer", "(Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;Le74;)V", "lifecycle-viewmodel_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class InitializerViewModelFactoryKt {
    public static final <VM extends ViewModel> void initializer(InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder, e74 e74Var) {
        y45.j(initializerViewModelFactoryBuilder, "<this>");
        y45.j(e74Var, "initializer");
        y45.p(4, "VM");
        initializerViewModelFactoryBuilder.addInitializer(xq8.b(ViewModel.class), e74Var);
    }

    public static final ViewModelProvider.Factory viewModelFactory(e74 e74Var) {
        y45.j(e74Var, "builder");
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        e74Var.invoke(initializerViewModelFactoryBuilder);
        return initializerViewModelFactoryBuilder.build();
    }
}
