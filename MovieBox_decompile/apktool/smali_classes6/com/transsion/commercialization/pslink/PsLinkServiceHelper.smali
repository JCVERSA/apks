.class public final Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

.field private static b:Lww/b;

.field private static c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static d:J

.field private static final e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$a;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$a;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->e:Landroid/content/ServiceConnection;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->l(Landroid/os/IBinder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Lww/b;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b:Lww/b;

    .line 2
    .line 3
    return-void
.end method

.method private final j()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final l(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-static {p1}, Lww/b$a;->X0(Landroid/os/IBinder;)Lww/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sput-object p1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b:Lww/b;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Moviebox"

    .line 17
    .line 18
    invoke-interface {p1, v0, v1}, Lww/b;->j(Lww/a;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_1
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 50
    .line 51
    sget-object v1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " --> register() --> it = "

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_3
    return-void
.end method


# virtual methods
.method public final g(Lcom/transsion/commercialization/pslink/b;)V
    .locals 1

    .line 1
    const-string v0, "psLinkCallBackCommon"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b:Lww/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 9
    .line 10
    sget-object v1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " --> bindService() --> \u5f00\u59cbbindService .... "

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Landroid/content/Intent;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "com.transsnet.store"

    .line 42
    .line 43
    const-string v4, "com.transsnet.launcherlib.services.DispenseCommonService"

    .line 44
    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    sget-object v4, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->e:Landroid/content/ServiceConnection;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-direct {v1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " --> bindService() --> \u5f00\u59cbbindService .... --> isConnect = "

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-nez v0, :cond_1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    sget-object v1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 112
    .line 113
    sget-object v2, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 114
    .line 115
    invoke-direct {v2}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, " --> bindService() --> "

    .line 132
    .line 133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_1
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;->a()V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final i()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b:Lww/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final m(Lcom/transsion/commercialization/pslink/b;)V
    .locals 1

    .line 1
    const-string v0, "psLinkCallBackCommon"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
