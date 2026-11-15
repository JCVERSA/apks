.class Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->endAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$6;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$6;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->g(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;F)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$6;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->f(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$6;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->d(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$6;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;->d(Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView;)Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/enviews/ENDownloadView$OnDownloadStateListener;->onDownloadFinish()V

    :cond_0
    return-void
.end method
