.class Lcom/cloud/hisavana/sdk/a2$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/a2;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/a2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/a2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a2$a;->b:Lcom/cloud/hisavana/sdk/a2;

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
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a2$a;->b:Lcom/cloud/hisavana/sdk/a2;

    .line 2
    .line 3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_STORE_MATERIAL_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/a2;->i(Lcom/cloud/hisavana/sdk/a2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/a2$a;->b:Lcom/cloud/hisavana/sdk/a2;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/a2;->h(Lcom/cloud/hisavana/sdk/a2;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a2$a;->b:Lcom/cloud/hisavana/sdk/a2;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/a2;->g(Lcom/cloud/hisavana/sdk/a2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
