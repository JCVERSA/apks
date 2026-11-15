.class Lcom/transsion/tranplayer/util/MediaBrowser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/MediaList$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/util/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tranplayer/util/MediaBrowser;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/util/MediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/util/MediaBrowser$1;->this$0:Lcom/transsion/tranplayer/util/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/transsion/tranplayer/MediaList$Event;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/tranplayer/util/MediaBrowser$1;->this$0:Lcom/transsion/tranplayer/util/MediaBrowser;

    invoke-static {v0}, Lcom/transsion/tranplayer/util/MediaBrowser;->access$000(Lcom/transsion/tranplayer/util/MediaBrowser;)Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p1, Lcom/transsion/tranplayer/VLCEvent;->type:I

    const/16 v1, 0x200

    if-eq v0, v1, :cond_3

    const/16 v1, 0x202

    if-eq v0, v1, :cond_2

    const/16 p1, 0x204

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/transsion/tranplayer/util/MediaBrowser$1;->this$0:Lcom/transsion/tranplayer/util/MediaBrowser;

    invoke-static {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->access$000(Lcom/transsion/tranplayer/util/MediaBrowser;)Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;->onBrowseEnd()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/transsion/tranplayer/util/MediaBrowser$1;->this$0:Lcom/transsion/tranplayer/util/MediaBrowser;

    invoke-static {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->access$000(Lcom/transsion/tranplayer/util/MediaBrowser;)Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;

    move-result-object p0

    iget v0, p1, Lcom/transsion/tranplayer/MediaList$Event;->index:I

    iget-object p1, p1, Lcom/transsion/tranplayer/MediaList$Event;->media:Lcom/transsion/tranplayer/Media;

    invoke-interface {p0, v0, p1}, Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;->onMediaRemoved(ILcom/transsion/tranplayer/Media;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/transsion/tranplayer/util/MediaBrowser$1;->this$0:Lcom/transsion/tranplayer/util/MediaBrowser;

    invoke-static {p0}, Lcom/transsion/tranplayer/util/MediaBrowser;->access$000(Lcom/transsion/tranplayer/util/MediaBrowser;)Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;

    move-result-object p0

    iget v0, p1, Lcom/transsion/tranplayer/MediaList$Event;->index:I

    iget-object p1, p1, Lcom/transsion/tranplayer/MediaList$Event;->media:Lcom/transsion/tranplayer/Media;

    invoke-interface {p0, v0, p1}, Lcom/transsion/tranplayer/util/MediaBrowser$EventListener;->onMediaAdded(ILcom/transsion/tranplayer/Media;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onEvent(Lcom/transsion/tranplayer/VLCEvent;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/tranplayer/MediaList$Event;

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/util/MediaBrowser$1;->onEvent(Lcom/transsion/tranplayer/MediaList$Event;)V

    return-void
.end method
