.class public Lcom/transsion/athena/attribution/ReferrerTask;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAppId:I

.field private final mContext:Landroid/content/Context;

.field private referrerClient:Li5/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    .line 7
    .line 8
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->referrerClient:Li5/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/athena/attribution/ReferrerTask;Li5/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/athena/attribution/ReferrerTask;->trackGpReferrer(Li5/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/transsion/athena/attribution/ReferrerTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->markAppIdGpRefTracked()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkGpReferrer()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->isAppIdGpRefTracked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "appId : "

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " referrer has tracked !"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->getCachedGpRef()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, " has cached GP referrer !"

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/athena/attribution/ReferrerTask;->trackGpReferrer(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->markAppIdGpRefTracked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->referrerClient:Li5/a;

    .line 83
    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v0}, Li5/a;->c(Landroid/content/Context;)Li5/a$b;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Li5/a$b;->a()Li5/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->referrerClient:Li5/a;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, " referrerClient startConnection"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->referrerClient:Li5/a;

    .line 127
    .line 128
    new-instance v1, Lcom/transsion/athena/attribution/ReferrerTask$1;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lcom/transsion/athena/attribution/ReferrerTask$1;-><init>(Lcom/transsion/athena/attribution/ReferrerTask;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Li5/a;->d(Li5/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :goto_2
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 138
    .line 139
    .line 140
    :goto_3
    return-void
.end method

.method private checkPsReferrer()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->isAppIdPsRefTracked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->getCachedPsRef()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/athena/attribution/ReferrerTask;->trackPsReferrer(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->markAppIdPsRefTracked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v0, "content://com.transsion.appmarket.data/info"

    .line 31
    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v3, 0x2

    .line 78
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x3

    .line 83
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/transsion/athena/attribution/ReferrerTask;->trackPsReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->markAppIdPsRefTracked()V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :catchall_0
    move-exception v1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v2, " Referrer not found"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    throw v1

    .line 132
    :catch_1
    move-exception v0

    .line 133
    goto :goto_4

    .line 134
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :goto_4
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_5
    return-void
.end method

.method private getCachedGpRef()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "key_referrer_google_play"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private getCachedPsRef()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "key_referrer_palm_store"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private isAppIdGpRefTracked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "key_appid_gp_track_flag_"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    return v0
.end method

.method private isAppIdPsRefTracked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "key_appid_ps_track_flag_"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    return v0
.end method

.method private isGpReferrerValid(Li5/d;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Li5/d;->d()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1}, Li5/d;->f()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p1}, Li5/d;->b()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    cmp-long p1, v2, v6

    .line 25
    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    cmp-long p1, v4, v2

    .line 29
    .line 30
    if-ltz p1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :cond_0
    return v0
.end method

.method private markAppIdGpRefTracked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "key_appid_gp_track_flag_"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/attribution/SpUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private markAppIdPsRefTracked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "key_appid_ps_track_flag_"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/attribution/SpUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private trackGpReferrer(Li5/d;)V
    .locals 23

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p1}, Li5/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual/range {p1 .. p1}, Li5/d;->e()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual/range {p1 .. p1}, Li5/d;->f()J

    move-result-wide v3

    .line 16
    invoke-virtual/range {p1 .. p1}, Li5/d;->g()J

    move-result-wide v5

    .line 17
    invoke-virtual/range {p1 .. p1}, Li5/d;->b()J

    move-result-wide v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Li5/d;->c()J

    move-result-wide v9

    .line 19
    invoke-virtual/range {p1 .. p1}, Li5/d;->a()Z

    move-result v11

    .line 20
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 21
    const-string v13, "insref"

    invoke-virtual {v12, v13, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v14, "insver"

    invoke-virtual {v12, v14, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v15, "refcltmp"

    invoke-virtual {v12, v15, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-wide/from16 v16, v3

    .line 24
    const-string v3, "refclsvr"

    invoke-virtual {v12, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 25
    const-string v4, "insbgtmp"

    invoke-virtual {v12, v4, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 p1, v4

    .line 26
    const-string v4, "insbgsvr"

    invoke-virtual {v12, v4, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v18, v4

    .line 27
    const-string v4, "gpinsprm"

    invoke-virtual {v12, v4, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v19, v4

    .line 28
    new-instance v4, Lhi/a;

    move/from16 v20, v11

    const-string v11, "gp_referrer"

    move-wide/from16 v21, v9

    iget v9, v1, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-direct {v4, v11, v9}, Lhi/a;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x0

    .line 29
    invoke-virtual {v4, v12, v9}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    move-result-object v4

    .line 30
    invoke-virtual {v4}, Lhi/a;->b()V

    .line 31
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 32
    invoke-virtual {v4, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v4, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-wide/from16 v9, v16

    .line 34
    invoke-virtual {v4, v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p1

    .line 36
    invoke-virtual {v4, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-wide/from16 v2, v21

    .line 37
    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v2, v19

    move/from16 v0, v20

    .line 38
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    iget-object v0, v1, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object v0

    const-string v2, "key_referrer_google_play"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/attribution/SpUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private trackGpReferrer(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v1, "insref"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v1, "insver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v1, "refcltmp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 6
    const-string v1, "refclsvr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 7
    const-string v1, "insbgtmp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 8
    const-string v1, "insbgsvr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    const-string v1, "gpinsprm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    new-instance v0, Lhi/a;

    const-string v1, "gp_referrer"

    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-direct {v0, v1, v2}, Lhi/a;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lhi/a;->b()V

    return-void
.end method

.method private trackPsReferrer(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v1, "insref"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v1, "strclts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v1, "strdwts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v1, "insfnsts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lhi/a;

    const-string v1, "ps_referrer"

    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-direct {v0, v1, v2}, Lhi/a;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lhi/a;->b()V

    return-void
.end method

.method private trackPsReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v1, "insref"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v2, "strclts"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v3, "strdwts"

    invoke-virtual {v0, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v4, "insfnsts"

    invoke-virtual {v0, v4, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v5, Lhi/a;

    const-string v6, "ps_referrer"

    iget v7, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-direct {v5, v6, v7}, Lhi/a;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    .line 16
    invoke-virtual {v5, v0, v6}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lhi/a;->b()V

    .line 18
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v0, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object p1

    const-string p2, "key_referrer_palm_store"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/attribution/SpUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const-string v0, "====================\\ ReferrerTask start \\================"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->checkGpReferrer()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->checkPsReferrer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-string v0, "====================\\ ReferrerTask end \\================"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
