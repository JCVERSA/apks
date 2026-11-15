.class public Lcom/transsion/tools/covert/fragments/ConvertedFragment;
.super Lcom/transsion/audio/fragments/AudioDragBaseFragment;
.source "SourceFile"


# instance fields
.field public w0:Lcom/transsion/tools/model/ConvertDaoModel;

.field public x0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic D2(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConvertedFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static G2(I)Lcom/transsion/tools/covert/fragments/ConvertedFragment;
    .locals 3

    new-instance v0, Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-direct {v0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "video_to_mp3_item_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private I2(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "list_flag"

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->D:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lvg9;->e(Ljava/util/ArrayList;)V

    const-string v0, "from_list_more_icon"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->S:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-direct {p1, v0, p2, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e0(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/tools/covert/fragments/ConvertedFragment$c;-><init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    return-void
.end method

.method private J2(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/playercommon/R$string;->convert_to_audio:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOpenAudio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConvertedFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->D1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static synthetic i2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->A2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic j2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;ZLcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->B2(ZLcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;JLjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->C2(JLjava/util/List;)V

    return-void
.end method

.method public static synthetic l2(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->D2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic m2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->J2(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static synthetic n2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic o2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audio/fragments/AudioBaseFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    return-void
.end method

.method public static synthetic p2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic q2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic r2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V1(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p0

    return p0
.end method

.method public static synthetic t2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadDataChange()V

    return-void
.end method

.method public static synthetic u2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioBaseFragment;->t1(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic v2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic w2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic x2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic y2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)Lcom/transsion/audio/adapter/AudioItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    return-object p0
.end method

.method private z2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnSelectListener(Lcom/transsion/audio/adapter/AudioItemAdapter$c;)V

    new-instance v0, Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;

    const/16 v1, 0x96

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/tools/covert/fragments/ConvertedFragment$b;-><init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;IZ)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->v:Lif7;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Lmi1;

    invoke-direct {v1, p0}, Lmi1;-><init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method


# virtual methods
.method public A1()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->A1()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x43d

    invoke-virtual {v0, v4, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mMenuShowListener:Lcom/transsion/playercommon/fragments/BaseFragment$d;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment$d;->a(Z)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    if-eqz p0, :cond_3

    sget v0, Lcom/transsion/tools/R$id;->lottie_no_audios_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sget v0, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public final synthetic A2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V1(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/transsion/audio/R$id;->iv_item_more:I

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mFragmentTag:Ljava/lang/String;

    invoke-direct {p0, p2, p1, p3}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->I2(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic B2(ZLcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/List;
    .locals 0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p2

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    invoke-virtual {p2, p1}, Lao;->C(I)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->G0(Ljava/util/List;)V

    return-object p2
.end method

.method public final synthetic C2(JLjava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ConvertedFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget v0, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->x0:I

    invoke-virtual {p3, v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->W(I)V

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->H0()V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->A1()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->F2()V

    :cond_0
    return-void
.end method

.method public E2(ZJ)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object v0

    new-instance v1, Lni1;

    invoke-direct {v1, p0, p1}, Lni1;-><init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Z)V

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

    new-instance v0, Loi1;

    invoke-direct {v0, p0, p2, p3}, Loi1;-><init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;J)V

    new-instance p0, Lpi1;

    invoke-direct {p0}, Lpi1;-><init>()V

    invoke-virtual {p1, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public F2()V
    .locals 4

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->E1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "audio_amount"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, v3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "to_mp3_list_page_show_p"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public H2()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public N0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/tools/R$id;->main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->lottie_no_audios_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/sniffer_load/R$id;->text_no_audios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/sniffer_load/R$string;->file_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->add_play_list_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/covert/fragments/ConvertedFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment$d;-><init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x4a3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->loadData(Z)V

    :cond_0
    return-void
.end method

.method public editMode(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->editMode(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->a(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z1()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->T1(Landroid/view/View;)V

    :goto_0
    if-eqz p1, :cond_2

    const-string p0, "moretab_tomp3_multiple_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getDefaultListFlag()I
    .locals 0

    const/16 p0, 0x1f

    return p0
.end method

.method public initEvents()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initEvents()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x4a3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initTitleBar(Landroid/view/View;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleBarLayout:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public loadData(Z)V
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->E2(ZJ)V

    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const-string p0, "to_mp3_list_page_show"

    const-wide v0, 0xd91af27379L

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x1f

    iput p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/tools/model/ConvertDaoModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/model/ConvertDaoModel;

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->w0:Lcom/transsion/tools/model/ConvertDaoModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    new-instance p3, Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    sget p3, Lcom/transsion/tools/R$layout;->audios_converter_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "video_to_mp3_item_id"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->x0:I

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onPause()V

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onResume()V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->b(Lsq3$a;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->e1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->initTitleBar(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->z2()V

    sget p2, Lcom/transsion/tools/R$id;->rv_main_fragment:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget p2, Lcom/transsion/magicvideo/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance p2, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0, p2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p2, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->w0:Lcom/transsion/tools/model/ConvertDaoModel;

    invoke-virtual {p2}, Lcom/transsion/tools/model/ConvertDaoModel;->getConvertListData()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/transsion/tools/covert/fragments/ConvertedFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/tools/covert/fragments/ConvertedFragment$a;-><init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;)V

    invoke-virtual {p2, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initSortView(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->O1()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->N1()V

    return-void
.end method

.method public refresh()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->E2(ZJ)V

    return-void
.end method

.method public t(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->t(Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lh16;->c()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lp06;->B(ILjava/lang/Boolean;)V

    :cond_0
    return-void
.end method
