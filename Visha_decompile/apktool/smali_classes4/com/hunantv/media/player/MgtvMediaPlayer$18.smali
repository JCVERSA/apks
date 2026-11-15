.class Lcom/hunantv/media/player/MgtvMediaPlayer$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$18;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetFrameImageInfo(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$18;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$18;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;->onGetFrameImageInfo(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetFrameImageStatus(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$18;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$18;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$13100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;->onGetFrameImageStatus(II)V

    :cond_0
    return-void
.end method
