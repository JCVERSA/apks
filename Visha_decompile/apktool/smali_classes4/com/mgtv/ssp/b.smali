.class public Lcom/mgtv/ssp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/ssp/b;


# instance fields
.field private b:Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mgtv/ssp/b;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgtv/ssp/b;->a:Lcom/mgtv/ssp/b;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgtv/ssp/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/b;->a:Lcom/mgtv/ssp/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgtv/ssp/b;

    invoke-direct {v1}, Lcom/mgtv/ssp/b;-><init>()V

    sput-object v1, Lcom/mgtv/ssp/b;->a:Lcom/mgtv/ssp/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/ssp/b;->a:Lcom/mgtv/ssp/b;

    return-object v0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/b;Lcom/mgtv/ssp/bean/SspJumpBean;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/b;->a(Lcom/mgtv/ssp/bean/SspJumpBean;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V

    return-void
.end method

.method private a(Lcom/mgtv/ssp/bean/SspJumpBean;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V
    .locals 5

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 17
    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/mgtv/ssp/bean/SspJumpBean;->data:Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;

    if-eqz v3, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    .line 18
    iput-object v3, p0, Lcom/mgtv/ssp/b;->b:Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;

    .line 19
    iget-object v2, v3, Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;->schemaUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mgtv/ssp/b;->b:Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;

    iget-object v2, v2, Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;->downloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    const-string p0, "jump url is null"

    invoke-interface {p2, v1, p0}, Lcom/mgtv/ssp/MgtvJumpDataCallback;->onResult(ZLjava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/mgtv/ssp/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/ssp/b;->d:Ljava/lang/String;

    .line 22
    iget-object p0, p1, Lcom/mgtv/ssp/bean/SspJumpBean;->data:Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;

    iget-object p0, p0, Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;->btnTitle:Ljava/lang/String;

    invoke-interface {p2, v0, p0}, Lcom/mgtv/ssp/MgtvJumpDataCallback;->onResult(ZLjava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_3
    const-string p0, "data is null"

    invoke-interface {p2, v1, p0}, Lcom/mgtv/ssp/MgtvJumpDataCallback;->onResult(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 24
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/mgtv/ssp/b;->b:Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mgtv/ssp/b;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/mgtv/ssp/b;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    :goto_0
    iget-object p2, p0, Lcom/mgtv/ssp/b;->b:Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;

    invoke-virtual {p2}, Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/mgtv/ssp/b;->b:Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;

    iget-object v2, p2, Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;->downloadUrl:Ljava/lang/String;

    iget v3, p2, Lcom/mgtv/ssp/bean/SspJumpBean$JumperData;->schemaHint:I

    const-string v4, "v_play"

    iget-object v5, p0, Lcom/mgtv/ssp/b;->d:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput-object p3, p0, Lcom/mgtv/ssp/b;->c:Ljava/lang/String;

    .line 11
    new-instance v1, Lcom/mgtv/task/m;

    invoke-direct {v1, p1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-static {v0}, Lcom/mgtv/ssp/net/a;->a(Lcom/mgtv/ssp/bean/config/a;)Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-result-object p1

    .line 13
    const-string v0, "vcode"

    invoke-virtual {p1, v0, p3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 14
    const-string p3, "mid"

    invoke-virtual {p1, p3, p2}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const/4 p2, 0x1

    .line 15
    invoke-virtual {v1, p2}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    const/16 p3, 0x2710

    invoke-virtual {p2, p3}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object p2

    invoke-static {}, Lcom/hunantv/imgo/net/b;->w()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/mgtv/ssp/b$1;

    invoke-direct {v0, p0, p4}, Lcom/mgtv/ssp/b$1;-><init>(Lcom/mgtv/ssp/b;Lcom/mgtv/ssp/MgtvJumpDataCallback;)V

    invoke-virtual {p2, p3, p1, v0}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    const/4 p0, 0x0

    .line 16
    const-string p1, ""

    invoke-interface {p4, p0, p1}, Lcom/mgtv/ssp/MgtvJumpDataCallback;->onResult(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method
