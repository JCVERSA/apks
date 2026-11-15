.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;->surfaceError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;

.field final synthetic val$error:I


# direct methods
.method public constructor <init>(Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2$1;->this$1:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;

    iput p2, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2$1;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2$1;->this$1:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;

    iget-object v0, v0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->stop()V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2$1;->this$1:Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;

    iget-object v0, v0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$200(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object v0

    const v1, 0x6ad02e

    iget p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2$1;->val$error:I

    invoke-interface {v0, v1, p0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void
.end method
