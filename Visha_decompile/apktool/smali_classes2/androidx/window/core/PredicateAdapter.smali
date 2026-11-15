.class public final Landroidx/window/core/PredicateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanUncheckedReflection"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/PredicateAdapter$BaseHandler;,
        Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;,
        Landroidx/window/core/PredicateAdapter$PredicateStubHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u00002\u00020\u0001:\u0003\u001a\u001b\u001cB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006H\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0008J9\u0010\u0011\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u000b*\u00020\u00012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JW\u0010\u0017\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u000b*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0013*\u00020\u00012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000c2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f0\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/window/core/PredicateAdapter;",
        "",
        "Ljava/lang/ClassLoader;",
        "loader",
        "<init>",
        "(Ljava/lang/ClassLoader;)V",
        "Ljava/lang/Class;",
        "predicateClassOrThrow",
        "()Ljava/lang/Class;",
        "predicateClassOrNull$window_release",
        "predicateClassOrNull",
        "T",
        "Lde5;",
        "clazz",
        "Lkotlin/Function1;",
        "",
        "predicate",
        "buildPredicate",
        "(Lde5;Le74;)Ljava/lang/Object;",
        "U",
        "firstClazz",
        "secondClazz",
        "Lkotlin/Function2;",
        "buildPairPredicate",
        "(Lde5;Lde5;Ls74;)Ljava/lang/Object;",
        "Ljava/lang/ClassLoader;",
        "BaseHandler",
        "PairPredicateStubHandler",
        "PredicateStubHandler",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/core/PredicateAdapter;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private final predicateClassOrThrow()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/core/PredicateAdapter;->loader:Ljava/lang/ClassLoader;

    const-string v0, "java.util.function.Predicate"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"java.util.function.Predicate\")"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final buildPairPredicate(Lde5;Lde5;Ls74;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lde5;",
            "Lde5;",
            "Ls74;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "firstClazz"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondClazz"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;

    invoke-direct {v0, p1, p2, p3}, Landroidx/window/core/PredicateAdapter$PairPredicateStubHandler;-><init>(Lde5;Lde5;Ls74;)V

    iget-object p1, p0, Landroidx/window/core/PredicateAdapter;->loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Landroidx/window/core/PredicateAdapter;->predicateClassOrThrow()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p0, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newProxyInstance(loader,\u2026row()), predicateHandler)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final buildPredicate(Lde5;Le74;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lde5;",
            "Le74;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/core/PredicateAdapter$PredicateStubHandler;

    invoke-direct {v0, p1, p2}, Landroidx/window/core/PredicateAdapter$PredicateStubHandler;-><init>(Lde5;Le74;)V

    iget-object p1, p0, Landroidx/window/core/PredicateAdapter;->loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Landroidx/window/core/PredicateAdapter;->predicateClassOrThrow()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p0, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newProxyInstance(loader,\u2026row()), predicateHandler)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final predicateClassOrNull$window_release()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroidx/window/core/PredicateAdapter;->predicateClassOrThrow()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
