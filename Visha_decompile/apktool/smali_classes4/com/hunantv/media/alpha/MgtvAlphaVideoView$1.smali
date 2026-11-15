.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfacePrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->setRenderView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$1;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfacePrepared(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$1;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0, p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$002(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    new-instance p1, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$1$1;

    invoke-direct {p1, p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$1$1;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaVideoView$1;)V

    invoke-static {p1}, Lcom/hunantv/media/player/utils/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
