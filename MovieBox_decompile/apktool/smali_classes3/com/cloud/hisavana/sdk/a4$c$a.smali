.class Lcom/cloud/hisavana/sdk/a4$c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/a4$c;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/a4$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/a4$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a4$c$a;->a:Lcom/cloud/hisavana/sdk/a4$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$c$a;->a:Lcom/cloud/hisavana/sdk/a4$c;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/a4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/a4;->m(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$c$a;->a:Lcom/cloud/hisavana/sdk/a4$c;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/a4$c;->c:Lcom/cloud/hisavana/sdk/a4;

    .line 16
    .line 17
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/a4;->l(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
