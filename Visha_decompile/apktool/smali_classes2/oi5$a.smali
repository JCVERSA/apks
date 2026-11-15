.class public Loi5$a;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loi5;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/view/View;Lv7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lv7;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Lv7;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Loi5$a;->b:Lv7;

    iput-object p2, p0, Loi5$a;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    iput-object p3, p0, Loi5$a;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1}, Loi5$a;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Loi5$a;->b:Lv7;

    if-eqz p1, :cond_0

    iget-object v0, p0, Loi5$a;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1, v0}, Lv7;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_0
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    iget-object v0, p0, Loi5$a;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Loi5$a;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Loi5$a;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Loi5$a;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lfx8;->a:Lfx8;

    iget-object v0, p0, Loi5$a;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v0}, Lfx8;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    iget-object p0, p0, Loi5$a;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setAdShowed(Z)V

    return-void
.end method
