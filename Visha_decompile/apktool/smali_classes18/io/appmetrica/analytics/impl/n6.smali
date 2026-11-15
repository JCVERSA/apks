.class public final Lio/appmetrica/analytics/impl/n6;
.super Lio/appmetrica/analytics/impl/Eg;
.source "SourceFile"


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Lio/appmetrica/analytics/impl/nh;

.field public final h:Lio/appmetrica/analytics/impl/lc;

.field public final i:Lio/appmetrica/analytics/impl/w6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/nh;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lio/appmetrica/analytics/impl/Eg;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/nh;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/n6;->f:Landroid/content/Context;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/n6;->g:Lio/appmetrica/analytics/impl/nh;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/lc;

    move-result-object p2

    iput-object p2, p0, Lio/appmetrica/analytics/impl/n6;->h:Lio/appmetrica/analytics/impl/lc;

    new-instance p2, Lio/appmetrica/analytics/impl/w6;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/w6;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/n6;->i:Lio/appmetrica/analytics/impl/w6;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/ph;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 13
    :try_start_1
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/ph;->c:Z

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n6;->h:Lio/appmetrica/analytics/impl/lc;

    const-string v1, "AppMetrica"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/lc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n6;->g:Lio/appmetrica/analytics/impl/nh;

    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/impl/n6;->i:Lio/appmetrica/analytics/impl/w6;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/w6;->a(Lio/appmetrica/analytics/impl/nh;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ph;->a:Lio/appmetrica/analytics/impl/i0;

    .line 18
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i0;->c()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/ph;->c:Z

    .line 20
    invoke-super {p0}, Lio/appmetrica/analytics/impl/ph;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/nh;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/nh;->a:Lio/appmetrica/analytics/impl/a6;

    .line 2
    iget v0, v0, Lio/appmetrica/analytics/impl/a6;->g:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n6;->f:Landroid/content/Context;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/dk;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nh;->a:Lio/appmetrica/analytics/impl/a6;

    .line 5
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/16 v2, 0x1702

    .line 6
    iput v2, v1, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 7
    iget-object v2, p1, Lio/appmetrica/analytics/impl/nh;->e:Lio/appmetrica/analytics/impl/xh;

    .line 8
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/xh;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/a6;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/n6;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/n6;->i:Lio/appmetrica/analytics/impl/w6;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/w6;->a(Lio/appmetrica/analytics/impl/nh;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/n6;->i:Lio/appmetrica/analytics/impl/w6;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/w6;->a(Lio/appmetrica/analytics/impl/nh;)V

    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/n6;->g:Lio/appmetrica/analytics/impl/nh;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/n6;->a(Lio/appmetrica/analytics/impl/nh;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/n6;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
