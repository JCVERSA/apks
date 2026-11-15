.class Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLNAFileType"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;->c:Ljava/lang/String;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;->d:Ljava/lang/String;

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;->a:Ljava/lang/String;

    iput-object p4, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/nanohttpd/NanoHTTPD$Response;)V
    .locals 2

    const-string v0, "contentFeatures.dlna.org"

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TransferMode.DLNA.ORG"

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DAAP-Server"

    const-string v1, "iTunes/11.0.5 (OS X)"

    invoke-virtual {p1, v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Last-Modified"

    const-string v1, "2015-01-01T10:00:00Z"

    invoke-virtual {p1, v0, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/nanohttpd/NanoHTTPD$Response;->G(Ljava/lang/String;)V

    return-void
.end method
