.class public Lapp/fast/ssh/LogFragment;
.super Landroidx/fragment/app/Fragment;
.source "LogFragment.java"

# interfaces
.implements Lapp/fast/ssh/core/VpnStatus$DebugListener;


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debugList:Landroid/widget/ListView;

.field private items:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lapp/fast/ssh/LogFragment;->items:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/LogFragment;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/LogFragment;->items:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lapp/fast/ssh/LogFragment;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/LogFragment;->adapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lapp/fast/ssh/LogFragment;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/LogFragment;->debugList:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/LogFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lapp/fast/ssh/LogFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->clearDebug()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c003f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900bb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lapp/fast/ssh/LogFragment;->debugList:Landroid/widget/ListView;

    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lapp/fast/ssh/LogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f0c002b

    iget-object v1, p0, Lapp/fast/ssh/LogFragment;->items:Ljava/util/LinkedList;

    invoke-direct {p2, p3, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lapp/fast/ssh/LogFragment;->adapter:Landroid/widget/ArrayAdapter;

    iget-object p3, p0, Lapp/fast/ssh/LogFragment;->debugList:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->addDebugListener(Lapp/fast/ssh/core/VpnStatus$DebugListener;)V

    return-object p1
.end method

.method public onDebugReceived(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/LogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/LogFragment$1;

    invoke-direct {v1, p0, p1}, Lapp/fast/ssh/LogFragment$1;-><init>(Lapp/fast/ssh/LogFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized onDebugRestore(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lapp/fast/ssh/LogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/LogFragment$2;

    invoke-direct {v1, p0, p1}, Lapp/fast/ssh/LogFragment$2;-><init>(Lapp/fast/ssh/LogFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->removeDebugListener(Lapp/fast/ssh/core/VpnStatus$DebugListener;)V

    return-void
.end method
