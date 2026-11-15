.class public final Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

.field final synthetic b:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->a:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->a:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, p1, v1}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->d0(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->a:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, p1, v1}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->d0(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
