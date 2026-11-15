.class Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->onTorrentFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5$1;->this$1:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5$1;->this$1:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->V(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object v0

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getFilePriorities()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dl_brower_rp_bt_finish"

    const-string v4, "video_url"

    invoke-static {v3, v4, v2}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
