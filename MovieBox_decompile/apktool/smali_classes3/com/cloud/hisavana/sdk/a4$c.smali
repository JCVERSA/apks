.class Lcom/cloud/hisavana/sdk/a4$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/a4;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic c:Lcom/cloud/hisavana/sdk/a4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/a4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a4;->o(Lcom/cloud/hisavana/sdk/a4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/a4;->o(Lcom/cloud/hisavana/sdk/a4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/a4;->l(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/a4;->r(Lcom/cloud/hisavana/sdk/a4;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/a4;->o(Lcom/cloud/hisavana/sdk/a4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/z;->a:Lcom/cloud/hisavana/sdk/common/util/z;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v1, Lcom/cloud/hisavana/sdk/a4$c$a;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/a4$c$a;-><init>(Lcom/cloud/hisavana/sdk/a4$c;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, p2, v1}, Lcom/cloud/hisavana/sdk/common/util/z;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/util/n;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 44
    .line 45
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 46
    .line 47
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/a4;->l(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/a4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 54
    .line 55
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/a4;->m(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method
