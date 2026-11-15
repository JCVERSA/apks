.class public Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;
.super Lcom/transsion/magicvideo/fragments/VideosFragment;
.source "SourceFile"


# instance fields
.field public a1:Lcom/transsion/dbdata/database/VideoPlayList;

.field public b1:Z

.field public c1:Lcom/transsion/widgetslib/dialog/d;

.field public volatile d1:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;-><init>()V

    return-void
.end method

.method public static synthetic D4(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 3

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ltpb;->g(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->w4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic h4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->A4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->z4(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j4(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->D4(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->G4(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->F4(Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic m4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->y4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->E4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic o4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->x4(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->B4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic q4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->C4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->H4(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final synthetic A4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)Ljava/util/ArrayList;
    .locals 3

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    const-string v0, "VideoPlayListFragment"

    if-eqz p1, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1}, Ltpb;->S()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData favorite video list ,total size:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1}, Ltpb;->W()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, v2}, Lkz5;->e(ZI)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData recent add video list ,total size:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-virtual {p1, v1, v2}, Ltpb;->E(J)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadData playlist video list ,total size:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->F0(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public final synthetic B4(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadData end ,get data size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayListFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->S0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    return-void
.end method

.method public final synthetic C4(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public final synthetic E4(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    return-void
.end method

.method public final synthetic F4(Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->u4(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public G3()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lxub;

    invoke-direct {v1}, Lxub;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lyub;

    invoke-direct {v1, p0}, Lyub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic G4(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p2, Lcom/transsion/widgetslib/dialog/c;

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/playercommon/R$string;->delete_progress:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/widgetslib/dialog/c;->j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->c1:Lcom/transsion/widgetslib/dialog/d;

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p3, "vd_vmore_remove_cl_check"

    const/4 v0, 0x1

    invoke-static {p3, v0, p2}, Lkz5;->b(Ljava/lang/String;ZI)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->v4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final H4(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->remove_song:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->t4(Z)V

    const-string p0, "vd_remove_song"

    const-wide v0, 0xd91af27353L

    invoke-static {v2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->rename:I

    if-ne v0, v1, :cond_1

    new-instance p1, Ljwb;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Ljwb;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$b;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {p1, v0}, Ljwb;->L(Ljwb$d;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-virtual {p1, p0}, Ljwb;->K(Lcom/transsion/dbdata/database/VideoPlayList;)V

    invoke-virtual {p1}, Ljwb;->N()V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->remove_playlsit:I

    const-wide/16 v4, 0x246c

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_2

    sget p1, Lcom/transsion/magicvideo/R$string;->delete_the_playlist:I

    sget v0, Lcom/transsion/magicvideo/R$string;->delete:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/transsion/magicvideo/fragments/VideosFragment;->A1(III)V

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/magicvideo/R$string;->delete_playlist_dialog_message:I

    sget v0, Lcom/transsion/magicvideo/R$string;->delete:I

    sget v1, Lcom/transsion/magicvideo/R$string;->delete_the_playlist:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->A1(III)V

    :goto_0
    const-string p0, "vd_nplaylist_list_del_cl"

    invoke-static {v2, p0, v4, v5}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->add_for_list:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->t4(Z)V

    const-string p0, "vd_nplaylist_list_moreadd_cl"

    invoke-static {v2, p0, v4, v5}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    :goto_1
    return v3
.end method

.method public final I4()V
    .locals 3

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$menu;->playlist_more_menu_add:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$menu;->playlist_more_menu:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$id;->add_for_list:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$id;->add_for_list:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v2, Lcom/transsion/magicvideo/R$string;->add_new_video:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    new-instance v1, Lcvb;

    invoke-direct {v1, p0}, Lcvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public J0(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->J4(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public J4(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    sget v0, Lcom/transsion/magicvideo/R$string;->remove_video_new:I

    const-string v1, "vd_vmore_remove_cl"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkz5;->g(Ljava/lang/String;Z)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->remove:I

    new-instance v2, Lgvb;

    invoke-direct {v2, p0, p1}, Lgvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->cancel:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public P0()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->P0()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$id;->add_video_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ldvb;

    invoke-direct {v1, p0}, Ldvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public editMode(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->editMode(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->b1:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->b1:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDeleteIconResId()I
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$drawable;->ic_remove:I

    return p0
.end method

.method public getDeleteTextResId()I
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$string;->remove:I

    return p0
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->initTitleBar(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->b1:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public loadData(ZZ)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VideoPlayListFragment loadData start,mIsFavoriteList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mMediaBucket.bucketId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayListFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x320

    :goto_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lavb;

    invoke-direct {p2, p0}, Lavb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lbvb;

    invoke-direct {p2, p0}, Lbvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->add_video_tv:I

    const-wide/16 v2, 0x246c

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->b1:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->t4(Z)V

    const-string p0, "vd_nplaylist_list_add_cl"

    invoke-static {v4, p0, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->menu_more:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->I4()V

    const-string p0, "vd_nplaylist_list_more_cl"

    invoke-static {v4, p0, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0x1e

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    new-instance v1, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v1}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    const-string v2, "bucket_fragment_buicket_playlist_flag"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    :cond_0
    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int v0, v0

    iput v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lvub;

    invoke-direct {v0, p0}, Lvub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    sget-boolean p1, Laf9;->g:Z

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsToSanFar:Z

    sput-boolean v2, Laf9;->g:Z

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->b1:Z

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p1, :cond_4

    const/16 v0, 0x21

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/magicvideo/activities/FarvoritesActivity;

    if-nez p0, :cond_5

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "playListFarvoriteRedSpot"

    invoke-virtual {p0, p1, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->onResume()V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p0, :cond_0

    const-string p0, "vd_nplaylist_favorite_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showRemoveDialog()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->d1:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->d1:J

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    sget v1, Lcom/transsion/magicvideo/R$string;->remove_videos_new_multi:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget v1, Lcom/transsion/magicvideo/R$string;->remove_video_new_single:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    sget v1, Lcom/transsion/magicvideo/R$string;->remove_videos_new:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    sget v1, Lcom/transsion/magicvideo/R$string;->remove_video_new:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "vd_mul_remove_cl"

    invoke-static {v4, v2, v3}, Lkz5;->b(Ljava/lang/String;ZI)V

    :goto_2
    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->remove:I

    new-instance v3, Lzub;

    invoke-direct {v3, p0, v0}, Lzub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public final t4(Z)V
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d2(Z)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->o(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int v1, v1

    const-string v2, "fragment_playlist_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "list_flag"

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->q0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    const-string v1, "fragment_playlist_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    invoke-static {p1, p0, p0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public final u4(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lhvb;

    invoke-direct {v1, p0, p1}, Lhvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lwub;

    invoke-direct {v0, p0}, Lwub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public updateShowUI()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShowUI,dataList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideoPlayListFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v1(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->O2()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->s0:Lcom/transsion/utils/CustomGridLayoutManager;

    new-instance v2, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$a;

    invoke-direct {v2, p0, v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->H0(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->u0:Landroid/view/View;

    iget-boolean v3, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->z0:Z

    const/16 v4, 0x8

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->b1:Z

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-boolean v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->b1:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->v0:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    sub-int/2addr v1, v2

    :goto_4
    invoke-static {v1}, Lr44;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x1()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->C3()V

    :cond_7
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->b1:Z

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public final v4(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Levb;

    invoke-direct {v1, p0, p1}, Levb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lfvb;

    invoke-direct {v0, p0}, Lfvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic w4(Ljava/lang/Boolean;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->c1:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v1, 0x41d

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->o(Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-nez p1, :cond_2

    sget p1, Lcom/transsion/magicvideo/R$string;->remove_from_the_playlist:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->editMode(Z)V

    return-void
.end method

.method public final synthetic x4(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 2

    iget-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1, v0}, Ltpb;->K(ILcom/transsion/dbdata/beans/media/MediaItem;Z)I

    goto :goto_0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    iget p0, p0, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v1}, Ltpb;->K(ILcom/transsion/dbdata/beans/media/MediaItem;Z)I

    const-string p0, "vd_vmore_remove_cl_check"

    invoke-static {p0, v0}, Lkz5;->g(Ljava/lang/String;Z)V

    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic y4(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->o(Z)V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$string;->remove_from_the_playlist:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public z1(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z1(I)V

    return-void
.end method

.method public final synthetic z4(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 1

    iget-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p2, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const/4 p2, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Ltpb;->N(ILjava/util/List;Z)Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->a1:Lcom/transsion/dbdata/database/VideoPlayList;

    iget p0, p0, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Ltpb;->N(ILjava/util/List;Z)Ljava/util/List;

    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
