.class public final synthetic Lssa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;


# direct methods
.method public synthetic constructor <init>([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lssa;->b:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lssa;->b:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->S([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method
