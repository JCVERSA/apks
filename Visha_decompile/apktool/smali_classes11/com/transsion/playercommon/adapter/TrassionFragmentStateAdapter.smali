.class public abstract Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/adapter/StatefulAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;,
        Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;,
        Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;",
        ">;",
        "Landroidx/viewpager2/adapter/StatefulAdapter;"
    }
.end annotation


# instance fields
.field public final o:Landroidx/lifecycle/Lifecycle;

.field public final p:Landroidx/fragment/app/FragmentManager;

.field public final q:Landroidx/collection/LongSparseArray;

.field public final r:Landroidx/collection/LongSparseArray;

.field public final s:Landroidx/collection/LongSparseArray;

.field public t:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

.field public u:Z

.field public v:Z

.field public final w:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->w:Ljava/util/Set;

    .line 5
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    .line 6
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    .line 7
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->u:Z

    .line 9
    iput-boolean v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->v:Z

    .line 10
    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    .line 11
    iput-object p2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->o:Landroidx/lifecycle/Lifecycle;

    const/4 p1, 0x1

    .line 12
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    return-void
.end method

.method public static createKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static isValidKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addViewToContainer: Design assumption violated.\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrassionFragmentStateAd"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, p2, :cond_3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public containsItem(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract createFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method public ensureFragment(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->createFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method public gcFragments()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->v:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->containsItem(J)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->u:Z

    if-nez v2, :cond_3

    iput-boolean v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->v:Z

    :goto_1
    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->isFragmentViewBound(J)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->removeFragment(J)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final h(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;I)V
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->removeFragment(J)V

    iget-object v4, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    iget-object v3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->ensureFragment(I)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindViewHolder: Design assumption violated.\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TrassionFragmentStateAd"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$a;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Landroid/widget/FrameLayout;Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public final i(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;
    .locals 0

    invoke-static {p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;->a(Landroid/view/ViewGroup;)Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final isFragmentViewBound(J)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p1

    :goto_0
    return v1
.end method

.method public final itemForViewHolder(I)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemForViewHolder: Design assumption violated: a ViewHolder can only be bound to one item at a time.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TrassionFragmentStateAd"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final j(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public final l(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->removeFragment(J)V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->s:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->t:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->d(Z)V

    new-instance v0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;)V

    iput-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->t:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->h(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->i(Landroid/view/ViewGroup;I)Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->t:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->t:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->w:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    iget-object v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->w:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->j(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->k(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->l(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V

    return-void
.end method

.method public r(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "placeFragmentInViewHolder: Design assumption violated.\n"

    const-string v2, "TrassionFragmentStateAd"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p0, v0, v3}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, v3, :cond_7

    invoke-virtual {p0, v4, v3}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4, v3}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0, v3}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    iget-object v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->t:Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentMaxLifecycleEnforcer;->d(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->o:Landroidx/lifecycle/Lifecycle;

    new-instance v1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$2;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$FragmentViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final removeFragment(J)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->containsItem(J)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->v:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->containsItem(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final restoreState(Landroid/os/Parcelable;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "f#"

    invoke-static {v1, v2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, p1, v1}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "s#"

    invoke-static {v1, v2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p0, v2, v3}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->containsItem(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected key in savedState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->v:Z

    iput-boolean p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->u:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->gcFragments()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->scheduleGracePeriodEnd()V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected the adapter to be \'fresh\' while restoring state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->w:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "f#"

    invoke-static {v6, v3, v4}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v0, v3, v5}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->containsItem(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "s#"

    invoke-static {v4, v2, v3}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->r:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final scheduleGracePeriodEnd()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$4;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$4;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;)V

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->o:Landroidx/lifecycle/Lifecycle;

    new-instance v3, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$5;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final scheduleViewAttach(Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter$b;-><init>(Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->w:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shouldDelayFragmentTransactions()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->p:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result p0

    return p0
.end method
