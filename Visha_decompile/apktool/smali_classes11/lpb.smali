.class public Llpb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Ljava/lang/String; = "lpb"


# instance fields
.field public a:Lii1;

.field public b:D

.field public volatile c:Z

.field public volatile d:Z

.field public e:Landroid/media/MediaCodec$BufferInfo;

.field public f:Landroid/media/MediaExtractor;

.field public g:I

.field public h:Ljava/nio/ByteBuffer;

.field public i:I

.field public j:I

.field public k:Landroid/media/MediaMuxer;

.field public l:Ljava/util/HashMap;

.field public m:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Llpb;->j:I

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Llpb;->m:J

    return-void
.end method

.method public static a(IIII)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    if-le p0, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-ge p0, p2, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static b(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "1080p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "720p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "480p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "360p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "240p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "8k"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "4k"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "2k"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_0
    const/16 p0, 0x780

    const/16 v0, 0x438

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_1
    const/16 p0, 0x500

    const/16 v0, 0x2d0

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p0, 0x356

    const/16 v0, 0x1e0

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_3
    const/16 p0, 0x280

    const/16 v0, 0x168

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_4
    const/16 p0, 0x1aa

    const/16 v0, 0xf0

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_5
    const/16 p0, 0x2000

    const/16 v0, 0x10e0

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_6
    const/16 p0, 0x1000

    const/16 v0, 0x880

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    :pswitch_7
    const/16 p0, 0xa00

    const/16 v0, 0x5a0

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x679 -> :sswitch_7
        0x6b7 -> :sswitch_6
        0x733 -> :sswitch_5
        0x178402 -> :sswitch_4
        0x17ffe3 -> :sswitch_3
        0x187bc4 -> :sswitch_2
        0x19c25b -> :sswitch_1
        0x2c929f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "[^0-9]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$string;->converting_reached_max_tip:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    invoke-static {p0}, Llpb;->i(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->trans_mp3_error1:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->o(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/transsion/playercommon/R$string;->have_in_converting_list:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->p(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->q()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/playercommon/R$string;->reached_convert_max_num:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static i(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lpp3;->j()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    xor-int/2addr p0, v3

    return p0

    :cond_1
    const-string v2, "video/mp4"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "video/webm"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "video/3gpp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez p0, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "VideoConvertUtils"

    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v6, v1, Llpb;->f:Landroid/media/MediaExtractor;

    move/from16 v7, p5

    iput v7, v1, Llpb;->i:I

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    iget-object v6, v1, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v8, "video/3gpp"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, v3, v9}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Llpb;->k:Landroid/media/MediaMuxer;

    goto :goto_0

    :cond_1
    const-string v8, "video/webm"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, v3, v10}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Llpb;->k:Landroid/media/MediaMuxer;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, v3, v7}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Llpb;->k:Landroid/media/MediaMuxer;

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v1, Llpb;->l:Ljava/util/HashMap;

    const/4 v0, -0x1

    move v3, v7

    move v8, v3

    :goto_1
    if-ge v3, v6, :cond_6

    iget-object v11, v1, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    const-string v12, "mime"

    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "audio/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz p6, :cond_3

    move v8, v10

    move v12, v8

    goto :goto_2

    :cond_3
    const-string v13, "video/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz p7, :cond_4

    move v12, v10

    goto :goto_2

    :cond_4
    move v12, v7

    :goto_2
    if-eqz v12, :cond_5

    iget-object v12, v1, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :try_start_1
    iget-object v12, v1, Llpb;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v12, v11}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v13, v1, Llpb;->l:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "max-input-size"

    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    if-le v11, v0, :cond_5

    move v0, v11

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Llpb;->e(Ljava/lang/Throwable;)V

    return v7

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertVideo isHasAudio:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_7

    if-eqz p6, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Source not contain audio!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Llpb;->e(Ljava/lang/Throwable;)V

    return v7

    :cond_7
    if-gez v0, :cond_8

    const/high16 v0, 0x100000

    :cond_8
    move v3, v0

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_2
    invoke-virtual {v5, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {v5, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v11, 0x3e8

    mul-long/2addr v6, v11

    iput-wide v6, v1, Llpb;->m:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_9
    :goto_4
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_2
    :goto_6
    if-lez v4, :cond_a

    iget-object v0, v1, Llpb;->f:Landroid/media/MediaExtractor;

    mul-int/lit16 v2, v4, 0x3e8

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_a
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Llpb;->h:Ljava/nio/ByteBuffer;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, v1, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0, v10}, Llpb;->d(Z)Z

    move-result v0

    return v0

    :goto_7
    :try_start_5
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    throw v0

    :catch_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Llpb;->e(Ljava/lang/Throwable;)V

    return v7
.end method

.method public d(Z)Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, "VideoConvertUtils"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Llpb;->k:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object p1, p0, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    iget-object v2, p0, Llpb;->l:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Llpb;->l:Ljava/util/HashMap;

    :cond_1
    :goto_1
    iget-boolean p1, p0, Llpb;->d:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Llpb;->c:Z

    if-eqz p1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p0, Llpb;->g:I

    iput v2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Llpb;->f:Landroid/media/MediaExtractor;

    iget-object v4, p0, Llpb;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object p1, p0, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saw input EOS. "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_4

    :cond_3
    iget-object v2, p0, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget p1, p0, Llpb;->i:I

    if-lez p1, :cond_4

    iget-object v2, p0, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    const-string p1, "The current sample is over the trim end time."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge p1, v2, :cond_5

    iget-object p1, p0, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    iget-object v2, p0, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    iput v2, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object p1, p0, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result p1

    iput p1, p0, Llpb;->j:I

    iget-object v2, p0, Llpb;->k:Landroid/media/MediaMuxer;

    iget-object v3, p0, Llpb;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v3, p0, Llpb;->h:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_2
    iget-object p1, p0, Llpb;->f:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    iget-object p1, p0, Llpb;->a:Lii1;

    if-eqz p1, :cond_1

    iget-object v2, p0, Llpb;->e:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-double v2, v2

    iget-wide v4, p0, Llpb;->m:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    iget-wide v4, p0, Llpb;->b:D

    cmpl-double v6, v2, v4

    if-lez v6, :cond_6

    iput-wide v2, p0, Llpb;->b:D

    goto :goto_3

    :cond_6
    move-wide v2, v4

    :goto_3
    iput-wide v2, p0, Llpb;->b:D

    invoke-interface {p1, v2, v3}, Lii1;->onExportProgress(D)V

    goto/16 :goto_1

    :cond_7
    :goto_4
    iget-boolean p1, p0, Llpb;->d:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Llpb;->k:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    iget-boolean p1, p0, Llpb;->d:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Llpb;->k:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    :cond_9
    iget-object p1, p0, Llpb;->a:Lii1;

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Llpb;->d:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Llpb;->c:Z

    if-eqz p1, :cond_a

    iget-object p0, p0, Llpb;->a:Lii1;

    invoke-interface {p0}, Lii1;->onExportCanceled()V

    return v0

    :cond_a
    iget-boolean p0, p0, Llpb;->d:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :goto_5
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Llpb;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Llpb;->d:Z

    if-nez p1, :cond_b

    iget-object p0, p0, Llpb;->k:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->release()V

    :cond_b
    return v0

    :goto_6
    :try_start_2
    const-string v2, "The source video file is malformed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Llpb;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Llpb;->d:Z

    if-nez p1, :cond_c

    iget-object p0, p0, Llpb;->k:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->release()V

    :cond_c
    return v0

    :goto_7
    iget-boolean v0, p0, Llpb;->d:Z

    if-nez v0, :cond_d

    iget-object p0, p0, Llpb;->k:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->release()V

    :cond_d
    throw p1
.end method

.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Llpb;->a:Lii1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lii1;->onExportFailed(Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, "status"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "vd_vmore_tomp3_statue"

    invoke-static {v0, p0, p1}, Lh16;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Lii1;)V
    .locals 0

    iput-object p1, p0, Llpb;->a:Lii1;

    return-void
.end method

.method public k()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Llpb;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Llpb;->c:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Llpb;->j(Lii1;)V

    iget-object v1, p0, Llpb;->l:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Llpb;->l:Ljava/util/HashMap;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Llpb;->h:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iput-object v0, p0, Llpb;->h:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v1, p0, Llpb;->k:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    iput-object v0, p0, Llpb;->k:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Llpb;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopConvert failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method
