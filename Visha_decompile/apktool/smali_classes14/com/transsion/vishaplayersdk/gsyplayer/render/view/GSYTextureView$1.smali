.class Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;->saveFrame(Ljava/io/File;ZLcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$gsyVideoShotSaveListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;->val$gsyVideoShotSaveListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;->val$gsyVideoShotSaveListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;->val$file:Ljava/io/File;

    invoke-interface {p1, v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;->result(ZLjava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/FileUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;->val$gsyVideoShotSaveListener:Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/render/view/GSYTextureView$1;->val$file:Ljava/io/File;

    invoke-interface {p1, v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYVideoShotSaveListener;->result(ZLjava/io/File;)V

    :goto_0
    return-void
.end method
