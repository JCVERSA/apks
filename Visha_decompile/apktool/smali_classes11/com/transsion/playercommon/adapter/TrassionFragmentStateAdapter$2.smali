.class Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

.field public final synthetic c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;->c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;->b:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;->c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    invoke-virtual {p2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;->b:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;->c:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;->b:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V

    :cond_0
    return-void
.end method
