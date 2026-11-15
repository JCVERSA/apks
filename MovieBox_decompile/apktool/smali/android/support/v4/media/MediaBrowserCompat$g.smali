.class abstract Landroid/support/v4/media/MediaBrowserCompat$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$f;
.implements Landroid/support/v4/media/MediaBrowserCompat$j;
.implements Landroid/support/v4/media/MediaBrowserCompat$c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field protected final b:Landroid/media/browse/MediaBrowser;

.field protected final c:Landroid/os/Bundle;

.field protected final d:Landroid/support/v4/media/MediaBrowserCompat$b;

.field private final e:Landroidx/collection/a;

.field protected f:I

.field protected g:Landroid/support/v4/media/MediaBrowserCompat$l;

.field protected h:Landroid/os/Messenger;

.field private i:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private j:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$c;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->d:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/a;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroidx/collection/a;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->a:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v0, Landroid/os/Bundle;

    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_0
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->c:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string p4, "extra_client_version"

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string p4, "extra_calling_pid"

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, p4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p0}, Landroid/support/v4/media/MediaBrowserCompat$c;->d(Landroid/support/v4/media/MediaBrowserCompat$c$b;)V

    .line 49
    .line 50
    .line 51
    new-instance p4, Landroid/media/browse/MediaBrowser;

    .line 52
    .line 53
    iget-object p3, p3, Landroid/support/v4/media/MediaBrowserCompat$c;->a:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .line 54
    .line 55
    invoke-direct {p4, p1, p2, p3, v0}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 18
    .line 19
    return-object v0
.end method

.method public b(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/os/Messenger;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroidx/collection/a;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->b:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p3, "onLoadChildren for id that isn\'t subscribed id="

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :cond_2
    invoke-virtual {p1, p4}, Landroid/support/v4/media/MediaBrowserCompat$m;->a(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$n;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-nez p4, :cond_4

    .line 42
    .line 43
    if-nez p3, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$n;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$n;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Bundle;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    if-nez p3, :cond_5

    .line 58
    .line 59
    invoke-virtual {p1, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$n;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$n;->b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->j:Landroid/os/Bundle;

    .line 69
    .line 70
    :cond_6
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->connect()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/os/Messenger;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$l;->g(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public e(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/os/Messenger;

    .line 5
    .line 6
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->d:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->a(Landroid/os/Messenger;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public g(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroidx/collection/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserCompat$m;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroidx/collection/a;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p3, v0}, Landroid/support/v4/media/MediaBrowserCompat$n;->e(Landroid/support/v4/media/MediaBrowserCompat$m;)V

    .line 22
    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    move-object p2, v1

    .line 34
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$m;->e(Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$n;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 42
    .line 43
    iget-object p3, p3, Landroid/support/v4/media/MediaBrowserCompat$n;->a:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .line 44
    .line 45
    invoke-virtual {p2, p1, p3}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :try_start_0
    iget-object p3, p3, Landroid/support/v4/media/MediaBrowserCompat$n;->b:Landroid/os/IBinder;

    .line 50
    .line 51
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/os/Messenger;

    .line 52
    .line 53
    invoke-virtual {v0, p1, p3, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat$l;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string p3, "Remote error subscribing media item: "

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(Landroid/os/Messenger;)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$n;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroidx/collection/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 13
    .line 14
    if-nez v1, :cond_4

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$m;->b()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$m;->c()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    :goto_0
    if-ltz v3, :cond_3

    .line 39
    .line 40
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-ne v4, p2, :cond_2

    .line 45
    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_7

    .line 60
    .line 61
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    if-nez p2, :cond_5

    .line 68
    .line 69
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/os/Messenger;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v1, p1, v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$l;->e(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$m;->b()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$m;->c()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    add-int/lit8 v3, v3, -0x1

    .line 89
    .line 90
    :goto_1
    if-ltz v3, :cond_7

    .line 91
    .line 92
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-ne v4, p2, :cond_6

    .line 97
    .line 98
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 99
    .line 100
    iget-object v5, p2, Landroid/support/v4/media/MediaBrowserCompat$n;->b:Landroid/os/IBinder;

    .line 101
    .line 102
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/os/Messenger;

    .line 103
    .line 104
    invoke-virtual {v4, p1, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$l;->e(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "removeSubscription failed with RemoteException parentId="

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$m;->d()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    if-nez p2, :cond_9

    .line 136
    .line 137
    :cond_8
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->e:Landroidx/collection/a;

    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :cond_9
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onConnected()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "extra_service_version"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->f:I

    .line 18
    .line 19
    const-string v1, "extra_messenger"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/core/app/f;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 28
    .line 29
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->c:Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$l;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 35
    .line 36
    new-instance v1, Landroid/os/Messenger;

    .line 37
    .line 38
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->d:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/os/Messenger;

    .line 44
    .line 45
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->d:Landroid/support/v4/media/MediaBrowserCompat$b;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat$b;->a(Landroid/os/Messenger;)V

    .line 48
    .line 49
    .line 50
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->g:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 51
    .line 52
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->a:Landroid/content/Context;

    .line 53
    .line 54
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->h:Landroid/os/Messenger;

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$l;->d(Landroid/content/Context;Landroid/os/Messenger;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :cond_1
    const-string v1, "extra_session_binder"

    .line 60
    .line 61
    invoke-static {v0, v1}, Landroidx/core/app/f;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/support/v4/media/session/b$a;->X0(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->b:Landroid/media/browse/MediaBrowser;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$g;->i:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :catch_1
    move-exception v0

    .line 85
    const-string v1, "MediaBrowserCompat"

    .line 86
    .line 87
    const-string v2, "Unexpected IllegalStateException"

    .line 88
    .line 89
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    return-void
.end method
