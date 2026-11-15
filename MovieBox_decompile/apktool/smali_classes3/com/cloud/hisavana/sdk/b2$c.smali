.class Lcom/cloud/hisavana/sdk/b2$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b2;->s(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/b2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b2$c;->b:Lcom/cloud/hisavana/sdk/b2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2$c;->b:Lcom/cloud/hisavana/sdk/b2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/b2;->f(Lcom/cloud/hisavana/sdk/b2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2$c;->b:Lcom/cloud/hisavana/sdk/b2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b2;->p(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/e1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2$c;->b:Lcom/cloud/hisavana/sdk/b2;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b2;->p(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/e1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/e1;->k0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
