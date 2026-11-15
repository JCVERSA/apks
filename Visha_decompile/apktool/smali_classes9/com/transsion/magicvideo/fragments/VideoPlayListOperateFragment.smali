.class public Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;
.super Lcom/transsion/magicvideo/fragments/VideosBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public Z:Ljava/util/ArrayList;

.field public a0:Ljava/lang/String;

.field public b0:I

.field public c0:Landroid/widget/Button;

.field public d0:Z

.field public e0:Z

.field public f0:I

.field public g0:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

.field public h0:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->Z:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic D1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->U1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic E1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->X1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;ZLcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->W1(ZLcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->Y1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->T1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic I1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Lcom/transsion/widgetslib/dialog/d;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->Z1(Lcom/transsion/widgetslib/dialog/d;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic J1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->a2(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic K1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->V1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic L1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->S1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic M1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->R1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private O1(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lwvb;

    invoke-direct {v1, p0, p1}, Lwvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;)V

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

    new-instance v0, Lxvb;

    invoke-direct {v0, p0}, Lxvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method private P1(Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private Q1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v1, Ltvb;

    invoke-direct {v1, p0}, Ltvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v1, Luvb;

    invoke-direct {v1, p0}, Luvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v1, Lvvb;

    invoke-direct {v1, p0}, Lvvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private synthetic S1(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->h0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->g0:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->o(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    return-void
.end method

.method private synthetic T1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    return-void
.end method

.method private synthetic U1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic V1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private b2(Z)Ljava/util/ArrayList;
    .locals 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ltpb;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->f0:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ltpb;->E(J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryVideoData oldDataSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",query data size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayListOperateFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSelectCount "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p1
.end method

.method private c2(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->c0:Landroid/widget/Button;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_PORT:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x41f00000    # 30.0f

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->OPEN_LAND:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42fe0000    # 127.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->c0:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->c0:Landroid/widget/Button;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyBottomMarginNavInset(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private f2(Z)Lcom/transsion/widgetslib/dialog/d;
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/c;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$string;->is_adding:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$string;->delete_progress:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/c;->j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    return-object p0
.end method

.method private g2()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->b0:I

    int-to-long v1, v1

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bucket_fragment_buicket_name"

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    invoke-direct {v1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v1

    check-cast v1, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v0, v3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setArguments(Landroid/os/Bundle;I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->h(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    const/4 p0, 0x0

    invoke-static {v1, v2, v2, p0}, La64;->o(Lcom/transsion/playercommon/fragments/BaseFragment;ZZZ)V

    return-void
.end method


# virtual methods
.method public final synthetic R1(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p2

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->b0:I

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    invoke-virtual {p2, v0, p1, p0}, Ltpb;->N(ILjava/util/List;Z)Ljava/util/List;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic W1(ZLcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->b2(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic X1(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    return-void
.end method

.method public final synthetic Y1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Ljava/util/List;
    .locals 6

    new-instance v4, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d0:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->a0:Ljava/lang/String;

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->f0:I

    int-to-long v2, p1

    iget-boolean v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    invoke-virtual/range {v0 .. v5}, Ltpb;->V(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->b0:I

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    invoke-virtual {p1, v0, v4, p0}, Ltpb;->N(ILjava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic Z1(Lcom/transsion/widgetslib/dialog/d;Ljava/util/List;)V
    .locals 2

    iget-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d0:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x41d

    invoke-virtual {p2, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->P1(Lcom/transsion/widgetslib/dialog/d;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d0:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p2, :cond_1

    sget p2, Lcom/transsion/magicvideo/R$string;->add_favorites:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget p2, Lcom/transsion/magicvideo/R$string;->add_to_playlist_toast:I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->a0:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/transsion/utils/ToastUtils;->v(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p1, :cond_3

    sget p1, Lcom/transsion/magicvideo/R$string;->song_removed_from_favorites:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/transsion/magicvideo/R$string;->remove_from_the_playlist:I

    :goto_1
    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->g0:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->n(Z)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->e0:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->g2()V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :goto_3
    return-void
.end method

.method public final synthetic a2(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
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

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->h0:Lcom/transsion/widgetslib/dialog/d;

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->O1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->z1(I)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSelectAll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayListOperateFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->z1(I)V

    return-void
.end method

.method public d2(Z)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->e2(ZZ)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public e2(ZZ)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d0:Z

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->e0:Z

    return-object p0
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initTitleBar(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateBackIcon(Z)V

    return-void
.end method

.method public loadData(ZZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lqvb;

    invoke-direct {v0, p0, p1}, Lqvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Z)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lrvb;

    invoke-direct {p2, p0}, Lrvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->add_remove_to_playlist:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d0:Z

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->f2(Z)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lovb;

    invoke-direct {v1, p0}, Lovb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lpvb;

    invoke-direct {v1, p0, p1}, Lpvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->y:Z

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "fragment_playlist_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->f0:I

    const-string v2, "list_flag"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    :try_start_0
    invoke-virtual {v2}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->g()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->o(Ljava/util/List;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->Z:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "VideoPlayListOperateFragment"

    const-string v5, "onCreate: "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    iput v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D:I

    const-string v2, "fragment_playlist_name"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->a0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->b0:I

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d0:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->Z:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setNewData(Ljava/util/List;)V

    :cond_3
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-direct {p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->g0:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    const/16 v1, 0x1d

    invoke-virtual {p1, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->X(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setOnSelectListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lraa;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setMainViewModePlayListOperateMode(Z)V

    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->c2(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onItemClick(I)V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$layout;->video_playlist_add_remove_fragment:I

    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->initTitleBar(Landroid/view/View;)V

    sget p2, Lcom/transsion/magicvideo/R$id;->rv_main_fragment:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget p2, Lcom/transsion/magicvideo/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance p2, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0, p2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p2, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->Q1()V

    sget p2, Lcom/transsion/magicvideo/R$id;->add_remove_to_playlist:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->c0:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->d0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->c0:Landroid/widget/Button;

    sget p2, Lcom/transsion/magicvideo/R$string;->remove:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->c2(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->z1(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setMainViewModePlayListOperateMode(Z)V

    return-void
.end method

.method public showRemoveDialog()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$string;->remove_videos_new:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$string;->remove_video_new:I

    :goto_0
    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->delete:I

    new-instance v3, Lsvb;

    invoke-direct {v3, p0, v0}, Lsvb;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;)V

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

.method public updateShowUI()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShowUI, data size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideoPlayListOperateFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->H0(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->x1()V

    return-void
.end method

.method public z1(I)V
    .locals 5

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z1(I)V

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTitle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayListOperateFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-le p1, v1, :cond_1

    sget v3, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    sub-int/2addr v3, v4

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->c0:Landroid/widget/Button;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
