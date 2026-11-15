.class Lcom/hunantv/media/widget/MgtvAudioView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAudioView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAudioView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$10;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$10;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4000(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$10;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$4000(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView$OnBufferingUpdateListener;->onBufferingUpdate(I)V

    :cond_0
    return-void
.end method
