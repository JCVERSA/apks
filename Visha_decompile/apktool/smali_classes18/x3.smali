.class public abstract Lx3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:[Lz3;

.field public c:I

.field public d:I

.field public e:Lg2a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic e(Lx3;)I
    .locals 0

    iget p0, p0, Lx3;->c:I

    return p0
.end method

.method public static final synthetic g(Lx3;)[Lz3;
    .locals 0

    iget-object p0, p0, Lx3;->b:[Lz3;

    return-object p0
.end method


# virtual methods
.method public final f()Lgx9;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx3;->e:Lg2a;

    if-nez v0, :cond_0

    new-instance v0, Lg2a;

    iget v1, p0, Lx3;->c:I

    invoke-direct {v0, v1}, Lg2a;-><init>(I)V

    iput-object v0, p0, Lx3;->e:Lg2a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final h()Lz3;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lx3;->b:[Lz3;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lx3;->j(I)[Lz3;

    move-result-object v0

    iput-object v0, p0, Lx3;->b:[Lz3;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v2, p0, Lx3;->c:I

    array-length v3, v0

    if-lt v2, v3, :cond_1

    array-length v2, v0

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Lz3;

    iput-object v1, p0, Lx3;->b:[Lz3;

    check-cast v0, [Lz3;

    :cond_1
    :goto_0
    iget v1, p0, Lx3;->d:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lx3;->i()Lz3;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {v2, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lz3;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Lx3;->d:I

    iget v0, p0, Lx3;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lx3;->c:I

    iget-object v0, p0, Lx3;->e:Lg2a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lg2a;->Z(I)Z

    :cond_5
    return-object v2

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract i()Lz3;
.end method

.method public abstract j(I)[Lz3;
.end method

.method public final k(Lz3;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lx3;->c:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lx3;->c:I

    iget-object v2, p0, Lx3;->e:Lg2a;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v3, p0, Lx3;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lz3;->b(Ljava/lang/Object;)[Lwh1;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length p0, p1

    :goto_1
    if-ge v3, p0, :cond_2

    aget-object v0, p1, v3

    if-eqz v0, :cond_1

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object v4, Lzfb;->a:Lzfb;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lg2a;->Z(I)Z

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lx3;->c:I

    return p0
.end method

.method public final m()[Lz3;
    .locals 0

    iget-object p0, p0, Lx3;->b:[Lz3;

    return-object p0
.end method
