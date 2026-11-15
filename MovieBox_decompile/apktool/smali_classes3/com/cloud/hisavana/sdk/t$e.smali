.class Lcom/cloud/hisavana/sdk/t$e;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/t;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t$e;->b:Lcom/cloud/hisavana/sdk/t;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$e;->b:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xbbf

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0xbc8

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$e;->b:Lcom/cloud/hisavana/sdk/t;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Lcom/cloud/hisavana/sdk/p2;->L(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$e;->b:Lcom/cloud/hisavana/sdk/t;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/t;->b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    .line 1
    return-void
.end method
