.class public Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/fragments/VideoMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->G0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p2, p1, :cond_0

    invoke-static {v1, v0}, Lp06;->Z(IZ)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->G0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)I

    move-result p2

    if-le p2, p1, :cond_1

    invoke-static {v1, v1}, Lp06;->Z(IZ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->H0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)I

    move-result p2

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    move v1, v0

    :cond_2
    invoke-static {v0, v1}, Lp06;->Z(IZ)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p2, p3}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->N0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;I)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->K0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->t(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->L0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {v1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->K0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->W0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "video"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-virtual {v0, v3, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iput p1, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget v4, v1, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    if-le v0, v4, :cond_1

    iget-object v0, v1, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v1, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    iget v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v1, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    iget v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iput-boolean v3, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->J:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v1, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    iget v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L0()V

    :cond_1
    if-ne p1, v3, :cond_3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "playListFarvoriteRedSpot"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-boolean v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->t0:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "redshots_recently_added"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    :cond_3
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectTabViewPager()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-eq p1, v2, :cond_6

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v0, v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-boolean v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsSelectByViewPager:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectTabViewPager()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;->d:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0, v3}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->P0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V

    return-void
.end method
