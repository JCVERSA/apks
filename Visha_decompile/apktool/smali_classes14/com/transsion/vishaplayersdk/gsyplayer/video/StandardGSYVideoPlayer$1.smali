.class Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;
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

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->z(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissVolumeDialog()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->dismissBrightnessDialog()V

    :goto_0
    return-void
.end method
