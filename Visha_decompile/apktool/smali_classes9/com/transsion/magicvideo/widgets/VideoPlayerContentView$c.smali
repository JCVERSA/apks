.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    const-string p0, "vd_cp_subtitle_pop_close"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    const-class v2, Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->f1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    const-string v2, "media_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Lcom/transsion/utils/BaseConstant;->c:I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    const/4 p0, 0x2

    invoke-static {p0}, Lf16;->g(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->a3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZZI)V

    return-void
.end method

.method public d(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->X1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p2, p1, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;FZ)V

    const-string p0, "vd_cp_setting_sub_path_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method
