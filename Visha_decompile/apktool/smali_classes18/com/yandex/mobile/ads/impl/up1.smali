.class public abstract Lcom/yandex/mobile/ads/impl/up1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/up1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/yandex/mobile/ads/impl/up1<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/ti2$a;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/Object;

.field private g:Lcom/yandex/mobile/ads/impl/xq1$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Integer;

.field private i:Lcom/yandex/mobile/ads/impl/iq1;

.field private j:Z

.field private k:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private l:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Lcom/yandex/mobile/ads/impl/nr1;

.field private p:Lcom/yandex/mobile/ads/impl/tm$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/Object;

.field private r:Lcom/yandex/mobile/ads/impl/up1$b;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/mobile/ads/impl/xq1$a;)V
    .locals 2
    .param p3    # Lcom/yandex/mobile/ads/impl/xq1$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/yandex/mobile/ads/impl/ti2$a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/ti2$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ti2$a;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->b:Lcom/yandex/mobile/ads/impl/ti2$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/up1;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/up1;->k:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/up1;->l:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/up1;->m:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/up1;->n:Z

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/up1;->p:Lcom/yandex/mobile/ads/impl/tm$a;

    iput p1, p0, Lcom/yandex/mobile/ads/impl/up1;->c:I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/up1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/up1;->g:Lcom/yandex/mobile/ads/impl/xq1$a;

    new-instance p1, Lcom/yandex/mobile/ads/impl/m00;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/m00;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/m00;)V

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/up1;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/up1;->e:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/up1;)Lcom/yandex/mobile/ads/impl/ti2$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->b:Lcom/yandex/mobile/ads/impl/ti2$a;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/xq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/up1;->k:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/up1;->g:Lcom/yandex/mobile/ads/impl/xq1$a;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->i:Lcom/yandex/mobile/ads/impl/iq1;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/iq1;->a(Lcom/yandex/mobile/ads/impl/up1;I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/iq1;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/up1;->i:Lcom/yandex/mobile/ads/impl/iq1;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/m00;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/up1;->o:Lcom/yandex/mobile/ads/impl/nr1;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->g:Lcom/yandex/mobile/ads/impl/xq1$a;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/xq1$a;->a(Lcom/yandex/mobile/ads/impl/si2;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/tm$a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/up1;->p:Lcom/yandex/mobile/ads/impl/tm$a;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/up1$b;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/up1;->r:Lcom/yandex/mobile/ads/impl/up1$b;

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xq1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "*>;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/up1;->r:Lcom/yandex/mobile/ads/impl/up1$b;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 15
    check-cast v1, Lcom/yandex/mobile/ads/impl/hj2;

    invoke-virtual {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/hj2;->a(Lcom/yandex/mobile/ads/impl/up1;Lcom/yandex/mobile/ads/impl/xq1;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 26
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/ti2$a;->c:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->b:Lcom/yandex/mobile/ads/impl/ti2$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/ti2$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public b(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/si2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final b(I)V
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/up1;->h:Ljava/lang/Integer;

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/up1;->q:Ljava/lang/Object;

    return-void
.end method

.method public b()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/ai;
        }
    .end annotation

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/tm$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->p:Lcom/yandex/mobile/ads/impl/tm$a;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->i:Lcom/yandex/mobile/ads/impl/iq1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/iq1;->b(Lcom/yandex/mobile/ads/impl/up1;)V

    .line 3
    :cond_0
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/ti2$a;->c:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    new-instance v3, Lcom/yandex/mobile/ads/impl/up1$a;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/up1$a;-><init>(Lcom/yandex/mobile/ads/impl/up1;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/up1;->b:Lcom/yandex/mobile/ads/impl/ti2$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/ti2$a;->a(Ljava/lang/String;J)V

    .line 9
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/up1;->b:Lcom/yandex/mobile/ads/impl/ti2$a;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ti2$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/yandex/mobile/ads/impl/up1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->h:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/up1;->h:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/f9;->a(I)I

    move-result p0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/f9;->a(I)I

    move-result p1

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->l()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/up1;->c:I

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/ai;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/up1;->c:I

    return p0
.end method

.method public g()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final h()Lcom/yandex/mobile/ads/impl/nr1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->o:Lcom/yandex/mobile/ads/impl/nr1;

    return-object p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->o:Lcom/yandex/mobile/ads/impl/nr1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/nr1;->a()I

    move-result p0

    return p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/up1;->e:I

    return p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/up1;->l:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/up1;->k:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/up1;->l:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/up1;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/up1;->r:Lcom/yandex/mobile/ads/impl/up1$b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    check-cast v1, Lcom/yandex/mobile/ads/impl/hj2;

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/hj2;->b(Lcom/yandex/mobile/ads/impl/up1;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/up1;->j:Z

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/up1;->n:Z

    return-void
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/up1;->m:Z

    return-void
.end method

.method public final t()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/up1;->j:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yandex/mobile/ads/impl/up1;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/up1;->g()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/wp1;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/up1;->h:Ljava/lang/Integer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/up1;->n:Z

    return p0
.end method

.method public final v()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/up1;->m:Z

    return p0
.end method
