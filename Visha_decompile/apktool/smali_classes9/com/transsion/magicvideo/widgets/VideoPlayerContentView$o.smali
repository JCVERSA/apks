.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lew4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A4()V
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

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stateCallback serviceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ln;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    if-ne v0, p1, :cond_0

    sget p1, Lcom/transsion/magicvideo/R$string;->visha_ai_subtitle_error_stop:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->c1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->v1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/AISubtitleLottieAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ln;->k(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Lcom/transsion/magicvideo/widgets/AISubtitleLottieAnimationView;Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->updateSubtitleVisibility()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->reLoadCurSubtitleDataForAIState()V

    const-string p0, "vd_video_aisub_error"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    invoke-static {}, Lw;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ln;->r(Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->t1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->s3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    :cond_2
    :goto_0
    return-void
.end method
