.class Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAbstractVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAVPauseOrPlay(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$2;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnAVPlayListener:Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;->onAVPauseOrPlay(Z)V

    :cond_0
    return-void
.end method
