.class Lcom/cloud/hisavana/sdk/s5$c$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/s5$c;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic c:Lcom/cloud/hisavana/sdk/s5$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/s5$c;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->c:Lcom/cloud/hisavana/sdk/s5$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->c:Lcom/cloud/hisavana/sdk/s5$c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->q(Lcom/cloud/hisavana/sdk/s5$c;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xfa

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->c:Lcom/cloud/hisavana/sdk/s5$c;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->l(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->c:Lcom/cloud/hisavana/sdk/s5$c;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->l(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->a(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->c:Lcom/cloud/hisavana/sdk/s5$c;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->l(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->c:Lcom/cloud/hisavana/sdk/s5$c;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/s5$c;->l(Lcom/cloud/hisavana/sdk/s5$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->a(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->c:Lcom/cloud/hisavana/sdk/s5$c;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/s5$c$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 50
    .line 51
    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/s5$c;->h(Lcom/cloud/hisavana/sdk/s5$c;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
