.class public final Lcom/wecloud/load/lib/o;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/o$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/wecloud/load/lib/o$a;

.field private static volatile g:Lcom/wecloud/load/lib/o;


# instance fields
.field private volatile a:Lcom/wecloud/load/lib/i;

.field private volatile b:Z

.field private volatile c:Lcom/wecloud/load/lib/h;

.field private d:Landroid/content/ServiceConnection;

.field private e:Lcom/wecloud/load/lib/SoDownloadRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/wecloud/load/lib/o$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/wecloud/load/lib/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/wecloud/load/lib/o;->f:Lcom/wecloud/load/lib/o$a;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wecloud/load/lib/o;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/wecloud/load/lib/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/wecloud/load/lib/o;->g:Lcom/wecloud/load/lib/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lcom/wecloud/load/lib/o;)Lcom/wecloud/load/lib/SoDownloadRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/wecloud/load/lib/o;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/wecloud/load/lib/o;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wecloud/load/lib/o;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Lcom/wecloud/load/lib/o;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/wecloud/load/lib/o;->g:Lcom/wecloud/load/lib/o;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/SoDownloadRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Lcom/wecloud/load/lib/o;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final i(Landroid/content/Context;Lcom/wecloud/load/lib/h;Lcom/wecloud/load/lib/SoDownloadRequest;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "request"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/wecloud/load/lib/o;->c:Lcom/wecloud/load/lib/h;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 19
    .line 20
    iget-boolean p2, p0, Lcom/wecloud/load/lib/o;->b:Z

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 30
    .line 31
    invoke-virtual {p0, p3}, Lcom/wecloud/load/lib/o;->j(Lcom/wecloud/load/lib/SoDownloadRequest;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 36
    .line 37
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance p3, Landroid/content/ComponentName;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "com.wecloud.load.lib.SoLoadService"

    .line 47
    .line 48
    invoke-direct {p3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    new-instance p3, Lcom/wecloud/load/lib/o$b;

    .line 55
    .line 56
    invoke-direct {p3, p0, p1}, Lcom/wecloud/load/lib/o$b;-><init>(Lcom/wecloud/load/lib/o;Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iput-object p3, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    .line 60
    .line 61
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    .line 63
    .line 64
    sget-object p3, Lwf/a;->a:Lwf/a$a;

    .line 65
    .line 66
    const-string v2, "SoLoadManager"

    .line 67
    .line 68
    const-string v3, "\u5df2\u542f\u52a8 Service"

    .line 69
    .line 70
    const/4 v5, 0x4

    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    move-object v1, p3

    .line 74
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    .line 78
    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    const-string v2, "SoLoadManager"

    .line 82
    .line 83
    const-string v3, "\u7ed1\u5b9a\u670d\u52a1\u5931\u8d25\uff1aserviceConnection \u5df2\u88ab\u5e76\u53d1\u6e05\u7a7a"

    .line 84
    .line 85
    const/4 v5, 0x4

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    move-object v1, p3

    .line 89
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 93
    .line 94
    return-void

    .line 95
    :catch_0
    move-exception p1

    .line 96
    move-object v3, p1

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    const-string v2, "SoLoadManager"

    .line 106
    .line 107
    const-string v3, "\u7ed1\u5b9a\u670d\u52a1\u5931\u8d25"

    .line 108
    .line 109
    const/4 v5, 0x4

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    move-object v1, p3

    .line 113
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :goto_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string p3, "\u542f\u52a8 Service \u5931\u8d25: "

    .line 131
    .line 132
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const/16 v5, 0x8

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    const-string v1, "SoLoadManager"

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    :goto_1
    return-void
.end method

.method public final j(Lcom/wecloud/load/lib/SoDownloadRequest;)Z
    .locals 9

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/wecloud/load/lib/o;->b:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/o;->c:Lcom/wecloud/load/lib/h;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 21
    .line 22
    const/4 v6, 0x4

    .line 23
    const/4 v7, 0x0

    .line 24
    const-string v3, "SoLoadManager"

    .line 25
    .line 26
    const-string v4, "\u56de\u8c03\u63a5\u53e3\u4e3a\u7a7a"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/wecloud/load/lib/o;->c:Lcom/wecloud/load/lib/h;

    .line 38
    .line 39
    invoke-interface {v0, p1, v2}, Lcom/wecloud/load/lib/i;->D(Lcom/wecloud/load/lib/SoDownloadRequest;Lcom/wecloud/load/lib/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    move-object v5, p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "\u8c03\u7528\u670d\u52a1\u5f02\u5e38: "

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/16 v7, 0x8

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const-string v3, "SoLoadManager"

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-static/range {v2 .. v8}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return v1

    .line 81
    :cond_3
    :goto_3
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    const/4 v6, 0x4

    .line 84
    const/4 v7, 0x0

    .line 85
    const-string v3, "SoLoadManager"

    .line 86
    .line 87
    const-string v4, "\u670d\u52a1\u672a\u7ed1\u5b9a\uff0c\u65e0\u6cd5\u52a0\u8f7dSO"

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-static/range {v2 .. v7}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return v1
.end method

.method public final k(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/wecloud/load/lib/o;->b:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :try_start_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    move-object v3, p1

    .line 24
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "\u89e3\u7ed1\u670d\u52a1\u5f02\u5e38: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/16 v5, 0x8

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const-string v1, "SoLoadManager"

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/wecloud/load/lib/o;->b:Z

    .line 61
    .line 62
    iput-object p1, p0, Lcom/wecloud/load/lib/o;->c:Lcom/wecloud/load/lib/h;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    .line 67
    .line 68
    const-string p1, "SoLoadManager"

    .line 69
    .line 70
    const-string v0, "\u89e3\u7ed1\u670d\u52a1:"

    .line 71
    .line 72
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_1
    return-void
.end method
