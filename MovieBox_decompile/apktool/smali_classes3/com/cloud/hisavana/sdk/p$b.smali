.class Lcom/cloud/hisavana/sdk/p$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/p;->s(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener<",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field final synthetic d:Lcom/cloud/hisavana/sdk/p;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/p$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/p$b;->c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/p;->m(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "load ad error adError="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "OfflineAdManager"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/p;->N(Lcom/cloud/hisavana/sdk/p;)Lcom/cloud/hisavana/sdk/v$c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p$b;->c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-interface {v0, v1, v2, p1}, Lcom/cloud/hisavana/sdk/v$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method protected bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p$b;->k(ILcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected k(ILcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/http/e;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/sdk/p;->m(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p$b;->c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 29
    .line 30
    invoke-static {p1, p2, v0, v1}, Lcom/cloud/hisavana/sdk/p;->l(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p$b;->d:Lcom/cloud/hisavana/sdk/p;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p$b;->c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 37
    .line 38
    invoke-static {p1, p2, v0}, Lcom/cloud/hisavana/sdk/p;->k(Lcom/cloud/hisavana/sdk/p;Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method
