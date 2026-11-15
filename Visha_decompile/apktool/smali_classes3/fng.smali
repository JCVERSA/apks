.class public final Lfng;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lrng;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lfng;->j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1

    sget-object v0, Lb0f;->a:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Li8g;

    invoke-direct {v0, p0, p1}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
