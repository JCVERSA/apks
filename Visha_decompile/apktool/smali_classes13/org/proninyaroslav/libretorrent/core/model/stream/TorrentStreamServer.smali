.class public Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;
.super Lorg/nanohttpd/NanoHTTPD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String; = "TorrentStreamServer"

.field public static p:Ljava/util/HashMap;


# instance fields
.field public n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->p:Ljava/util/HashMap;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;

    const-string v2, "mp4"

    const-string v3, "video/mp4"

    const-string v4, "DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_AAC;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01700000000000000000000000000000"

    const-string v5, "Streaming"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->p:Ljava/util/HashMap;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;

    const-string v2, "video/x-msvideo"

    const-string v3, "avi"

    invoke-direct {v1, v3, v2, v4, v5}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->p:Ljava/util/HashMap;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;

    const-string v2, "video/x-matroska"

    const-string v3, "DLNA.ORG_PN=AVC_MKV_MP_HD_AC3;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01700000000000000000000000000000"

    const-string v4, "mkv"

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/nanohttpd/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public n(Lorg/nanohttpd/NanoHTTPD$h;)Lorg/nanohttpd/NanoHTTPD$Response;
    .locals 2

    invoke-interface {p1}, Lorg/nanohttpd/NanoHTTPD$h;->getUri()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->p:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->v(Lorg/nanohttpd/NanoHTTPD$h;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer$DLNAFileType;->a(Lorg/nanohttpd/NanoHTTPD$Response;)V

    :cond_0
    return-object p0
.end method

.method public t()V
    .locals 2

    invoke-super {p0}, Lorg/nanohttpd/NanoHTTPD;->t()V

    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public v(Lorg/nanohttpd/NanoHTTPD$h;)Lorg/nanohttpd/NanoHTTPD$Response;
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "text/plain"

    iget-object v2, v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    const-string v3, ""

    if-nez v2, :cond_0

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_FOUND:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/nanohttpd/NanoHTTPD$h;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/stream"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/nanohttpd/NanoHTTPD$h;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v4, "torrent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v5, "file"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v5, v4, v2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->U(Ljava/lang/String;I)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_FOUND:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/nanohttpd/NanoHTTPD$h;->getHeaders()Ljava/util/Map;

    move-result-object v4

    :try_start_1
    iget-object v5, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    const-string v6, "range"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v11, -0x1

    if-eqz v6, :cond_4

    const-string v13, "bytes="

    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x6

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v13, 0x2d

    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v13, :cond_4

    :try_start_2
    invoke-virtual {v6, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v13, v7

    :try_start_3
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v1

    goto/16 :goto_8

    :catch_0
    :cond_4
    const-wide/16 v14, 0x0

    :catch_1
    :goto_0
    :try_start_4
    const-string v13, "if-range"

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_6

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_1

    :cond_5
    move v13, v8

    goto :goto_2

    :cond_6
    :goto_1
    move v13, v7

    :goto_2
    const-string v7, "if-none-match"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v7, "*"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_8

    :cond_7
    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    move v7, v8

    :goto_3
    const-string v4, "inline; filename="

    const-string v8, "Content-Disposition"

    const-string v9, "Content-Range"

    const-string v10, "Content-Length"

    move-object/from16 v18, v1

    const-string v1, "bytes"

    move-object/from16 p1, v8

    const-string v8, "Accept-Ranges"

    move-object/from16 v19, v4

    const-string v4, "application/octet-stream"

    move-object/from16 v20, v9

    const-string v9, "ETag"

    if-eqz v13, :cond_d

    if-eqz v6, :cond_d

    const-wide/16 v16, 0x0

    cmp-long v21, v14, v16

    if-ltz v21, :cond_d

    move-object/from16 v21, v1

    :try_start_5
    iget-wide v0, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    cmp-long v22, v14, v0

    if-gez v22, :cond_c

    if-eqz v7, :cond_9

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, v4, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    invoke-virtual {v0, v9, v5}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v10, v18

    goto/16 :goto_8

    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v13, v11, v6

    const-wide/16 v16, 0x1

    if-gez v13, :cond_a

    sub-long v11, v0, v16

    :cond_a
    sub-long v0, v11, v14

    add-long v0, v0, v16

    cmp-long v13, v0, v6

    if-gez v13, :cond_b

    move-wide v0, v6

    :cond_b
    move-object/from16 v6, p0

    iget-object v6, v6, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v6, v2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->W(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;->skip(J)J

    sget-object v7, Lorg/nanohttpd/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v7, v4, v6, v0, v1}, Lorg/nanohttpd/NanoHTTPD;->k(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/io/InputStream;J)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v4

    move-object/from16 v6, v21

    invoke-virtual {v4, v8, v6}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v10, v0}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v4, v1, v0}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9, v5}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p1

    invoke-virtual {v4, v12, v0}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v11, v19

    move-object/from16 v1, v20

    move-object/from16 v12, v21

    goto :goto_4

    :cond_d
    move-object v12, v1

    move-object/from16 v11, v19

    move-object/from16 v1, v20

    :goto_4
    if-eqz v13, :cond_f

    if-eqz v6, :cond_f

    move-object/from16 v16, v10

    move-object/from16 v19, v11

    iget-wide v10, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    cmp-long v10, v14, v10

    if-ltz v10, :cond_e

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lorg/nanohttpd/NanoHTTPD$Response$Status;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v10, v18

    :try_start_6
    invoke-static {v0, v10, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes */"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v5}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_5
    move-object/from16 v10, v18

    goto :goto_6

    :cond_f
    move-object/from16 v16, v10

    move-object/from16 v19, v11

    goto :goto_5

    :goto_6
    if-nez v6, :cond_10

    if-eqz v7, :cond_10

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, v4, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    invoke-virtual {v0, v9, v5}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    if-nez v13, :cond_11

    if-eqz v7, :cond_11

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, v4, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    invoke-virtual {v0, v9, v5}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0, v2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->W(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;)Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    move-result-object v0

    sget-object v1, Lorg/nanohttpd/NanoHTTPD$Response$Status;->OK:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    iget-wide v6, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    invoke-static {v1, v4, v0, v6, v7}, Lorg/nanohttpd/NanoHTTPD;->k(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/io/InputStream;J)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    invoke-virtual {v0, v8, v12}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->fileSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v16

    invoke-virtual {v0, v3, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v5}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStream;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lorg/nanohttpd/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_7
    return-object v0

    :goto_8
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->FORBIDDEN:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    const-string v1, "Forbidden"

    invoke-static {v0, v10, v1}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :catch_2
    sget-object v0, Lorg/nanohttpd/NanoHTTPD$Response$Status;->NOT_FOUND:Lorg/nanohttpd/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v3}, Lorg/nanohttpd/NanoHTTPD;->l(Lorg/nanohttpd/NanoHTTPD$Response$b;Ljava/lang/String;Ljava/lang/String;)Lorg/nanohttpd/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public w(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->T(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentStreamServer;->n:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-super {p0}, Lorg/nanohttpd/NanoHTTPD;->q()V

    return-void
.end method
