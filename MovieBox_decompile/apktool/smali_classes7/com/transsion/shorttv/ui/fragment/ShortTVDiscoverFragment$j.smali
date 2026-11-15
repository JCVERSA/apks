.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->v1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->z0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p3, p1, v0, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->D0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;IIF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->C0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v0, v1, v2}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->F0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;J)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->G0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
