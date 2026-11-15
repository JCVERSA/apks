.class Lcom/mgtv/thirdsdk/playcore/e/e$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/e/e;->c(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

.field final synthetic c:Lcom/mgtv/thirdsdk/playcore/e/e;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/e/e;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->b:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance v6, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {v6}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 7
    invoke-virtual {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;->a_()Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    move-result-object p1

    sget-object p3, Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/hunantv/imgo/net/ImgoHttpCallBack$ErrorType;

    if-ne p1, p3, :cond_0

    .line 8
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->b()V

    .line 9
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->b(Lcom/mgtv/thirdsdk/playcore/e/e;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->b(Lcom/mgtv/thirdsdk/playcore/e/e;)Lcom/mgtv/thirdsdk/playcore/c$b;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->c(Lcom/mgtv/thirdsdk/playcore/e/e;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/mgtv/ssp/R$string;->chang_definition_failed:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "130106"

    invoke-interface {p1, p2, p0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->b:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Lcom/mgtv/thirdsdk/playcore/e/e;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/Throwable;Lcom/hunantv/imgo/net/entity/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/e$1;->b(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/thirdsdk/playcore/e/e$1;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V
    .locals 4

    .line 2
    new-instance v0, Lcom/hunantv/imgo/net/entity/b;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/entity/b;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mgtv/task/http/HttpTraceObject;->getStepDuration(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hunantv/imgo/net/entity/b;->a:J

    .line 4
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Lcom/mgtv/thirdsdk/playcore/e/e;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v1

    iput-object p1, v1, Lcom/mgtv/thirdsdk/playcore/e;->F:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v2, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v2

    iget-object v2, v2, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const-string v3, "suuid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Lcom/mgtv/thirdsdk/playcore/e/e;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    iget-object v3, p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/hunantv/imgo/util/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/mgtv/thirdsdk/playcore/e;->G:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Lcom/mgtv/thirdsdk/playcore/e/e;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Lcom/mgtv/thirdsdk/playcore/e/e;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object v2

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->G:Ljava/lang/String;

    iput-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->H:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->c:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/e$1;->b:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-static {v1, v2, p0, p1, v0}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Lcom/mgtv/thirdsdk/playcore/e/e;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;Lcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/e$1;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    return-void
.end method
