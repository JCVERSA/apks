.class public Lcom/cloud/hisavana/sdk/g1;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/g1$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile c:Ljava/lang/String;

.field private volatile d:J

.field private volatile e:J

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Z

.field private volatile i:Ljava/lang/Boolean;

.field private volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/g1;->h:Z

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->i:Ljava/lang/Boolean;

    .line 7
    invoke-static {}, Ll7/a;->e()Ll7/a;

    move-result-object v0

    const-string v2, "hisavanaRequestUrl"

    invoke-virtual {v0, v2}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->f:Ljava/lang/String;

    .line 8
    invoke-static {}, Ll7/a;->e()Ll7/a;

    move-result-object v0

    const-string v2, "show_ru_style"

    invoke-virtual {v0, v2}, Ll7/a;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/g1;->h:Z

    .line 9
    invoke-static {}, Ll7/a;->e()Ll7/a;

    move-result-object v0

    const-string v2, "is_om_id_enabled"

    invoke-virtual {v0, v2, v1}, Ll7/a;->d(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->i:Ljava/lang/Boolean;

    .line 10
    invoke-static {}, Ll7/a;->e()Ll7/a;

    move-result-object v0

    const-string v1, "cloudConfigExtInfo"

    invoke-virtual {v0, v1}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/g1;->j(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseCustomTabData()V

    .line 13
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseABTestData()V

    .line 14
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseCommonConfigData()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/g1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/g1;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/g1;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g1;->f(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/g1;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/g1;->d:J

    .line 2
    .line 3
    return-wide p1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "dcdnUrl"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->g:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->g:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "blank"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Li7/a;->f()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Li7/a;->i()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->g:Ljava/lang/String;

    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->g:Ljava/lang/String;

    .line 65
    .line 66
    return-object v0
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/g1;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/g1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(I)V
    .locals 8

    .line 1
    const-string v0, "ssp_sdk_version_code"

    .line 2
    .line 3
    const-string v1, "ConfigManager"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/g1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v0, v4}, Ll7/a;->g(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {}, Lk7/c;->m()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v0, v3}, Ll7/a;->p(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    if-lt v2, v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v5, "ssp_cloud_config_raw_response"

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "checkVersionUpgradeAndReparse: no cached raw response, skip"

    .line 64
    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const-class v5, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    .line 72
    .line 73
    invoke-static {v0, v5}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getCode()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v7, "checkVersionUpgradeAndReparse: re-parsing for version upgrade "

    .line 107
    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, " -> "

    .line 115
    .line 116
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v5, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    invoke-direct {p0, v0, p1, v4}, Lcom/cloud/hisavana/sdk/g1;->i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    :goto_0
    return-void

    .line 140
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v3, "checkVersionUpgradeAndReparse failed: "

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic f(ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/g1;->e(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/hisavana/sdk/O;->g()Lcom/cloud/hisavana/sdk/O;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/O;->d()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 39
    .line 40
    invoke-static {}, Lcom/cloud/hisavana/sdk/O;->g()Lcom/cloud/hisavana/sdk/O;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/O;->i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/cloud/hisavana/sdk/O;->g()Lcom/cloud/hisavana/sdk/O;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/O;->b(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->setIsNetAvailable(Z)V

    .line 64
    .line 65
    .line 66
    const-string v2, "ConfigManager"

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    if-eqz v1, :cond_9

    .line 70
    .line 71
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g1;->c:Ljava/lang/String;

    .line 82
    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v4, "hisavanaCurrentCloudControlVersion"

    .line 90
    .line 91
    invoke-virtual {v1, v4, v3}, Ll7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/g1;->c:Ljava/lang/String;

    .line 96
    .line 97
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g1;->c:Ljava/lang/String;

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    if-nez v1, :cond_3

    .line 101
    .line 102
    invoke-direct {p0, p1, p2, v3}, Lcom/cloud/hisavana/sdk/g1;->g(ILjava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v4, "new_hisavana_ver"

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/g1;->c:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/g1;->d:J

    .line 125
    .line 126
    const-wide/16 v5, 0x0

    .line 127
    .line 128
    cmp-long v1, v3, v5

    .line 129
    .line 130
    if-nez v1, :cond_4

    .line 131
    .line 132
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v3, "requestConfigTime"

    .line 137
    .line 138
    invoke-virtual {v1, v3, v5, v6}, Ll7/a;->i(Ljava/lang/String;J)J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/g1;->d:J

    .line 143
    .line 144
    :cond_4
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/g1;->e:J

    .line 145
    .line 146
    cmp-long v1, v3, v5

    .line 147
    .line 148
    if-nez v1, :cond_5

    .line 149
    .line 150
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v3, "requestConfigInterval"

    .line 155
    .line 156
    const-wide/32 v4, 0xf731400

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3, v4, v5}, Ll7/a;->i(Ljava/lang/String;J)J

    .line 160
    .line 161
    .line 162
    move-result-wide v3

    .line 163
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/g1;->e:J

    .line 164
    .line 165
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/g1;->d:J

    .line 170
    .line 171
    sub-long/2addr v3, v5

    .line 172
    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/g1;->e:J

    .line 173
    .line 174
    cmp-long v1, v3, v5

    .line 175
    .line 176
    if-lez v1, :cond_6

    .line 177
    .line 178
    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/g1;->g(ILjava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    const-string v1, "time is not ready"

    .line 188
    .line 189
    invoke-virtual {p2, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/g1;->k(Ljava/util/Collection;I)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const-string p2, "requestCloudControl download material fail,config list is null"

    .line 207
    .line 208
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_8
    invoke-direct {p0, p1, p2, v3}, Lcom/cloud/hisavana/sdk/g1;->g(ILjava/lang/String;Z)V

    .line 213
    .line 214
    .line 215
    :goto_1
    return-void

    .line 216
    :cond_9
    :goto_2
    const/4 p2, 0x3

    .line 217
    if-eq p1, p2, :cond_a

    .line 218
    .line 219
    invoke-static {v3, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->j0(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    const/4 p2, 0x2

    .line 223
    invoke-static {v3, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Y(Ljava/lang/String;II)V

    .line 224
    .line 225
    .line 226
    :cond_a
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    const-string p2, "requestCloudControl net is not available,or is requesting"

    .line 231
    .line 232
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method private g(ILjava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "ConfigManager"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "config is requesting"

    .line 16
    .line 17
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "request type "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->I(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    new-instance v0, Lcom/cloud/hisavana/sdk/common/http/a;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/http/a;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/cloud/hisavana/sdk/g1$b;

    .line 64
    .line 65
    move-object v2, v1

    .line 66
    move-object v3, p0

    .line 67
    move v6, p1

    .line 68
    move-object v7, p2

    .line 69
    move v8, p3

    .line 70
    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/g1$b;-><init>(Lcom/cloud/hisavana/sdk/g1;JILjava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/a;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Lcom/cloud/hisavana/sdk/g1$a;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/g1$a;-><init>(Lcom/cloud/hisavana/sdk/g1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {}, Lc7/b;->l()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->k(Z)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Li7/a;->e()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Li7/a;->d()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_1

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/http/d;->b()V

    .line 124
    .line 125
    .line 126
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/g1;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/g1;->i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCloudControlCacheInterval()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0x36ee80

    .line 13
    .line 14
    .line 15
    mul-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/g1;->e:J

    .line 17
    .line 18
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/g1;->e:J

    .line 23
    .line 24
    const-string v3, "requestConfigInterval"

    .line 25
    .line 26
    invoke-virtual {v0, v3, v1, v2}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isShowRuStyle()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/g1;->h:Z

    .line 34
    .line 35
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/g1;->h:Z

    .line 40
    .line 41
    const-string v2, "show_ru_style"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Ll7/a;->o(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->i:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isOmIdEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/g0;->c(Landroid/content/Context;Z)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isOmIdEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->i:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g1;->i:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const-string v2, "is_om_id_enabled"

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Ll7/a;->o(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "ad_internal_black_brands"

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v3, " ad internal black brands\uff1a"

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v3, "ConfigManager"

    .line 141
    .line 142
    invoke-virtual {v0, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, ","

    .line 154
    .line 155
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v1}, Ll7/a;->s(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :goto_0
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isInitPolyGammaEnable()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const-string v2, "polygamma_init_enable"

    .line 179
    .line 180
    invoke-virtual {v0, v2, v1}, Ll7/a;->o(Ljava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalRequestEnable()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    const-string v2, "default_is_open"

    .line 192
    .line 193
    invoke-virtual {v0, v2, v1}, Ll7/a;->o(Ljava/lang/String;Z)V

    .line 194
    .line 195
    .line 196
    sget-object v0, Lcom/cloud/hisavana/sdk/Y;->a:Lcom/cloud/hisavana/sdk/Y;

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalRequestEnable()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/Y;->s(Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getShowDataSyncTimeInterval()Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getClickDataSyncTimeInterval()Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/o5;->b(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getExtInfo()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string v2, "cloudConfigExtInfo"

    .line 225
    .line 226
    invoke-virtual {v1, v2, v0}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/g1;->j(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCustomConfigs()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->saveCustomConfigs(Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_8

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCdnVersionAddressRequestTimeInterval()Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-lez v0, :cond_3

    .line 264
    .line 265
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCdnVersionAddressRequestTimeInterval()Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    const v2, 0xea60

    .line 278
    .line 279
    .line 280
    mul-int/2addr v1, v2

    .line 281
    int-to-long v1, v1

    .line 282
    const-string v3, "default_interval"

    .line 283
    .line 284
    invoke-virtual {v0, v3, v1, v2}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 285
    .line 286
    .line 287
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/O;->g()Lcom/cloud/hisavana/sdk/O;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/O;->f(Ljava/util/List;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_8

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCloudControlVersion()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->c:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getSspUrl()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->f:Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g1;->c:Ljava/lang/String;

    .line 318
    .line 319
    const-string v2, "hisavanaCurrentCloudControlVersion"

    .line 320
    .line 321
    invoke-virtual {v0, v2, v1}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g1;->c:Ljava/lang/String;

    .line 329
    .line 330
    const-string v2, "new_hisavana_ver"

    .line 331
    .line 332
    invoke-virtual {v0, v2, v1}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g1;->f:Ljava/lang/String;

    .line 340
    .line 341
    const-string v2, "hisavanaRequestUrl"

    .line 342
    .line 343
    invoke-virtual {v0, v2, v1}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getPreConnectEnable()Ljava/lang/Boolean;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    if-eqz v0, :cond_4

    .line 351
    .line 352
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    const-string v2, "preLoadNet"

    .line 361
    .line 362
    invoke-virtual {v1, v2, v0}, Ll7/a;->o(Ljava/lang/String;Z)V

    .line 363
    .line 364
    .line 365
    :cond_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCommonConfigData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    if-eqz v0, :cond_5

    .line 370
    .line 371
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;->getAntifraudPowerEnable()Ljava/lang/Boolean;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;->getAntifraudSubfunctionControl()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    goto :goto_1

    .line 380
    :cond_5
    const/4 v1, 0x0

    .line 381
    move-object v0, v1

    .line 382
    :goto_1
    if-eqz v1, :cond_6

    .line 383
    .line 384
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    invoke-static {v1}, Lk7/a;->u0(Z)V

    .line 389
    .line 390
    .line 391
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-nez v1, :cond_7

    .line 396
    .line 397
    const/4 v1, 0x2

    .line 398
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 399
    .line 400
    .line 401
    const-string v1, "1"

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-nez v1, :cond_7

    .line 416
    .line 417
    invoke-static {v0}, Lk7/a;->t0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .line 419
    .line 420
    goto :goto_2

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    const-string v3, "parsing AntifraudSubfunctionControl failed:"

    .line 432
    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    const-string v2, "ssp_load"

    .line 448
    .line 449
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    .line 453
    .line 454
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g1;->k(Ljava/util/Collection;I)V

    .line 459
    .line 460
    .line 461
    :cond_8
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g1;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g1;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    .line 20
    .line 21
    :catch_0
    :goto_0
    return-void
.end method

.method private k(Ljava/util/Collection;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/p;->F()Lcom/cloud/hisavana/sdk/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/p;->z(Ljava/util/Collection;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/g1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/g1;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static o()Lcom/cloud/hisavana/sdk/g1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1$c;->a()Lcom/cloud/hisavana/sdk/g1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/g1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/g1;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "requestCloudControl type:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "ConfigManager"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 32
    .line 33
    new-instance v2, Lcom/cloud/hisavana/sdk/f1;

    .line 34
    .line 35
    invoke-direct {v2, p0, p1, v0}, Lcom/cloud/hisavana/sdk/f1;-><init>(Lcom/cloud/hisavana/sdk/g1;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/s1;->a:Lcom/cloud/hisavana/sdk/s1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/s1;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/g1;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->f:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "hisavanaRequestUrl"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->f:Ljava/lang/String;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->f:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Li7/a;->j()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Li7/a;->i()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->f:Ljava/lang/String;

    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->f:Ljava/lang/String;

    .line 69
    .line 70
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g1;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/g1;->h:Z

    .line 2
    .line 3
    return v0
.end method
