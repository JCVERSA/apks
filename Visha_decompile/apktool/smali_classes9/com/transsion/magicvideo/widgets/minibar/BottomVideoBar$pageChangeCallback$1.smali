.class public final Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "com/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "Lzfb;",
        "onPageSelected",
        "(I)V",
        "state",
        "onPageScrollStateChanged",
        "video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMManualChange(Z)V

    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMManualChange()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageSelected: position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mManualChange ="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BottomVideoBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMManualChange()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMManualChange(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-static {v3, v2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->access$isSameMediaItem(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "same item, return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;->d:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    const-wide/16 v3, 0x15e

    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->playItem(Lcom/transsion/dbdata/beans/media/MediaItem;IJ)V

    sub-int p0, p1, v0

    sub-int/2addr v0, p1

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, p1

    if-ne v0, p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "vd_miniplayer_slip_left"

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "vd_miniplayer_slip_right"

    :goto_1
    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
