.class Lcom/transsion/magicvideo/fragments/VideosFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideosFragment;->O3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAdBanner()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAdBanner videoBanner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {v1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->z2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object v1, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->y2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/vishaads/views/AdBannerView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setHeaderAndEmpty(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->y2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/vishaads/views/AdBannerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaads/views/AdBannerView;->setAdBannerClick(Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->z2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalAd:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lmn5;->a()Lmn5;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmn5;->n(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->D2(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->z2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_vdbanner_close_cl"

    const-string v1, ""

    invoke-static {v1, p0, v0}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public jumpLink()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->z2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getJumpLink()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment$8;->this$0:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->z2(Lcom/transsion/magicvideo/fragments/VideosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v1, "vd_ad_vdbanner_cl"

    invoke-static {v0, p0, v1}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
