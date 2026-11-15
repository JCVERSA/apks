.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;
.super Lcom/transsion/LongClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->M4(Landroid/view/View;ZLandroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/Switch;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->a:Landroid/widget/Switch;

    iput-boolean p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->b:Z

    iput-object p4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/LongClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLongClickCallback()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->a:Landroid/widget/Switch;

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->b:Z

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->c:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Y2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZLandroid/view/View;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->b:Z

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->j1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)F

    move-result v0

    :goto_0
    div-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->K1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)F

    move-result v0

    goto :goto_0

    :goto_1
    iget-boolean v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->b:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->h1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object v2

    :goto_2
    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->J1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    move-result-object v2

    goto :goto_2

    :goto_3
    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->b:Z

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x2

    :goto_4
    invoke-static {v0, v1, v2, v3}, Lf16;->h(DLjava/lang/String;I)V

    return-void
.end method

.method public longClickCallback()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->a:Landroid/widget/Switch;

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Switch;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->b:Z

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$d0;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->updateTracksDelay(ZZLandroid/view/View;)V

    return-void
.end method
