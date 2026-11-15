.class Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16$1;->this$1:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b1()V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16$1;->this$1:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$16;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->j2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->refresh()V

    :cond_0
    return-void
.end method
