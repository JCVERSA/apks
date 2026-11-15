.class Lcom/cloud/hisavana/sdk/i$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/i;->u(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/i;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/i;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i$b;->d:Lcom/cloud/hisavana/sdk/i;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/i$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/i$b;->c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i$b;->d:Lcom/cloud/hisavana/sdk/i;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/i;->o(Lcom/cloud/hisavana/sdk/i;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ad error adError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflineAdManager"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i$b;->d:Lcom/cloud/hisavana/sdk/i;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i;->S(Lcom/cloud/hisavana/sdk/i;)Lcom/cloud/hisavana/sdk/l$d;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/i$b;->c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1}, Lcom/cloud/hisavana/sdk/l$d;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/i$b;->k(ILcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V

    return-void
.end method

.method public k(ILcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V
    .locals 2

    invoke-static {p2}, Lie9;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i$b;->d:Lcom/cloud/hisavana/sdk/i;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/sdk/i;->o(Lcom/cloud/hisavana/sdk/i;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i$b;->d:Lcom/cloud/hisavana/sdk/i;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/i$b;->c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {p1, p2, v0, p0}, Lcom/cloud/hisavana/sdk/i;->n(Lcom/cloud/hisavana/sdk/i;Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/i$b;->d:Lcom/cloud/hisavana/sdk/i;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/i$b;->c:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {p1, p2, p0}, Lcom/cloud/hisavana/sdk/i;->m(Lcom/cloud/hisavana/sdk/i;Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    :goto_0
    return-void
.end method
