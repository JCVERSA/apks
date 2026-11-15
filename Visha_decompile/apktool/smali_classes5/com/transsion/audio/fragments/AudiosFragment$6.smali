.class Lcom/transsion/audio/fragments/AudiosFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudiosFragment;->e3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/fragments/AudiosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAdBanner()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAdBanner audioBanner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {v1}, Lcom/transsion/audio/fragments/AudiosFragment;->v2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudiosFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lcom/transsion/audio/fragments/AudiosFragment$6$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/fragments/AudiosFragment$6$1;-><init>(Lcom/transsion/audio/fragments/AudiosFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderAndEmpty(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->u2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/vishaads/views/AdBannerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/vishaads/views/AdBannerView;->setAdBannerClick(Lcom/transsion/vishaads/views/AdBannerView$AdBannerClick;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->v2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalAd:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lmn5;->a()Lmn5;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmn5;->m(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->v2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_adbanner_close_cl"

    const-string v1, ""

    invoke-static {v1, p0, v0}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public jumpLink()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->v2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getJumpLink()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$6;->this$0:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->v2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v1, "vd_ad_adbanner_cl"

    invoke-static {v0, p0, v1}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
