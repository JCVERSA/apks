.class public abstract Landroidx/lifecycle/a;
.super Landroidx/lifecycle/v0$e;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/v0$c;


# instance fields
.field private a:Landroidx/savedstate/c;

.field private b:Landroidx/lifecycle/Lifecycle;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/v0$e;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/savedstate/e;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/lifecycle/v0$e;-><init>()V

    .line 3
    invoke-interface {p1}, Landroidx/savedstate/e;->getSavedStateRegistry()Landroidx/savedstate/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/c;

    .line 4
    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/Lifecycle;

    .line 5
    iput-object p2, p0, Landroidx/lifecycle/a;->c:Landroid/os/Bundle;

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/c;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/Lifecycle;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/lifecycle/a;->c:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Landroidx/lifecycle/n;->b(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/lifecycle/n0;->d()Landroidx/lifecycle/l0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, p1, p2, v1}, Landroidx/lifecycle/a;->c(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/l0;)Landroidx/lifecycle/t0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/t0;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method


# virtual methods
.method public a(Landroidx/lifecycle/t0;)V
    .locals 2

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/Lifecycle;

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/t0;Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method protected abstract c(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/l0;)Landroidx/lifecycle/t0;
.end method

.method public create(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 2

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Landroidx/lifecycle/a;->b:Landroidx/lifecycle/Lifecycle;

    if-eqz v1, :cond_0

    .line 11
    invoke-direct {p0, v0, p1}, Landroidx/lifecycle/a;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 13
    const-string v0, "AbstractSavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 2

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroidx/lifecycle/v0$d;->c:Lp1/a$b;

    invoke-virtual {p2, v0}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/lifecycle/a;->a:Landroidx/savedstate/c;

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, v0, p1}, Landroidx/lifecycle/a;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Landroidx/lifecycle/o0;->b(Lp1/a;)Landroidx/lifecycle/l0;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Landroidx/lifecycle/a;->c(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/l0;)Landroidx/lifecycle/t0;

    move-result-object p1

    :goto_0
    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic create(Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/lifecycle/w0;->c(Landroidx/lifecycle/v0$c;Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method
