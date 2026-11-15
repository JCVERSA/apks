.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;
.super Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showSettingsLayout(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Landroid/widget/TextView;

.field public final synthetic r:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/util/List;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;->r:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;->q:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lcom/transsion/magicvideo/adapter/VideoSettingLoopAdapter;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public h(ILcom/transsion/magicvideo/data/VideoSettingItem;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;->r:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->U1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result p1

    invoke-static {p1}, Lhsb;->e(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;->r:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->U1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;->c(I)V

    invoke-static {}, Lhsb;->b()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;->r:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;->r:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->updateShuffleList()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;->q:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->displayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$y;->r:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "video_play_background_more"

    const-string p2, "btn"

    invoke-static {p1, p2, p0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
