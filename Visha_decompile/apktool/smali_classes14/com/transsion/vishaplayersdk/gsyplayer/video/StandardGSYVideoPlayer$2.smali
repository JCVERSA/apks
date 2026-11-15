.class Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->z(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Z

    move-result p1

    const/high16 p3, 0x42c80000    # 100.0f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$000(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$100(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    int-to-float v1, p2

    div-float/2addr v1, p3

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$200(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/media/AudioManager;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$300(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$400(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    if-lez p2, :cond_0

    sget p3, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_volume:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_volume0:I

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    const/4 p1, 0x1

    if-ge p2, p1, :cond_2

    move v1, p1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setMute(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$500(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$600(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_5

    int-to-float p1, p2

    div-float/2addr p1, p3

    const p2, 0x3c23d70a    # 0.01f

    cmpg-float p3, p1, p2

    if-gez p3, :cond_4

    move p1, p2

    :cond_4
    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$700(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p2, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$802(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;F)F

    :cond_5
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$900(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$1000(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/transsion/vishaplayersdk/R$drawable;->video_play_brightness:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->y(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->A(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    return-void
.end method
