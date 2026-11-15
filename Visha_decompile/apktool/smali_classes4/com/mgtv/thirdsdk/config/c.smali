.class public Lcom/mgtv/thirdsdk/config/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/thirdsdk/config/c;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/config/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/config/c;
    .locals 1

    .line 3
    sget-object v0, Lcom/mgtv/thirdsdk/config/c;->a:Lcom/mgtv/thirdsdk/config/c;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/mgtv/thirdsdk/config/c;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/config/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgtv/thirdsdk/config/c;->a:Lcom/mgtv/thirdsdk/config/c;

    .line 5
    :cond_0
    sget-object p0, Lcom/mgtv/thirdsdk/config/c;->a:Lcom/mgtv/thirdsdk/config/c;

    return-object p0
.end method

.method private a(Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 26
    :try_start_0
    instance-of p0, p1, Lcom/google/gson/JsonObject;

    if-eqz p0, :cond_0

    .line 27
    const-string p0, "PLAYCONFIG_TYPE"

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/config/c;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/config/c;->a(Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/mgtv/thirdsdk/config/c;->b(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/hunantv/media/global/MgtvPlayerGlobalConfig;->setValidToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "PLAYCONFIG_TYPE"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/mgtv/thirdsdk/datareport/playerconfig/a;->a(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V

    .line 5
    invoke-static {v0}, Lcom/mgtv/thirdsdk/config/c;->b(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V

    .line 6
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->a()Z

    .line 8
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
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

.method private static b(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->render_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->open_timeout:Ljava/lang/String;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->c(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->rw_timeout:Ljava/lang/String;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->d(Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;->buffer_timeout:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 6
    new-instance v0, Lcom/mgtv/task/m;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/config/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v1, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v1}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    .line 8
    const-string v2, "mf"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 9
    const-string v2, "mod"

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfigHelper;->getMod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 10
    const-string v2, "os"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_version"

    invoke-virtual {v1, v3, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 12
    const-string v2, "appVersion"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 13
    const-string v2, "osVersion"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 14
    const-string v2, "mac"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 15
    const-string v2, "osType"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 16
    invoke-static {}, Lcom/hunantv/imgo/util/b;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-virtual {v1, v3, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 17
    const-string v2, "ticket"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 18
    const-string v2, "channel"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const/16 v2, 0xa

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "terminal_code"

    invoke-virtual {v1, v3, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    .line 20
    const-string v2, "apiVersion"

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfigHelper;->getApiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 21
    const-string v2, "cputy"

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfigHelper;->getCputy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 22
    const-string v2, "omxcn"

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfigHelper;->getOmxcn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 23
    const-string v2, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 24
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const-string v3, "abroad"

    invoke-virtual {v1, v3, v2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 25
    invoke-static {}, Lcom/hunantv/imgo/net/b;->p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mgtv/thirdsdk/config/c$1;

    invoke-direct {v3, p0}, Lcom/mgtv/thirdsdk/config/c$1;-><init>(Lcom/mgtv/thirdsdk/config/c;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method
