.class public Lcom/cloud/hisavana/sdk/b$e;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$e;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$e;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    const/16 v1, 0xbbf

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    const/16 v1, 0xbc8

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$e;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Land;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$e;->b:Lcom/cloud/hisavana/sdk/b;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/b;->e(Lcom/cloud/hisavana/sdk/b;)Land;

    move-result-object p0

    invoke-virtual {p0, p1}, Land;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    return-void
.end method
