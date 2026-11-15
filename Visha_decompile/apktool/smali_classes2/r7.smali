.class public Lr7;
.super Lxs8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7$b;
    }
.end annotation


# static fields
.field public static k:Ljava/lang/String; = null

.field public static l:Ljava/lang/String; = null

.field public static m:Z = false


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljavax/net/ssl/SSLSocketFactory;

.field public g:Lr7$b;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lxs8;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lr7;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lr7;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr7;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lr7;->f:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lr7;->g:Lr7$b;

    iput-object v0, p0, Lr7;->h:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lr7;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lr7;)V
    .locals 0

    invoke-virtual {p0}, Lr7;->i()V

    return-void
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lr7;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lr7;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Z)Z
    .locals 0

    sput-boolean p0, Lr7;->m:Z

    return p0
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lr7;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lr7;->l:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lr7;->i()V

    return-void
.end method

.method public final i()V
    .locals 11

    const-string v0, "cloudControlVersion"

    iget-object v1, p0, Lr7;->g:Lr7$b;

    invoke-interface {v1}, Lr7$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object p0, p0, Lxs8;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

    const-string v0, "TextUtils.isEmpty(postBodyString) == true "

    invoke-virtual {p0, v3, v0, v4}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, "sendRequestToServer() --> TextUtils.isEmpty(postBodyString) == true "

    invoke-static {p0}, Lja1;->netLog(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lr7;->j:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestTs:Ljava/lang/Long;

    iget-object v2, p0, Lr7;->j:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->m0(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----- full url = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lr7;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n ----- postBodyString = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lo9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v6

    const-string v7, "hisavanaCurrentCloudControlVersion"

    invoke-virtual {v6, v7, v4}, Lo9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lr7;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lxs8;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    check-cast v6, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

    invoke-virtual {v6, v7}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->f(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-static {}, Lp9;->c()I

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    invoke-static {v7}, Lcom/cloud/hisavana/sdk/o0;->f(Z)V

    const-string v6, "post"

    const-string v7, ""

    const-string v9, "application/json"

    iget-object v10, p0, Lr7;->d:Ljava/lang/String;

    invoke-static {v6, v7, v9, v10, v1}, Lcom/cloud/hisavana/sdk/o0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/cloud/hisavana/net/RequestParams;

    invoke-direct {v7}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    const-string/jumbo v9, "x-tr-signature"

    invoke-virtual {v7, v9, v6}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v5}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cloudControlOfflineVersion"

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "defaultAd"

    const-string v4, "2"

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offlineAd"

    iget-object v4, p0, Lr7;->h:Ljava/lang/String;

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Timezone"

    const-string v4, "UTC"

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdktype"

    iget-object v4, p0, Lr7;->i:Ljava/lang/String;

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/cloud/hisavana/net/RequestParams;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lr7;->d:Ljava/lang/String;

    new-instance v1, Lr7$a;

    invoke-direct {v1, p0, v8, v2}, Lr7$a;-><init>(Lr7;ZLjava/lang/String;)V

    invoke-static {v0, v7, v1}, Lcom/cloud/hisavana/net/HttpRequest;->j(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdServerRequest --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lja1;->netLog(Ljava/lang/String;)V

    iget-object p0, p0, Lxs8;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz p0, :cond_5

    check-cast p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public j(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Lr7;
    .locals 0

    iput-object p1, p0, Lr7;->j:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-object p0
.end method

.method public k(Z)Lr7;
    .locals 0

    iput-boolean p1, p0, Lr7;->e:Z

    return-object p0
.end method

.method public l(Z)Lr7;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iput-object p1, p0, Lr7;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lr7;
    .locals 0

    iput-object p1, p0, Lxs8;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lr7;
    .locals 0

    iput-object p1, p0, Lr7;->c:Ljava/lang/String;

    return-object p0
.end method

.method public o(Lr7$b;)Lr7;
    .locals 0

    iput-object p1, p0, Lr7;->g:Lr7$b;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lr7;
    .locals 0

    iput-object p1, p0, Lr7;->i:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lr7;
    .locals 0

    iput-object p1, p0, Lr7;->d:Ljava/lang/String;

    return-object p0
.end method
