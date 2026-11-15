.class public Lcom/transsion/api/gateway/utils/SafeStringUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static INSTANCE:Lcom/transsion/api/gateway/utils/SafeStringUtils; = null

.field public static final SP_APPID:Ljava/lang/String; = "appid"

.field public static final SP_CONFIG:Ljava/lang/String; = "gateway_config_v1"

.field public static final SP_LAST_CONFIG_SYNC_TIME:Ljava/lang/String; = "last_config_sync_time"

.field public static final SP_NAME:Ljava/lang/String; = "gate_way"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/transsion/api/gateway/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/transsion/api/gateway/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->INSTANCE:Lcom/transsion/api/gateway/utils/SafeStringUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "gate_way"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-object v4

    .line 19
    :cond_1
    :try_start_0
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    :catch_0
    iget-object p1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    :try_start_1
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    return-object p1

    .line 35
    :catch_1
    return-object v4
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    return v1

    .line 22
    :cond_2
    const/4 v2, 0x0

    .line 23
    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return p1

    .line 28
    :catch_0
    return v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    if-nez v3, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return-wide v1

    .line 23
    :cond_2
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-wide v0

    .line 30
    :catch_0
    return-wide v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_2
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p1

    .line 28
    :catch_0
    return-object v1
.end method

.method public saveInt(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    return-void
.end method

.method public saveLong(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/transsion/api/gateway/utils/SafeStringUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    return-void
.end method
