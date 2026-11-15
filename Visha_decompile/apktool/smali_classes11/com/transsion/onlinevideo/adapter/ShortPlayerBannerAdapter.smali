.class public Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;
.super Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;,
        Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;",
        ">",
        "Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;"
    }
.end annotation


# instance fields
.field public final A:Z

.field public B:I

.field public C:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;

.field public D:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;

.field public final x:Lcom/transsion/playercommon/activities/BaseActivity;

.field public final y:Ljava/util/List;

.field public z:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->B:I

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->x:Lcom/transsion/playercommon/activities/BaseActivity;

    iput-boolean p2, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->A:Z

    return-void
.end method

.method public static synthetic t(Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->D(I)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public B()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public C(J)I
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->A:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoSerial()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final synthetic D(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->D:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;

    check-cast v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;->a(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/lang/Object;IZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment not ready for position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerBannerAdapter"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->B:I

    :goto_0
    return-void
.end method

.method public E(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->F(IZ)V

    return-void
.end method

.method public F(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerBannerAdapter"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->onUnSelectInViewPage()V

    :cond_1
    iput p1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->v()V

    iget-object p2, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->D:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->x:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v0, Lah9;

    invoke-direct {v0, p0, p1}, Lah9;-><init>(Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public G(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public containsItem(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

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

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFragment for position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortPlayerBannerAdapter"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->A:Z

    invoke-direct {v0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;-><init>(Z)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->x:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    :cond_0
    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->D:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->D:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v2, v0, v1, p1, p0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;->a(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/lang/Object;IZ)V

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->B:I

    const/4 v2, -0x1

    if-eq p0, v2, :cond_3

    if-ne p1, p0, :cond_3

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->a1(Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public setOnBoundaryReachedListener(Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->C:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;

    return-void
.end method

.method public setOnFragmentUpdateListener(Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->D:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$b;

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appended "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " items, total size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortPlayerBannerAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->C:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Approaching end boundary at position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortPlayerBannerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->C:Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    invoke-interface {v0, p0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter$a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public x()I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    return p0
.end method

.method public y()Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;
    .locals 3

    iget v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->z:I

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/playercommon/adapter/TrassionFragmentStateAdapter;->q:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->x:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public z(I)Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->y:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
