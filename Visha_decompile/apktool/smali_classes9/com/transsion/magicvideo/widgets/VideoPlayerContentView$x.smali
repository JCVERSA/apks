.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$x;
.super Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;
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
.field public final synthetic p:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$x;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0, p2, p3}, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public g(ILcom/transsion/magicvideo/data/VideoSettingItem;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$x;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->isHorizontalShowDialog()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$x;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->U1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$x;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->U1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;->e(J)V

    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lw6c;->G(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$x;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->v3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$x;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/magicvideo/data/VideoSettingItem;->getValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "video_play_background_more"

    const-string p2, "btn"

    invoke-static {p1, p2, p0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p1, Ln16;->a:Ln16$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$x;->p:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string p2, "video_timer"

    invoke-virtual {p1, p2, p0}, Ln16$a;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :goto_1
    return-void
.end method
