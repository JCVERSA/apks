.class public Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->b(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$a;->d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$a;->d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d(Z)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$a;->d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d(Z)V

    return-void
.end method
