.class Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

.field final synthetic val$error:I

.field final synthetic val$op:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$op:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYVideoGLRenderErrorListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$op:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$error:I

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-boolean v4, v4, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgramSupportError:Z

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;->onError(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;Ljava/lang/String;IZ)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgramSupportError:Z

    return-void
.end method
