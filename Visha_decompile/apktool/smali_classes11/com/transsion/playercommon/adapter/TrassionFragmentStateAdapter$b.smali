.class public Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;->c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;->a:Landroidx/fragment/app/Fragment;

    if-ne p2, p1, :cond_0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;->c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    invoke-static {p1, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->b(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;->c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method
