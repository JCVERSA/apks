.class Lcom/transsion/liblan/util/MediaBrowser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/util/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/util/MediaBrowser;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/util/MediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/util/MediaBrowser$1;->this$0:Lcom/transsion/liblan/util/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/liblan/util/MediaBrowser$1;->this$0:Lcom/transsion/liblan/util/MediaBrowser;

    invoke-static {v0}, Lcom/transsion/liblan/util/MediaBrowser;->b(Lcom/transsion/liblan/util/MediaBrowser;)Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p1, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->type:I

    const/16 v1, 0x200

    if-eq v0, v1, :cond_3

    const/16 v1, 0x202

    if-eq v0, v1, :cond_2

    const/16 p1, 0x204

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/transsion/liblan/util/MediaBrowser$1;->this$0:Lcom/transsion/liblan/util/MediaBrowser;

    invoke-static {p0}, Lcom/transsion/liblan/util/MediaBrowser;->b(Lcom/transsion/liblan/util/MediaBrowser;)Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;->onBrowseEnd()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/transsion/liblan/util/MediaBrowser$1;->this$0:Lcom/transsion/liblan/util/MediaBrowser;

    invoke-static {p0}, Lcom/transsion/liblan/util/MediaBrowser;->b(Lcom/transsion/liblan/util/MediaBrowser;)Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;

    move-result-object p0

    iget v0, p1, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->index:I

    iget-object p1, p1, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->media:Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-interface {p0, v0, p1}, Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;->onMediaRemoved(ILcom/transsion/liblan/interfaces/ITranMedia;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/transsion/liblan/util/MediaBrowser$1;->this$0:Lcom/transsion/liblan/util/MediaBrowser;

    invoke-static {p0}, Lcom/transsion/liblan/util/MediaBrowser;->b(Lcom/transsion/liblan/util/MediaBrowser;)Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;

    move-result-object p0

    iget v0, p1, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->index:I

    iget-object p1, p1, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;->media:Lcom/transsion/liblan/interfaces/ITranMedia;

    invoke-interface {p0, v0, p1}, Lcom/transsion/liblan/util/MediaBrowser$MediaEventListener;->onMediaAdded(ILcom/transsion/liblan/interfaces/ITranMedia;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onEvent(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/util/MediaBrowser$1;->onEvent(Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;)V

    return-void
.end method
