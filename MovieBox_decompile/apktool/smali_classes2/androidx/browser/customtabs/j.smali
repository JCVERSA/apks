.class public final Landroidx/browser/customtabs/j;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lc/b;

.field private final c:Lc/a;

.field private final d:Landroid/content/ComponentName;

.field private final e:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lc/b;Lc/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/browser/customtabs/j;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    .line 14
    .line 15
    iput-object p3, p0, Landroidx/browser/customtabs/j;->d:Landroid/content/ComponentName;

    .line 16
    .line 17
    iput-object p4, p0, Landroidx/browser/customtabs/j;->e:Landroid/app/PendingIntent;

    .line 18
    .line 19
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/j;->e:Landroid/app/PendingIntent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "android.support.customtabs.extra.SESSION_ID"

    .line 6
    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/j;->a(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private c(Landroidx/browser/customtabs/l;)Lc/c$a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/browser/customtabs/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/j$a;-><init>(Landroidx/browser/customtabs/j;Landroidx/browser/customtabs/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method d()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method e()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/j;->d:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object v0
.end method

.method f()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/j;->e:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lc/b;->B(Lc/a;Landroid/os/Bundle;)Z

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v1, "This method isn\'t supported by the Custom Tabs implementation."

    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public h(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/j;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1, p2, p3}, Lc/b;->U(Lc/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public i(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/j;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Landroidx/browser/customtabs/j;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    .line 11
    .line 12
    invoke-interface {v1, v2, p1, p2}, Lc/b;->W(Lc/a;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    monitor-exit v0

    .line 17
    return p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    monitor-exit v0

    .line 21
    const/4 p1, -0x2

    .line 22
    return p1

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public j(Landroidx/browser/customtabs/l;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/browser/customtabs/j;->c(Landroidx/browser/customtabs/l;)Lc/c$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/j;->b:Lc/b;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/browser/customtabs/j;->c:Lc/a;

    .line 8
    .line 9
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1, p2}, Lc/b;->P0(Lc/a;Landroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 20
    .line 21
    const-string v0, "This method isn\'t supported by the Custom Tabs implementation."

    .line 22
    .line 23
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p2
.end method
