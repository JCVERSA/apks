.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/k;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/k;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/k;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->l(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/String;)V

    return-void
.end method
