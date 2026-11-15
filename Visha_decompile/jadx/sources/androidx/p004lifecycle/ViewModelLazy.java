package androidx.p004lifecycle;

import androidx.p004lifecycle.ViewModel;
import androidx.p004lifecycle.viewmodel.CreationExtras;
import defpackage.c74;
import defpackage.de5;
import defpackage.ed5;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003BC\b\u0007\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0006\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0013R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0013R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0013R\u0018\u0010\u0014\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Landroidx/lifecycle/ViewModelLazy;", "Landroidx/lifecycle/ViewModel;", "VM", "Lyi5;", "Lde5;", "viewModelClass", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelStore;", "storeProducer", "Landroidx/lifecycle/ViewModelProvider$Factory;", "factoryProducer", "Landroidx/lifecycle/viewmodel/CreationExtras;", "extrasProducer", MethodDecl.initName, "(Lde5;Lc74;Lc74;Lc74;)V", "", "isInitialized", "()Z", "Lde5;", "Lc74;", "cached", "Landroidx/lifecycle/ViewModel;", "getValue", "()Landroidx/lifecycle/ViewModel;", ES6Iterator.VALUE_PROPERTY, "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ViewModelLazy<VM extends ViewModel> implements yi5 {
    private VM cached;
    private final c74 extrasProducer;
    private final c74 factoryProducer;
    private final c74 storeProducer;
    private final de5 viewModelClass;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(de5 de5Var, c74 c74Var, c74 c74Var2) {
        this(de5Var, c74Var, c74Var2, null, 8, null);
        y45.j(de5Var, "viewModelClass");
        y45.j(c74Var, "storeProducer");
        y45.j(c74Var2, "factoryProducer");
    }

    @Override
    public boolean isInitialized() {
        return this.cached != null;
    }

    public ViewModelLazy(de5 de5Var, c74 c74Var, c74 c74Var2, c74 c74Var3) {
        y45.j(de5Var, "viewModelClass");
        y45.j(c74Var, "storeProducer");
        y45.j(c74Var2, "factoryProducer");
        y45.j(c74Var3, "extrasProducer");
        this.viewModelClass = de5Var;
        this.storeProducer = c74Var;
        this.factoryProducer = c74Var2;
        this.extrasProducer = c74Var3;
    }

    @Override
    public VM getValue() {
        VM vm = this.cached;
        if (vm != null) {
            return vm;
        }
        VM vm2 = (VM) new ViewModelProvider((ViewModelStore) this.storeProducer.invoke(), (ViewModelProvider.Factory) this.factoryProducer.invoke(), (CreationExtras) this.extrasProducer.invoke()).get(ed5.b(this.viewModelClass));
        this.cached = vm2;
        return vm2;
    }

    public ViewModelLazy(de5 de5Var, c74 c74Var, c74 c74Var2, c74 c74Var3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(de5Var, c74Var, c74Var2, (i & 8) != 0 ? new c74() {
            @Override
            public final CreationExtras.Empty invoke() {
                return CreationExtras.Empty.INSTANCE;
            }
        } : c74Var3);
    }
}
