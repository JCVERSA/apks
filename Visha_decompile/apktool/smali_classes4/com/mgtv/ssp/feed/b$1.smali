.class Lcom/mgtv/ssp/feed/b$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/feed/b;->b(Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/ssp/bean/SpaceBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/ssp/bean/a;

.field final synthetic c:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

.field final synthetic d:J

.field final synthetic e:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

.field final synthetic f:Lcom/mgtv/ssp/feed/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/feed/b;Lcom/mgtv/ssp/bean/a;Lcom/mgtv/ssp/viewcard/BaseVideoListView;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/feed/b$1;->f:Lcom/mgtv/ssp/feed/b;

    iput-object p2, p0, Lcom/mgtv/ssp/feed/b$1;->b:Lcom/mgtv/ssp/bean/a;

    iput-object p3, p0, Lcom/mgtv/ssp/feed/b$1;->c:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iput-wide p4, p0, Lcom/mgtv/ssp/feed/b$1;->d:J

    iput-object p6, p0, Lcom/mgtv/ssp/feed/b$1;->e:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/ssp/bean/SpaceBean;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/SpaceBean;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1    # Lcom/mgtv/ssp/bean/SpaceBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/ssp/feed/b$1;->b:Lcom/mgtv/ssp/bean/a;

    iget-object p1, p1, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/auth/b;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    invoke-direct {p1}, Lcom/mgtv/ssp/bean/config/SspSpaceConfig;-><init>()V

    const/4 p2, 0x1

    .line 8
    iput p2, p1, Lcom/mgtv/ssp/bean/config/SspSpaceConfig;->autoPlay:I

    .line 9
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mgtv/ssp/auth/b;->a(Lcom/mgtv/ssp/bean/config/SspSpaceConfig;)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/ssp/feed/b$1;->c:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/feed/b$1;->f:Lcom/mgtv/ssp/feed/b;

    iget-wide v1, p0, Lcom/mgtv/ssp/feed/b$1;->d:J

    iget-object v5, p0, Lcom/mgtv/ssp/feed/b$1;->b:Lcom/mgtv/ssp/bean/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/ssp/feed/b;->a(JZLcom/hunantv/imgo/data/ErrorData;Lcom/mgtv/ssp/bean/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    iget-object p1, p0, Lcom/mgtv/ssp/feed/b$1;->b:Lcom/mgtv/ssp/bean/a;

    iget-object p1, p1, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    const p2, 0x186a0

    const-string p5, "data error"

    invoke-interface {p1, p2, p5}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    .line 15
    :cond_1
    :goto_2
    new-instance v4, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {v4}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    const/4 p1, 0x2

    .line 16
    invoke-static {p1}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/mgtv/ssp/feed/b$1;->e:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {v4, p2}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/mgtv/ssp/feed/b$1;->f:Lcom/mgtv/ssp/feed/b;

    iget-wide v1, p0, Lcom/mgtv/ssp/feed/b$1;->d:J

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/mgtv/ssp/feed/b$1;->b:Lcom/mgtv/ssp/bean/a;

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/ssp/feed/b;->a(JZLcom/hunantv/imgo/data/ErrorData;Lcom/mgtv/ssp/bean/a;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/ssp/bean/SpaceBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/feed/b$1;->b(Lcom/mgtv/ssp/bean/SpaceBean;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    check-cast p1, Lcom/mgtv/ssp/bean/SpaceBean;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/ssp/feed/b$1;->a(Lcom/mgtv/ssp/bean/SpaceBean;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/mgtv/ssp/bean/SpaceBean;)V
    .locals 7

    if-nez p1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/mgtv/ssp/feed/b$1;->b:Lcom/mgtv/ssp/bean/a;

    iget-object v1, v1, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    if-eqz v1, :cond_0

    const v2, 0x186a2

    .line 3
    const-string v3, "http vast format error"

    invoke-interface {v1, v2, v3}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    .line 4
    :cond_0
    const-string v4, "http vast format error"

    const/4 v5, 0x0

    const v2, 0x186a2

    const v3, 0x186a2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/ssp/feed/b$1;->a(Lcom/mgtv/ssp/bean/SpaceBean;IILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/mgtv/ssp/feed/b$1;->f:Lcom/mgtv/ssp/feed/b;

    iget-object v2, p0, Lcom/mgtv/ssp/feed/b$1;->c:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object v3, p0, Lcom/mgtv/ssp/feed/b$1;->b:Lcom/mgtv/ssp/bean/a;

    iget-wide v4, p0, Lcom/mgtv/ssp/feed/b$1;->d:J

    iget-object v6, p0, Lcom/mgtv/ssp/feed/b$1;->e:Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/mgtv/ssp/feed/b;->a(Lcom/mgtv/ssp/feed/b;Lcom/mgtv/ssp/viewcard/BaseVideoListView;Lcom/mgtv/ssp/bean/SpaceBean;Lcom/mgtv/ssp/bean/a;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V

    :goto_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/ssp/bean/SpaceBean;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/feed/b$1;->a(Lcom/mgtv/ssp/bean/SpaceBean;)V

    return-void
.end method
