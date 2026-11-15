.class Lcom/mgmi/ssp/NativeAd$1;
.super Lcom/mgmi/ads/api/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ssp/NativeAd;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/NativeAdListener;ILcom/mgmi/ssp/TParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ssp/NativeAd;


# direct methods
.method public constructor <init>(Lcom/mgmi/ssp/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-direct {p0}, Lcom/mgmi/ads/api/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onADLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/a/b/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/a/b/a/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mgtv/a/b/a/a;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/mgmi/ssp/NativeAdData;

    invoke-virtual {v2}, Lcom/mgtv/a/b/a/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/mgmi/ssp/NativeAdData;-><init>(Lcom/mgtv/a/b/a/a;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    iget-object v4, v4, Lcom/mgmi/ssp/NativeAd;->mNativeADDataRefs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v1, :cond_0

    invoke-virtual {v2}, Lcom/mgtv/a/b/a/a;->A()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeAd;->access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeAd;->access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;

    move-result-object p0

    new-instance p1, Lcom/mgmi/ssp/AdError;

    const/16 v0, 0x1392

    const-string v1, "\u5e7f\u544a\u6837\u5f0f\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5e7f\u544a\u4f4d\u4e0e\u63a5\u53e3\u4f7f\u7528\u662f\u5426\u4e00\u81f4"

    invoke-direct {p1, v0, v1}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeAd;->access$100(Lcom/mgmi/ssp/NativeAd;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeAd;->access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeAd;->access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/mgmi/ssp/NativeAdListener;->onADLoaded(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeAd;->access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeAd;->access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd;->mNativeADDataRefs:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/mgmi/ssp/NativeAdListener;->onADLoaded(Ljava/util/List;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V
    .locals 1
    .param p2    # Lcom/mgmi/ads/api/AdWidgetInfoImp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_FAIL:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getErrorCode()I

    move-result p2

    iget-object v0, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {v0}, Lcom/mgmi/ssp/NativeAd;->access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd$1;->a:Lcom/mgmi/ssp/NativeAd;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeAd;->access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;

    move-result-object p0

    new-instance v0, Lcom/mgmi/ssp/AdError;

    invoke-direct {v0, p2, p1}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgmi/ads/api/a$a;->JUMP_VIP:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgmi/ads/api/a$a;->JUMP_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgmi/ads/api/a$a;->LOAD_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
