.class public final Lcom/wecloud/load/lib/o$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/o;->i(Landroid/content/Context;Lcom/wecloud/load/lib/h;Lcom/wecloud/load/lib/SoDownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wecloud/load/lib/o;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wecloud/load/lib/o;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/wecloud/load/lib/o$b;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/wecloud/load/lib/i$a;->X0(Landroid/os/IBinder;)Lcom/wecloud/load/lib/i;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lcom/wecloud/load/lib/o;->g(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/i;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-static {p1, p2}, Lcom/wecloud/load/lib/o;->d(Lcom/wecloud/load/lib/o;Z)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    const-string v1, "SoLoadManager"

    .line 21
    .line 22
    const-string v2, "\u670d\u52a1\u7ed1\u5b9a\u6210\u529f"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/wecloud/load/lib/o;->b(Lcom/wecloud/load/lib/o;)Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p2, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p2, v0}, Lcom/wecloud/load/lib/o;->f(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/SoDownloadRequest;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lcom/wecloud/load/lib/o;->j(Lcom/wecloud/load/lib/SoDownloadRequest;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/wecloud/load/lib/o;->g(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/i;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Lcom/wecloud/load/lib/o;->d(Lcom/wecloud/load/lib/o;Z)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x0

    .line 17
    const-string v3, "SoLoadManager"

    .line 18
    .line 19
    const-string v4, "\u670d\u52a1\u65ad\u5f00\u8fde\u63a5"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/wecloud/load/lib/o;->c(Lcom/wecloud/load/lib/o;)Landroid/content/ServiceConnection;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->b:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/wecloud/load/lib/o;->c(Lcom/wecloud/load/lib/o;)Landroid/content/ServiceConnection;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    move-object v4, p1

    .line 50
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "\u89e3\u7ed1\u670d\u52a1\u5f02\u5e38: "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/16 v6, 0x8

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    const-string v2, "SoLoadManager"

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-static/range {v1 .. v7}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    .line 83
    .line 84
    invoke-static {p1, v0}, Lcom/wecloud/load/lib/o;->h(Lcom/wecloud/load/lib/o;Landroid/content/ServiceConnection;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
