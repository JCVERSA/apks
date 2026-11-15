.class Lcom/cloud/hisavana/sdk/a4$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/p0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/a4;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lcom/cloud/hisavana/sdk/a4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a4$a;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/a4$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$a;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/a4;->n(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$a;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/a4;->l(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$a;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/a4$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/a4;->n(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$a;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/a4;->k(Lcom/cloud/hisavana/sdk/a4;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$a;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/a4;->j(Lcom/cloud/hisavana/sdk/a4;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
