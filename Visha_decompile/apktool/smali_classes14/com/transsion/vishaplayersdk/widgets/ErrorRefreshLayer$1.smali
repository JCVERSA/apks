.class Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->d(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/vishaplayersdk/R$string;->error_resume_sec:I

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-static {v3}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->e(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->e(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->g(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->e(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->c(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "play tick"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->g(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;I)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lwz5;->b()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->refrashListener:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lwz5;->w()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mPlayStartTime:J

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->refrashListener:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->f(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$RefrashListener;->retry(I)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer$1;->this$0:Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;->h(Lcom/transsion/vishaplayersdk/widgets/ErrorRefreshLayer;)V

    return-void
.end method
