.class public abstract Landroidx/browser/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "source.java"


# instance fields
.field final a:Landroidx/collection/x0;

.field private b:Lc/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/x0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/x0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/collection/x0;

    .line 10
    .line 11
    new-instance v0, Landroidx/browser/customtabs/CustomTabsService$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/browser/customtabs/CustomTabsService$a;-><init>(Landroidx/browser/customtabs/CustomTabsService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsService;->b:Lc/b$a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected a(Landroidx/browser/customtabs/k;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/collection/x0;

    .line 3
    .line 4
    monitor-enter v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Landroidx/browser/customtabs/k;->a()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/collection/x0;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Landroidx/collection/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    .line 22
    .line 23
    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/collection/x0;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Landroidx/collection/x0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    monitor-exit v1

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :catch_0
    return v0
.end method

.method protected abstract b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected c(Landroidx/browser/customtabs/k;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected abstract d(Landroidx/browser/customtabs/k;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
.end method

.method protected abstract e(Landroidx/browser/customtabs/k;)Z
.end method

.method protected abstract f(Landroidx/browser/customtabs/k;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method protected abstract g(Landroidx/browser/customtabs/k;Landroid/net/Uri;ILandroid/os/Bundle;)Z
.end method

.method protected abstract h(Landroidx/browser/customtabs/k;Landroid/net/Uri;)Z
.end method

.method protected i(Landroidx/browser/customtabs/k;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->h(Landroidx/browser/customtabs/k;Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected j(Landroidx/browser/customtabs/k;Landroidx/browser/customtabs/l;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected abstract k(Landroidx/browser/customtabs/k;Landroid/os/Bundle;)Z
.end method

.method protected abstract l(Landroidx/browser/customtabs/k;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method protected abstract m(J)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService;->b:Lc/b$a;

    .line 2
    .line 3
    return-object p1
.end method
