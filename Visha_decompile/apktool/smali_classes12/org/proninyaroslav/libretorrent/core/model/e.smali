.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/e;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/e;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/e;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/e;->c:I

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->i(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;I)V

    return-void
.end method
