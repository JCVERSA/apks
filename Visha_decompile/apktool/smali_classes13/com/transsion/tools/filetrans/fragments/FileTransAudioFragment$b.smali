.class public final Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$b;
.super Lif7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->T1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$b;->b:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;

    const/16 p1, 0x3e8

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lif7;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public OnNoDoubleItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    const-string v0, "adapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$b;->b:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;

    invoke-static {p2}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->Q1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.AudioItem"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/media/AudioItem;->setSelectedPos(I)V

    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$b;->b:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;

    invoke-static {p2}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->O1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Lcom/transsion/audio/adapter/AudioItemAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p2, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$b;->b:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;

    invoke-virtual {p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/transsion/audio/activities/AudioBucketListActivity;

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/a;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "FileTransAudioFragment"

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {v4, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    move p3, v2

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string p2, "finish AudioPlayerActivity"

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    :cond_2
    const-string p2, "finish"

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$b;->b:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;

    invoke-static {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->R1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)I

    move-result p2

    sget-object v0, Lao;->d:Lao$a;

    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    invoke-static {p2, v0}, Lp06;->y(IZ)Ljava/lang/String;

    move-result-object p2

    const-string v0, "markPointClickItem(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->S1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    return-void
.end method
