.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/alpha/AlphaRenderer$OnSurfaceErrorListener;


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

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceError(ILjava/lang/String;)V
    .locals 0

    new-instance p2, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2$1;

    invoke-direct {p2, p0, p1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2$1;-><init>(Lcom/hunantv/media/alpha/MgtvAlphaVideoView$2;I)V

    invoke-static {p2}, Lcom/hunantv/media/player/utils/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
