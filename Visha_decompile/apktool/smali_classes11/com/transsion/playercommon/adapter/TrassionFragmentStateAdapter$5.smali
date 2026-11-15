.class Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->scheduleGracePeriodEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$5;->d:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$5;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$5;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$5;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$5;->c:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
