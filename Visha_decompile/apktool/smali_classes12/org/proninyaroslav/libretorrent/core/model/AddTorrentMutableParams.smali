.class public Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;,
        Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$OnStatusListener;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Landroid/net/Uri;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

.field public l:Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/ArrayList;

.field public p:Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

.field public q:[Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->i:Z

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->k:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public addStatusListener(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$OnStatusListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->p:Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    return-object p0
.end method

.method public c()Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->l:Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    return-object p0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g()[Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->q:[Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->j:Z

    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->b:Z

    return p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->i:Z

    return p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->g:Z

    return p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->h:Z

    return p0
.end method

.method public m(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public n(Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->p:Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->b:Z

    return-void
.end method

.method public p(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->l:Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->c:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->a:Ljava/lang/String;

    return-void
.end method

.method public removeStatusListener(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$OnStatusListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->k:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    return-void
.end method

.method public t([Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->q:[Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddTorrentMutableParams{source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fromMagnet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dirPath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->d:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dirName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", storageFreeSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sequentialDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startAfterAdd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreFreeSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstLastPiecePriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->j:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
