.class public Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicmovie/fragments/PlayerMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    iget-boolean p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->mFromGuide:Z

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput p0, Ldz5;->a:I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->p0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/adapter/PagerAdapter2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/adapter/PagerAdapter2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->t(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->z0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->A0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->onMainTabSelected(I)V

    :cond_1
    sget-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iget v1, v0, Lcom/transsion/data/Repository;->mainTab:I

    if-eq v1, p1, :cond_2

    iput p1, v0, Lcom/transsion/data/Repository;->mainTab:I

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->g0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/videomodel/MainViewModel;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->g0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/videomodel/MainViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->g0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/videomodel/MainViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->j0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->d0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->h0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    iget-boolean v1, v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->j1()V

    :cond_5
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->f0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->B0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->i0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I

    move-result v2

    if-ne p1, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->changeBackgroundForOnlineVideo(ZI)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->i0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I

    move-result v0

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-virtual {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->I0()V

    :cond_7
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->t0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    :goto_1
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->r0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I

    move-result v0

    if-ge v1, v0, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;->d:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0, v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v2, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsSelectByViewPager:Z

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method
