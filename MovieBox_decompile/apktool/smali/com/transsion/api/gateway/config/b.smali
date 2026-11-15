.class public Lcom/transsion/api/gateway/config/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile INSTANCE:Lcom/transsion/api/gateway/config/b;


# instance fields
.field public a:Lcom/transsion/api/gateway/config/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/api/gateway/config/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method public static a()Lcom/transsion/api/gateway/config/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/config/b;->INSTANCE:Lcom/transsion/api/gateway/config/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/transsion/api/gateway/config/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/transsion/api/gateway/config/b;->INSTANCE:Lcom/transsion/api/gateway/config/b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/api/gateway/config/b;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/transsion/api/gateway/config/b;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/transsion/api/gateway/config/b;->INSTANCE:Lcom/transsion/api/gateway/config/b;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/api/gateway/config/b;->INSTANCE:Lcom/transsion/api/gateway/config/b;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "last_config_sync_time"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getLong(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "gateway_config_v1"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    sget-object v1, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 40
    .line 41
    const-string v2, " load from cache"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    const-class v1, Lcom/transsion/api/gateway/bean/RemoteConfig;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/transsion/api/gateway/bean/RemoteConfig;

    .line 53
    .line 54
    new-instance v1, Lcom/transsion/api/gateway/config/a;

    .line 55
    .line 56
    new-instance v2, Lcom/transsion/api/gateway/config/a$a;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/transsion/api/gateway/config/a$a;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/transsion/api/gateway/config/a;-><init>(Lcom/transsion/api/gateway/config/a$a;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lcom/transsion/api/gateway/config/a$a;

    .line 65
    .line 66
    invoke-direct {v2, v1}, Lcom/transsion/api/gateway/config/a$a;-><init>(Lcom/transsion/api/gateway/config/a;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lcom/transsion/api/gateway/config/a$a;->a(Lcom/transsion/api/gateway/bean/RemoteConfig;)Lcom/transsion/api/gateway/config/a$a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Lcom/transsion/api/gateway/config/a;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lcom/transsion/api/gateway/config/a;-><init>(Lcom/transsion/api/gateway/config/a$a;)V

    .line 76
    .line 77
    .line 78
    iget v0, v1, Lcom/transsion/api/gateway/config/a;->d:I

    .line 79
    .line 80
    if-lez v0, :cond_1

    .line 81
    .line 82
    iput-object v1, p0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, " load from cache success"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/transsion/api/gateway/config/a;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :cond_2
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 120
    .line 121
    const-string v1, " set config"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/transsion/api/gateway/config/a;

    .line 127
    .line 128
    new-instance v1, Lcom/transsion/api/gateway/config/a$a;

    .line 129
    .line 130
    invoke-direct {v1}, Lcom/transsion/api/gateway/config/a$a;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Lcom/transsion/api/gateway/config/a;-><init>(Lcom/transsion/api/gateway/config/a$a;)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/transsion/api/gateway/config/a$a;

    .line 137
    .line 138
    invoke-direct {v1, v0}, Lcom/transsion/api/gateway/config/a$a;-><init>(Lcom/transsion/api/gateway/config/a;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/transsion/api/gateway/config/a;

    .line 142
    .line 143
    invoke-direct {v0, v1}, Lcom/transsion/api/gateway/config/a;-><init>(Lcom/transsion/api/gateway/config/a$a;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 147
    .line 148
    return-void
.end method
