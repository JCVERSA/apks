.class Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$11;->this$0:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lf38;->c()Lf38;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$11;->this$0:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$11;->this$0:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {v0, v1, p0}, Lf38;->f(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method
