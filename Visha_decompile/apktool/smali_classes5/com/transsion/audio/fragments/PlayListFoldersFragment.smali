.class public Lcom/transsion/audio/fragments/PlayListFoldersFragment;
.super Lcom/transsion/audio/fragments/AudioBaseFragment;
.source "SourceFile"


# instance fields
.field public V:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

.field public W:Landroid/view/View;

.field public X:Landroid/view/View;

.field public Y:Lcom/transsion/dbdata/database/PlayList;

.field public Z:Lcom/transsion/dbdata/database/PlayList;

.field public a0:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public b0:Z

.field public c0:Lk78;

.field public d0:Z

.field public final e0:Lk78$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->d0:Z

    new-instance v0, Lcom/transsion/audio/fragments/PlayListFoldersFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment$b;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->e0:Lk78$d;

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->j2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->h2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic H1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->i2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic I1(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->b2(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->e2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic K1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->f2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic L1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->c2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic M1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->g2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic N1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Lcom/transsion/audio/fragments/PlayListFoldersFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->d2(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O1(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->a2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic P1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->Z1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->Y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic R1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->U1(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic T1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private X1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->V:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    new-instance v1, Lo48;

    invoke-direct {v1, p0}, Lo48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->V:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    new-instance v1, Le48;

    invoke-direct {v1, p0}, Le48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private synthetic Y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->o2(Lcom/transsion/dbdata/database/PlayList;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->k2(Lcom/transsion/dbdata/database/PlayList;)V

    return-void
.end method

.method private synthetic Z1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Lcom/transsion/audio/R$id;->iv_more:I

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->o2(Lcom/transsion/dbdata/database/PlayList;)V

    :cond_0
    return-void
.end method

.method private static synthetic a2(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayListFoldersFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic b2(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/util/List;
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0}, Lao;->Z()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playListFolderSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListFoldersFragment"

    invoke-static {v1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private synthetic c2(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->a0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->u(Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    return-void
.end method

.method private synthetic g2(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "PlayListFoldersFragment"

    const-string v0, "getIsPlayListChange"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method


# virtual methods
.method public final U1(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    invoke-direct {v0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->h2(ZZ)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-class v3, Lcom/transsion/playercommon/videomodel/AudioDataListModel;

    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/videomodel/AudioDataListModel;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lcom/transsion/playercommon/videomodel/AudioDataListModel;->b(Ljava/util/List;)V

    iget v3, p1, Lcom/transsion/dbdata/database/PlayList;->id:I

    const-string v4, "fragment_playlist_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "fragment_playlist_name"

    iget-object p1, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "list_flag"

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v2, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "action"

    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {v0, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public final V1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->c0:Lk78;

    if-nez v0, :cond_0

    new-instance v0, Lk78;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lk78;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->c0:Lk78;

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->e0:Lk78$d;

    invoke-virtual {v0, v1}, Lk78;->w0(Lk78$d;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->c0:Lk78;

    invoke-virtual {v0}, Lk78;->y0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->d0:Z

    const-string p0, "vd_create_a_play_list_Icon"

    const-wide v0, 0xd91af2734fL

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final W1(Lcom/transsion/dbdata/database/PlayList;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/database/PlayList;->mCategory:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/audio/R$string;->talkback_add_to_favorites:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/audio/R$string;->recent_add:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic d2(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)Ljava/lang/Boolean;
    .locals 6

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "nplaylist_amount"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/transsion/audio/data/AudioBucket;

    invoke-direct {v2}, Lcom/transsion/audio/data/AudioBucket;-><init>()V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/database/PlayList;

    iget v5, v4, Lcom/transsion/dbdata/database/PlayList;->count:I

    invoke-virtual {v2, v5}, Lcom/transsion/audio/data/AudioBucket;->setCnt(I)V

    iget-object v4, v4, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/transsion/audio/data/AudioBucket;->setNplaylist_name(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "single"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_play_list_page_p"

    const-wide/16 v1, 0x246c

    invoke-static {v0, p1, p0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x44d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 p2, 0x455

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    goto :goto_0

    :cond_1
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x12

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, La64;->h(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->q2()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic e2(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public final synthetic f2(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "PlayListFoldersFragment"

    const-string v0, "getIsAudioItemChange"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDefaultListFlag()I
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public final synthetic h2(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public final synthetic i2(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x455

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic j2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->V1()V

    return-void
.end method

.method public final k2(Lcom/transsion/dbdata/database/PlayList;)V
    .locals 3

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v0, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    const-string v1, "nsonglist_name"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vd_nsonglist_cl"

    const-wide/16 v1, 0x246c

    invoke-static {p0, v0, p1, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public l2()V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ld48;

    invoke-direct {v1, p0}, Ld48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->d()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public loadData(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x320

    :goto_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lg48;

    invoke-direct {p2}, Lg48;-><init>()V

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

    new-instance p2, Lh48;

    invoke-direct {p2, p0}, Lh48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    new-instance p0, Li48;

    invoke-direct {p0}, Li48;-><init>()V

    invoke-virtual {p1, p2, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final m2()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->X:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->list_empty_view:I

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->X:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->V:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 2

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->l2()V

    const-string p0, "vd_play_list_page"

    const-wide v0, 0xd91af2734eL

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public n2()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->W:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->playlist_header_view:I

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->W:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->ll_add_new_playList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lha1;

    new-instance v2, Lf48;

    invoke-direct {v2, p0}, Lf48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-direct {v1, v2}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->V:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->W:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderView(Landroid/view/View;)I

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->b0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->r2()V

    :cond_1
    return-void
.end method

.method public final o2(Lcom/transsion/dbdata/database/PlayList;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->p2(Lcom/transsion/dbdata/database/PlayList;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lk78;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lk78;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->e0:Lk78$d;

    invoke-virtual {p1, p0}, Lk78;->w0(Lk78$d;)V

    invoke-virtual {p1}, Lk78;->y0()V

    const-string p0, "vd_creating_text_for_a_play_list"

    const-wide v0, 0xd91af27350L

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->b0:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->r2()V

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->d0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->c0:Lk78;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk78;->H()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->d0:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x1c

    iput p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    new-instance p1, Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->V:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderAndEmpty(Z)V

    new-instance p1, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->recently_played:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->Y:Lcom/transsion/dbdata/database/PlayList;

    const/16 v1, 0x20

    iput v1, p1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    new-instance p1, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->talkback_add_to_favorites:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->Z:Lcom/transsion/dbdata/database/PlayList;

    const/16 v1, 0x21

    iput v1, p1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->e1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onDestroy()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->E1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->W:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->X:Landroid/view/View;

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/audio/R$layout;->audio_folders_fragment:I

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->R0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    :cond_0
    return-void
.end method

.method public onSelectInViewPage()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/transsion/audio/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget v0, Lcom/transsion/audio/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->b0:Z

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->V:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lcom/transsion/audio/fragments/PlayListFoldersFragment$a;

    invoke-direct {v1, p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment$a;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->n2()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->m2()V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->X1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvOverScrollDecorListener(Landroidx/recyclerview/widget/RecyclerView;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->a0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lj48;

    invoke-direct {v2, p0}, Lj48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->a0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lk48;

    invoke-direct {v2, p0}, Lk48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->a0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->g()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Ll48;

    invoke-direct {v2, p0}, Ll48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->a0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->l()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lm48;

    invoke-direct {v2, p0}, Lm48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->a0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->i()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Ln48;

    invoke-direct {v2, p0}, Ln48;-><init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final p2(Lcom/transsion/dbdata/database/PlayList;Z)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "PlayListFoldersFragment"

    const-string p1, "startShowPlaylist failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p1, Lcom/transsion/dbdata/database/PlayList;->id:I

    int-to-long v1, v1

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bucket_fragment_buicket_name"

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->W1(Lcom/transsion/dbdata/database/PlayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {v1}, Lcom/transsion/audio/fragments/PlayListFragment;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/audio/fragments/PlayListFragment;

    iget p1, p1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    if-nez p1, :cond_1

    const/16 p1, 0x1e

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setArguments(Landroid/os/Bundle;I)V

    invoke-static {p0, v1, p2}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public final q2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->Z:Lcom/transsion/dbdata/database/PlayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->p2(Lcom/transsion/dbdata/database/PlayList;Z)V

    const-string p0, "audio_favorite_list_entry_cl"

    const-wide v0, 0xd91af27380L

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public r2()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->W:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/transsion/audio/R$id;->ll_add_new_playList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42cc0000    # 102.0f

    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v4

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    const-string p0, "PlayListFoldersFragment"

    const-string v0, "refresh"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToTop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->scrollToTop()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public updateShowUI()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->V:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->l2()V

    :cond_0
    return-void
.end method
