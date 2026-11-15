.class public Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/MusicModeLayout;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    iget-boolean p3, p1, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->l:Z

    if-eqz p3, :cond_1

    iget-wide p3, p1, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h:J

    int-to-long v0, p2

    mul-long/2addr p3, v0

    const-wide/16 v0, 0x64

    div-long/2addr p3, v0

    invoke-static {p1, p3, p4}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->j(Lcom/transsion/magicvideo/widgets/MusicModeLayout;J)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    iget-wide v0, p3, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {p3, v0, v1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->j(Lcom/transsion/magicvideo/widgets/MusicModeLayout;J)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->mediaProgressInfoLayout:Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)J

    move-result-wide p2

    invoke-static {p2, p3}, Lwna;->d(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/widgets/AudioProgressInfoLayout;->setTvMediaCurrentProgress(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->l:Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k(Lcom/transsion/magicvideo/widgets/MusicModeLayout;I)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->l:Z

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->h(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->f(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Lp06;->T(II)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$a;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->g(Lcom/transsion/magicvideo/widgets/MusicModeLayout;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->l(Lcom/transsion/magicvideo/widgets/MusicModeLayout;I)V

    return-void
.end method
