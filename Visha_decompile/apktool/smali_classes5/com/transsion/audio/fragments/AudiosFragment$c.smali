.class public Lcom/transsion/audio/fragments/AudiosFragment$c;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudiosFragment;->E2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudiosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-direct {p0, p2, p3}, Lif7;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    if-ltz p3, :cond_8

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->z2(Lcom/transsion/audio/fragments/AudiosFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->A2(Lcom/transsion/audio/fragments/AudiosFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/transsion/audio/fragments/AudiosFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V1(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/media/AudioItem;->setSelectedPos(I)V

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object p3, p3, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p3, p2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    iget p3, p3, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x16

    if-ne p3, v0, :cond_3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {p3}, Lcom/transsion/audio/fragments/AudiosFragment;->w2(Lcom/transsion/audio/fragments/AudiosFragment;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p3

    iget-object p3, p3, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-static {p1, p3}, Lp06;->w(ILjava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-virtual {p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/audio/activities/AudioBucketListActivity;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/blankj/utilcode/util/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const-string v0, "AudiosFragment"

    const/4 v2, 0x1

    if-le p3, v2, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    const-string p1, "finish AudioPlayerActivity"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    :cond_5
    const-string p1, "finish"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    iget p1, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 p3, 0x18

    if-ne p1, p3, :cond_7

    invoke-static {}, Lp06;->r()V

    :cond_7
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    iget p3, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    invoke-static {p3, v0}, Lp06;->y(IZ)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, v1}, Lcom/transsion/audio/fragments/AudiosFragment;->x2(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-virtual {p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/transsion/audio/activities/AudioBucketListActivity;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$c;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_0
    return-void
.end method
