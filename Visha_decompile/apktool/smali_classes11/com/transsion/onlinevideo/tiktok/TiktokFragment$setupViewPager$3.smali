.class public final Lcom/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->u1()V
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
        "com/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "Lzfb;",
        "onPageSelected",
        "(I)V",
        "state",
        "onPageScrollStateChanged",
        "onlinevideo_release"
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
.field public final synthetic d:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3;->d:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3;->d:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->d0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->v0()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3;->d:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->d0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->t0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_TiktokFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3;->d:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-static {v0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->f0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokFragment$setupViewPager$3;->d:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->d0(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->r0(I)V

    :cond_0
    return-void
.end method
