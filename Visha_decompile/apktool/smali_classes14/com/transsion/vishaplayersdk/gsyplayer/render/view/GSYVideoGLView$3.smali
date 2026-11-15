.class Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/GSYVideoGLRenderErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gsySurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

.field final synthetic val$renderMode:I

.field final synthetic val$rotate:I

.field final synthetic val$textureViewContainer:Landroid/view/ViewGroup;

.field final synthetic val$videoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$textureViewContainer:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$rotate:I

    iput-object p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$gsySurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    iput-object p5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$videoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    iput p6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$renderMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;Ljava/lang/String;IZ)V
    .locals 9

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$textureViewContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$rotate:I

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$gsySurfaceListener:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$videoParamsListener:Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->getEffect()Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;->getMVPMatrix()[F

    move-result-object v6

    iget v8, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$3;->val$renderMode:I

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;->addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/vishaplayersdk/gsyplayer/render/view/listener/IGSYSurfaceListener;Lcom/transsion/vishaplayersdk/gsyplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/transsion/vishaplayersdk/gsyplayer/render/glrender/GSYVideoGLViewBaseRender;I)Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYVideoGLView;

    :cond_0
    return-void
.end method
