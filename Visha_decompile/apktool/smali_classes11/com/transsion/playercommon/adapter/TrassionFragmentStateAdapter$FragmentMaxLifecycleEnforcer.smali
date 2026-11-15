.class public Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FragmentMaxLifecycleEnforcer"
.end annotation


# instance fields
.field public a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public c:Landroidx/lifecycle/LifecycleEventObserver;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:J

.field public final synthetic f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->e:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected ViewPager2 instance. Got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$a;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$a;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    new-instance p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$b;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$b;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    new-instance p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->c:Landroidx/lifecycle/LifecycleEventObserver;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->o:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object p1, p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->o:Landroidx/lifecycle/Lifecycle;

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->c:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public d(Z)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    invoke-virtual {v0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object v0, v0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->getItemId(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->e:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_6

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object p1, p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-wide v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->e:J

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object p1, p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object v3, v3, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object v3, v3, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->f:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;

    iget-object v5, v5, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-wide v6, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->e:J

    cmp-long v6, v3, v6

    if-eqz v6, :cond_1

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v5, v6}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    iget-wide v6, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->e:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {v5, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    :cond_5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_6
    return-void
.end method
