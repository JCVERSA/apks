.class public Lcom/cloud/hisavana/sdk/h0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/h0;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/h0;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/h0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/h0$d;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/h0$d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/h0$d;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/h0$d;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/h0;->a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/h0$d;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/h0;->a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;

    move-result-object p0

    invoke-interface {p0, v0, p2}, Lcom/cloud/hisavana/sdk/h0$g;->b(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h0$d;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/h0;->a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/h0$d;->a:Lcom/cloud/hisavana/sdk/h0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/h0;->a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/cloud/hisavana/sdk/h0$g;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "MaterialDownload"

    const-string v2, "loadPlatformAd onSuccess mAdBean "

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h0$d;->a:Lcom/cloud/hisavana/sdk/h0;

    new-instance v1, Lfxd;

    invoke-direct {v1, p0, p1, p2}, Lfxd;-><init>(Lcom/cloud/hisavana/sdk/h0$d;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    invoke-static {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/h0;->e(Lcom/cloud/hisavana/sdk/h0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method
