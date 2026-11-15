.class public final Landroidx/lifecycle/q0;
.super Landroidx/lifecycle/v0$e;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/v0$c;


# instance fields
.field private a:Landroid/app/Application;

.field private final b:Landroidx/lifecycle/v0$c;

.field private c:Landroid/os/Bundle;

.field private d:Landroidx/lifecycle/Lifecycle;

.field private e:Landroidx/savedstate/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/v0$e;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/v0$a;

    invoke-direct {v0}, Landroidx/lifecycle/v0$a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/q0;->b:Landroidx/lifecycle/v0$c;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/e;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/v0$e;-><init>()V

    .line 4
    invoke-interface {p2}, Landroidx/savedstate/e;->getSavedStateRegistry()Landroidx/savedstate/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/q0;->e:Landroidx/savedstate/c;

    .line 5
    invoke-interface {p2}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    .line 6
    iput-object p3, p0, Landroidx/lifecycle/q0;->c:Landroid/os/Bundle;

    .line 7
    iput-object p1, p0, Landroidx/lifecycle/q0;->a:Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 8
    sget-object p2, Landroidx/lifecycle/v0$a;->e:Landroidx/lifecycle/v0$a$b;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/v0$a$b;->a(Landroid/app/Application;)Landroidx/lifecycle/v0$a;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Landroidx/lifecycle/v0$a;

    invoke-direct {p1}, Landroidx/lifecycle/v0$a;-><init>()V

    .line 10
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/q0;->b:Landroidx/lifecycle/v0$c;

    return-void
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
    iget-object v0, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/lifecycle/q0;->e:Landroidx/savedstate/c;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/t0;Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "key"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "modelClass"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    const-class v3, Landroidx/lifecycle/b;

    .line 18
    .line 19
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/lifecycle/q0;->a:Landroid/app/Application;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-static {}, Landroidx/lifecycle/r0;->a()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {p2, v4}, Landroidx/lifecycle/r0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Landroidx/lifecycle/r0;->b()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {p2, v4}, Landroidx/lifecycle/r0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    :goto_0
    if-nez v4, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/lifecycle/q0;->a:Landroid/app/Application;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/lifecycle/q0;->b:Landroidx/lifecycle/v0$c;

    .line 53
    .line 54
    invoke-interface {p1, p2}, Landroidx/lifecycle/v0$c;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    sget-object p1, Landroidx/lifecycle/v0$d;->a:Landroidx/lifecycle/v0$d$a;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/lifecycle/v0$d$a;->a()Landroidx/lifecycle/v0$d;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, p2}, Landroidx/lifecycle/v0$d;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_1
    return-object p1

    .line 70
    :cond_2
    iget-object v5, p0, Landroidx/lifecycle/q0;->e:Landroidx/savedstate/c;

    .line 71
    .line 72
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v6, p0, Landroidx/lifecycle/q0;->c:Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-static {v5, v2, p1, v6}, Landroidx/lifecycle/n;->b(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/n0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/lifecycle/q0;->a:Landroid/app/Application;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/lifecycle/n0;->d()Landroidx/lifecycle/l0;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v5, 0x2

    .line 95
    new-array v5, v5, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v2, v5, v1

    .line 98
    .line 99
    aput-object v3, v5, v0

    .line 100
    .line 101
    invoke-static {p2, v4, v5}, Landroidx/lifecycle/r0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/t0;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroidx/lifecycle/n0;->d()Landroidx/lifecycle/l0;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v2, v0, v1

    .line 113
    .line 114
    invoke-static {p2, v4, v0}, Landroidx/lifecycle/r0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/t0;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    :goto_2
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 119
    .line 120
    invoke-virtual {p2, v0, p1}, Landroidx/lifecycle/t0;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    .line 121
    .line 122
    .line 123
    return-object p2

    .line 124
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 125
    .line 126
    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method

.method public create(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/q0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "modelClass"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extras"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Landroidx/lifecycle/v0$d;->c:Lp1/a$b;

    invoke-virtual {p2, v2}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 3
    sget-object v3, Landroidx/lifecycle/o0;->a:Lp1/a$b;

    invoke-virtual {p2, v3}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    sget-object v3, Landroidx/lifecycle/o0;->b:Lp1/a$b;

    invoke-virtual {p2, v3}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5
    sget-object v2, Landroidx/lifecycle/v0$a;->g:Lp1/a$b;

    invoke-virtual {p2, v2}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Landroidx/lifecycle/b;

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Landroidx/lifecycle/r0;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/lifecycle/r0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Landroidx/lifecycle/r0;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/lifecycle/r0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/lifecycle/q0;->b:Landroidx/lifecycle/v0$c;

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/v0$c;->create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 10
    invoke-static {p2}, Landroidx/lifecycle/o0;->b(Lp1/a;)Landroidx/lifecycle/l0;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object p2, v3, v0

    invoke-static {p1, v4, v3}, Landroidx/lifecycle/r0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/t0;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/o0;->b(Lp1/a;)Landroidx/lifecycle/l0;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p1, v4, v0}, Landroidx/lifecycle/r0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/t0;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p0, v2, p1}, Landroidx/lifecycle/q0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    :goto_1
    return-object p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 17
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
