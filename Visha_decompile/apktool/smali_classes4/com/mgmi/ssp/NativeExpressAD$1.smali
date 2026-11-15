.class Lcom/mgmi/ssp/NativeExpressAD$1;
.super Lcom/mgmi/ads/api/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ssp/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/mgmi/ssp/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/NativeExpressADListener;ILcom/mgmi/ssp/TParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ssp/NativeExpressAD;


# direct methods
.method public constructor <init>(Lcom/mgmi/ssp/NativeExpressAD;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-direct {p0}, Lcom/mgmi/ads/api/a;-><init>()V

    return-void
.end method


# virtual methods
.method public isFullScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {v0}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/NativeInnerListener;->isFullScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/a/b/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/a/b/a/a;

    new-instance v1, Lcom/mgmi/ssp/NativeExpressADView;

    invoke-direct {v1, v0}, Lcom/mgmi/ssp/NativeExpressADView;-><init>(Lcom/mgtv/a/b/a/a;)V

    iget-object v0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object v0, v0, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/mgmi/ssp/NativeExpressADListener;->onADLoaded(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V
    .locals 3
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

    iget-object v0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {v0}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p0

    new-instance v0, Lcom/mgmi/ssp/AdError;

    invoke-direct {v0, p2, p1}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_VIP:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/mgmi/ads/api/a$a;->JUMP_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/mgmi/ads/api/a$a;->LOAD_HARFSCREEN_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/mgmi/ads/api/a$a;->CLOSE_AD:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p1, p1, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressADView;

    invoke-interface {p1, p0}, Lcom/mgmi/ssp/NativeExpressADListener;->onADClosed(Lcom/mgmi/ssp/NativeExpressADView;)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_RENDER_SUCCESS:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p1, p1, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    iget-object p2, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p2, p2, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgmi/ssp/NativeExpressADView;

    invoke-interface {p1, p2}, Lcom/mgmi/ssp/NativeExpressADListener;->onRenderSuccess(Lcom/mgmi/ssp/NativeExpressADView;)V

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressADView;

    invoke-interface {p1, p0}, Lcom/mgmi/ssp/NativeExpressADListener;->onADExposure(Lcom/mgmi/ssp/NativeExpressADView;)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_RENDER_FAIL:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p1, p1, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ssp/NativeExpressADView;

    invoke-interface {p1, p0}, Lcom/mgmi/ssp/NativeExpressADListener;->onRenderFail(Lcom/mgmi/ssp/NativeExpressADView;)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_FINISH:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/NativeInnerListener;->onADFinish()V

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/mgmi/ads/api/a$a;->VIDEO_AD_START:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/mgmi/f/e;->h()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/NativeInnerListener;->onVideoADStart()V

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/mgmi/ads/api/a$a;->PLAYER_PROGRESS_UPDATE:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p0

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getAdDurationRemain()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/NativeInnerListener;->onUpdateAdTime(I)V

    goto/16 :goto_1

    :cond_7
    sget-object p2, Lcom/mgmi/ads/api/a$a;->HALFSCREEN_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/NativeInnerListener;->onClickBackButton()V

    goto/16 :goto_1

    :cond_8
    sget-object p2, Lcom/mgmi/ads/api/a$a;->FULLSCREEN_REQUESTED:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/NativeInnerListener;->onClickFullScreenButton()V

    goto/16 :goto_1

    :cond_9
    sget-object p2, Lcom/mgmi/ads/api/a$a;->IMAGE_AD_START:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/mgmi/f/e;->h()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$000(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeInnerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgmi/ssp/NativeInnerListener;->onADFinish()V

    goto :goto_1

    :cond_a
    :goto_0
    if-eqz p2, :cond_c

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getValuesTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p1}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p1, p1, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    iget-object p1, p1, Lcom/mgmi/ssp/NativeExpressAD;->nativeExpressADViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ssp/NativeExpressADView;

    invoke-virtual {v0}, Lcom/mgmi/ssp/NativeExpressADView;->getValueTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/mgmi/ssp/NativeExpressADView;->getValueTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/mgmi/ads/api/AdWidgetInfoImp;->getValuesTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressAD$1;->a:Lcom/mgmi/ssp/NativeExpressAD;

    invoke-static {p0}, Lcom/mgmi/ssp/NativeExpressAD;->access$100(Lcom/mgmi/ssp/NativeExpressAD;)Lcom/mgmi/ssp/NativeExpressADListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mgmi/ssp/NativeExpressADListener;->onADClicked(Lcom/mgmi/ssp/NativeExpressADView;)V

    :cond_c
    :goto_1
    return-void
.end method
