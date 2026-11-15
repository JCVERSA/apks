.class public Ltgd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgob$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltgd;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltgd;


# direct methods
.method public constructor <init>(Ltgd;)V
    .locals 0

    iput-object p1, p0, Ltgd$c;->a:Ltgd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    iget-object v0, p0, Ltgd$c;->a:Ltgd;

    invoke-static {v0}, Ltgd;->o(Ltgd;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltgd$c;->a:Ltgd;

    invoke-static {v0}, Ltgd;->o(Ltgd;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setCached(Ljava/lang/Boolean;)V

    :cond_0
    iget-object p0, p0, Ltgd$c;->a:Ltgd;

    invoke-static {p0, p1}, Ltgd;->l(Ltgd;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 2

    iget-object v0, p0, Ltgd$c;->a:Ltgd;

    invoke-static {v0, p1}, Ltgd;->r(Ltgd;I)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "SplashLoadManager"

    const-string v1, "loadVideo() -----> onSuccess"

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ltgd$c;->a:Ltgd;

    invoke-static {p1}, Ltgd;->o(Ltgd;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltgd$c;->a:Ltgd;

    invoke-static {p1}, Ltgd;->o(Ltgd;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setCached(Ljava/lang/Boolean;)V

    :cond_0
    iget-object p0, p0, Ltgd$c;->a:Ltgd;

    invoke-static {p0}, Ltgd;->j(Ltgd;)V

    return-void
.end method
