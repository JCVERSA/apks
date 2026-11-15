.class public Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;
.super Lcom/transsion/audio/fragments/AudioBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public V:Ljava/util/ArrayList;

.field public W:Landroid/widget/Button;

.field public X:Z

.field public Y:Z

.field public Z:Ljava/lang/String;

.field public a0:Ljava/lang/String;

.field public b0:I

.field public c0:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public d0:Z

.field public final e0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->V:Ljava/util/ArrayList;

    new-instance v0, Lm38;

    invoke-direct {v0, p0}, Lm38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->e0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->T1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic G1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->U1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic H1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Lcom/transsion/widgetslib/dialog/d;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b2(Lcom/transsion/widgetslib/dialog/d;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic I1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->V1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic J1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->a2(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->Z1()V

    return-void
.end method

.method public static synthetic L1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->Y1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic N1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->W1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private S1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Lr38;

    invoke-direct {v1, p0}, Lr38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Ls38;

    invoke-direct {v1, p0}, Ls38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Lt38;

    invoke-direct {v1, p0}, Lt38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private synthetic T1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    return-void
.end method

.method private synthetic Z1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->i2()V

    :cond_0
    return-void
.end method

.method private d2()Ljava/util/ArrayList;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->c2()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->A:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PlayListAddRemoveFragment"

    const-string v2, "checkSelectCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->A:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static e2(ILjava/util/ArrayList;Ljava/lang/Boolean;)[J
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v3, p0, v4, v5}, Lao;->r(Lcom/transsion/dbdata/beans/media/AudioItem;IIZ)I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public C1(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->C1(I)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->W:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final P1(Ljava/util/ArrayList;)[J
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v3

    iget p0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b0:I

    int-to-long v5, p0

    const/4 v8, 0x1

    const-string v4, ""

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lao;->o0(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v2, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v3

    iget v4, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b0:I

    iget v5, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v3, v2, v4, v5, v1}, Lao;->r(Lcom/transsion/dbdata/beans/media/AudioItem;IIZ)I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const/16 v2, 0x41f

    invoke-virtual {p0, v2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    new-array p0, v1, [J

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    return-object p0
.end method

.method public final Q1(Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final R1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final synthetic U1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic V1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_bucket_fragment_checkBox:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public final synthetic W1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->R1()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic X1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->d2()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic Y1(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListAddRemoveFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->O(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->H0()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->A1()V

    return-void
.end method

.method public final synthetic a2(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Ljava/lang/Object;
    .locals 6

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->d0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->P1(Ljava/util/ArrayList;)[J

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->a0:Ljava/lang/String;

    iget p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b0:I

    int-to-long v2, p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lao;->o0(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->c0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->n()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/PlayList;

    iget v1, v0, Lcom/transsion/dbdata/database/PlayList;->id:I

    iget v2, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b0:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b0:I

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0, v0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->e2(ILjava/util/ArrayList;Ljava/lang/Boolean;)[J

    move-result-object p0

    return-object p0
.end method

.method public final synthetic b2(Lcom/transsion/widgetslib/dialog/d;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->Q1(Lcom/transsion/widgetslib/dialog/d;)V

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->d0:Z

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/audio/R$string;->add_favorites:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/audio/R$string;->add_to_playlist_toast:I

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->a0:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/transsion/utils/ToastUtils;->v(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->d0:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/transsion/audio/R$string;->song_removed_from_favorites:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/transsion/audio/R$string;->remove_from_the_playlist:I

    :goto_1
    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->c0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/videomodel/PlayListModel;->p(Z)V

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->Y:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->k2()V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :goto_3
    return-void
.end method

.method public c2()Ljava/util/ArrayList;
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v2}, Lao;->x(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->V:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v2, v1}, Lao;->N(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->d0:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v1}, Lao;->y(Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget v1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b0:I

    int-to-long v1, v1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lao;->Y(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    return-object v0
.end method

.method public final f2(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->W:Landroid/widget/Button;

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

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->W:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->W:Landroid/widget/Button;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyBottomMarginNavInset(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public g2(Z)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->h2(ZZ)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultListFlag()I
    .locals 0

    const/16 p0, 0x1d

    return p0
.end method

.method public h2(ZZ)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X:Z

    iput-boolean p2, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->Y:Z

    return-object p0
.end method

.method public final i2()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateBackIcon(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->C1(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initTitleBar(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment$a;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Lu38;

    invoke-direct {v0, p0}, Lu38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final j2(Z)Lcom/transsion/widgetslib/dialog/d;
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/c;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/audio/R$string;->is_adding:I

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

.method public final k2()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b0:I

    int-to-long v1, v1

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bucket_fragment_buicket_name"

    iget-object v2, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {v1}, Lcom/transsion/audio/fragments/PlayListFragment;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v1

    check-cast v1, Lcom/transsion/audio/fragments/PlayListFragment;

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

.method public loadData(ZZ)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PlayListAddRemoveFragment loadData "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayListAddRemoveFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Ln38;

    invoke-direct {p2, p0}, Ln38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

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

    new-instance p2, Lo38;

    invoke-direct {p2, p0}, Lo38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const-string p0, "vd_add_audio_page_to_playlist_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->add_remove_to_playlist:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X:Z

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->j2(Z)Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lp38;

    invoke-direct {v1, p0}, Lp38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V

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

    new-instance v1, Lq38;

    invoke-direct {v1, p0, p1}, Lq38;-><init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "PlayListAddRemoveFragment"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->E:Z

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    new-instance v2, Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/transsion/audio/adapter/AudioItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->t:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "fragment_playlist_name"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->a0:Ljava/lang/String;

    const-string v3, "fragment_playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->b0:I

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->Z:Ljava/lang/String;

    const-string v3, "list_flag"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    move p1, v1

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->d0:Z

    const-class p1, Lcom/transsion/playercommon/videomodel/AudioDataListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/AudioDataListModel;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/AudioDataListModel;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate arrayList:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Lcom/transsion/playercommon/videomodel/AudioDataListModel;->b(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->V:Ljava/util/ArrayList;

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate mExitDataList:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->V:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->Q(Z)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnSelectListener(Lcom/transsion/audio/adapter/AudioItemAdapter$c;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, v0, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->c0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lraa;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :cond_3
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->R1()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->e0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setMainViewModePlayListOperateMode(Z)V

    return-void
.end method

.method public onFragmentAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentAnimationEnd(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->i2()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->e0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->f2(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 0

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/audio/R$layout;->playlist_add_remove_fragment:I

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->e0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->e0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->e0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->initTitleBar(Landroid/view/View;)V

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

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->S1()V

    sget v0, Lcom/transsion/audio/R$id;->add_remove_to_playlist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->W:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->X:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->W:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->d0:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/audio/R$string;->remove_favorites:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/audio/R$string;->remove:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->f2(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v2, "vd_add_audio_page_to_playlist_show"

    const-wide v3, 0xd91af27376L

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v3, v4}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->R1()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->i2()V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setMainViewModePlayListOperateMode(Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
