.class public Lcom/mgtv/thirdsdk/config/ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/config/ConfigManager$GUID;
    }
.end annotation


# static fields
.field public static a:Lcom/mgtv/thirdsdk/config/ConfigManager;


# instance fields
.field public b:Landroid/content/Context;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->c:I

    iput-object p1, p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/config/ConfigManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->c:I

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/config/ConfigManager;
    .locals 1

    .line 3
    sget-object v0, Lcom/mgtv/thirdsdk/config/ConfigManager;->a:Lcom/mgtv/thirdsdk/config/ConfigManager;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/mgtv/thirdsdk/config/ConfigManager;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/config/ConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgtv/thirdsdk/config/ConfigManager;->a:Lcom/mgtv/thirdsdk/config/ConfigManager;

    .line 5
    :cond_0
    sget-object p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->a:Lcom/mgtv/thirdsdk/config/ConfigManager;

    return-object p0
.end method

.method public static a(Lcom/mgtv/thirdsdk/config/ConfigData;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/config/ConfigData;->netRetry:Lcom/mgtv/task/http/retry/RetryConfig;

    invoke-static {v0}, Lcom/mgtv/task/http/retry/a;->a(Lcom/mgtv/task/http/retry/RetryConfig;)V

    .line 29
    iget-object p0, p0, Lcom/mgtv/thirdsdk/config/ConfigData;->n_netRetry:Lcom/mgtv/task/http/host/HostConfig;

    invoke-static {p0}, Lcom/mgtv/task/http/host/a;->a(Lcom/mgtv/task/http/host/HostConfig;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/config/ConfigManager;Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 26
    :try_start_0
    instance-of p0, p2, Lcom/google/gson/JsonObject;

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/config/ConfigManager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->c:I

    return v0
.end method

.method public static b()V
    .locals 4

    .line 2
    :try_start_0
    const-string v0, "PRE_ConfigData"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/mgtv/thirdsdk/config/ConfigData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/thirdsdk/config/ConfigData;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a(Lcom/mgtv/thirdsdk/config/ConfigData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init cdata error  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 6
    new-instance v0, Lcom/mgtv/task/m;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v1, Lcom/mgtv/thirdsdk/config/PostData;

    invoke-direct {v1}, Lcom/mgtv/thirdsdk/config/PostData;-><init>()V

    .line 8
    const-string v2, "android"

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->osType:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/hunantv/imgo/util/b;->i()I

    move-result v2

    iput v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->versionCode:I

    .line 10
    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->device:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/hunantv/imgo/util/b;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->osVersion:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->channel:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->appVersion:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->mac:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/hunantv/imgo/util/b;->I()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->cpuinfo:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->imgoplayerVersion:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/hunantv/imgo/util/b;->E()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mgtv/thirdsdk/config/PostData;->chipMf:Ljava/lang/String;

    .line 18
    const-class v2, Lcom/mgtv/thirdsdk/config/PostData;

    invoke-static {v1, v2}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v3, "post"

    const-string v4, "getConfig"

    invoke-direct {v2, v3, v4}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/mgtv/task/http/HttpParams$Type;->BODY:Lcom/mgtv/task/http/HttpParams$Type;

    const-string v4, "args"

    invoke-virtual {v2, v4, v1, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    move-result-object v1

    .line 20
    iget v2, p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->c:I

    if-nez v2, :cond_0

    .line 21
    invoke-static {}, Lcom/hunantv/imgo/net/b;->n()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/net/b;->o()Ljava/lang/String;

    move-result-object v2

    .line 23
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v0, v3}, Lcom/mgtv/task/m;->a(Ljava/util/Collection;)Lcom/mgtv/task/m;

    move-result-object v0

    new-instance v3, Lcom/mgtv/thirdsdk/config/ConfigManager$1;

    invoke-direct {v3, p0}, Lcom/mgtv/thirdsdk/config/ConfigManager$1;-><init>(Lcom/mgtv/thirdsdk/config/ConfigManager;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method

.method public c()V
    .locals 5

    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mgtv/task/m;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/config/ConfigManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/hunantv/imgo/net/b;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v2}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    const-string v3, "deviceid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    new-instance v3, Lcom/mgtv/thirdsdk/config/ConfigManager$2;

    invoke-direct {v3, p0}, Lcom/mgtv/thirdsdk/config/ConfigManager$2;-><init>(Lcom/mgtv/thirdsdk/config/ConfigManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method
