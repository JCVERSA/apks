.class public Lcom/cloud/hisavana/sdk/f$c$d;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/f$c;->k()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/f$c;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/f$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/f$c$d;->b:Lcom/cloud/hisavana/sdk/f$c;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$c$d;->b:Lcom/cloud/hisavana/sdk/f$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f$c;->n(Lcom/cloud/hisavana/sdk/f$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$c$d;->b:Lcom/cloud/hisavana/sdk/f$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f$c;->n(Lcom/cloud/hisavana/sdk/f$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/f$c$d;->b:Lcom/cloud/hisavana/sdk/f$c;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/f$c;->n(Lcom/cloud/hisavana/sdk/f$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$c$d;->b:Lcom/cloud/hisavana/sdk/f$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f$c;->n(Lcom/cloud/hisavana/sdk/f$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/f$c$d;->b:Lcom/cloud/hisavana/sdk/f$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/f$c;->n(Lcom/cloud/hisavana/sdk/f$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/f$c$d;->b:Lcom/cloud/hisavana/sdk/f$c;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/f$c;->n(Lcom/cloud/hisavana/sdk/f$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
