.class Lcom/cloud/hisavana/sdk/a4$d;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/a4;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/a4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/a4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/a4$d;->b:Lcom/cloud/hisavana/sdk/a4;

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
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "load store url error,"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "SplashLoadManager"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/a4$d;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/a4;->l(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/a4$d;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/a4;->t(Lcom/cloud/hisavana/sdk/a4;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/a4$d;->b:Lcom/cloud/hisavana/sdk/a4;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/a4;->o(Lcom/cloud/hisavana/sdk/a4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/a4;->m(Lcom/cloud/hisavana/sdk/a4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
