.class public Lcom/transsion/audio/fragments/AudioMainFragment$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/AudioMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->y0(Lcom/transsion/audio/fragments/AudioMainFragment;)Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->t(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioMainFragment;->G0(Lcom/transsion/audio/fragments/AudioMainFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "audio"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {v4}, Lcom/transsion/audio/fragments/AudioMainFragment;->H0(Lcom/transsion/audio/fragments/AudioMainFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-virtual {v0, v3, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :goto_0
    sget-boolean v0, Lpp3;->y:Z

    const/4 v1, 0x6

    const/4 v4, 0x3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->A:Z

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v3

    :goto_4
    iput-boolean v1, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->A:Z

    :goto_5
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iput p1, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->R:I

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioBaseFragment;

    iput-boolean v3, v0, Lcom/transsion/audio/fragments/AudioBaseFragment;->r:Z

    :cond_6
    if-ltz p1, :cond_9

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectTabViewPager()V

    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    if-eq p1, v2, :cond_8

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-boolean v0, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsSelectByViewPager:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioMainFragment;->y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectTabViewPager()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$a;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0, v3}, Lcom/transsion/audio/fragments/AudioMainFragment;->F0(Lcom/transsion/audio/fragments/AudioMainFragment;Z)V

    return-void
.end method
