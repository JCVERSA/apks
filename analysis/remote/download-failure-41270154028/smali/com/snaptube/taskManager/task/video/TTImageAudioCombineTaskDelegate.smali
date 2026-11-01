.class public final Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/taskManager/task/video/g$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo/k08;

.field public final c:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public final d:Landroid/os/Handler;

.field public e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public f:Lcom/snaptube/extractor/pluginlib/models/Format;

.field public final g:Lo/t14;

.field public h:J

.field public final i:Lo/t14;

.field public j:Lo/uj8$b;

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->l:Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskInfo"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->b:Lo/k08;

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lo/c18;->d()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->d:Landroid/os/Handler;

    sget-object p1, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$formats$2;->INSTANCE:Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$formats$2;

    invoke-static {p1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->g:Lo/t14;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    new-instance p1, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$tempDir$2;

    invoke-direct {p1, p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$tempDir$2;-><init>(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V

    invoke-static {p1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i:Lo/t14;

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->z(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V

    return-void
.end method

.method public static final synthetic i(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic j(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic k(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lo/k08;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->b:Lo/k08;

    return-object p0
.end method

.method public static final synthetic l(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-object p0
.end method

.method public static final synthetic m(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Ljava/io/File;
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)J
    .locals 2

    iget-wide v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k:J

    return-wide v0
.end method

.method public static final synthetic o(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;J)V
    .locals 0

    iput-wide p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k:J

    return-void
.end method

.method public static final synthetic p(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->C(J)V

    return-void
.end method

.method private final r()V
    .locals 5

    iget-wide v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v0

    iget-wide v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->n(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    :cond_0
    return-void
.end method

.method private final w()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static final z(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lo/yj2;->q(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;II)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    sget-object v6, Lo/ft7;->a:Lo/ft7;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v3

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "format(...)"

    invoke-static {v7, v9}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    const-string v11, ", originUrl:"

    const-string v12, "videoInfo"

    if-nez v10, :cond_1

    new-instance v0, Ljava/io/IOException;

    iget-object v2, v1, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v2, :cond_0

    invoke-static {v12}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_1

    :cond_0
    move-object v13, v2

    :goto_1
    invoke-virtual {v13}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file does not exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_3

    new-instance v0, Ljava/io/IOException;

    iget-object v2, v1, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v2, :cond_2

    invoke-static {v12}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    move-object v13, v2

    :goto_2
    invoke-virtual {v13}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeFile file failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-double v14, v0

    int-to-double v3, v7

    div-double/2addr v14, v3

    int-to-double v12, v2

    int-to-double v7, v11

    div-double/2addr v12, v7

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    mul-double v3, v3, v11

    double-to-int v3, v3

    mul-double v7, v7, v11

    double-to-int v4, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v7, "createBitmap(...)"

    invoke-static {v8, v7}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x1000000

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v0

    int-to-float v13, v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v12

    move/from16 v20, v13

    move-object/from16 v21, v11

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v12, v0, v3

    div-int/lit8 v12, v12, 0x2

    sub-int v13, v2, v4

    div-int/lit8 v13, v13, 0x2

    new-instance v14, Landroid/graphics/Rect;

    add-int/2addr v3, v12

    add-int/2addr v4, v13

    invoke-direct {v14, v12, v13, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v7, v10, v3, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v11, "image%03d.jpg"

    invoke-static {v6, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x1e

    invoke-virtual {v8, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lo/gu0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x1

    add-int/2addr v5, v4

    const/4 v3, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Lo/gu0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final B()V
    .locals 9

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/models/Format;->isImage()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x2a800

    goto :goto_1

    :cond_0
    const-wide/32 v5, 0x100000

    :goto_1
    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->C(J)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/zu;->c()V

    :cond_2
    iput-wide v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gtz v7, :cond_3

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-wide v5, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k:J

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k:J

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_5

    return-void

    :cond_5
    new-instance v1, Lo/uj8$b;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    if-nez v2, :cond_6

    const-string v2, "targetFormat"

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getHeaders()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$b;

    invoke-direct {v3, p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$b;-><init>(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V

    invoke-direct {v1, v0, v2, v3}, Lo/uj8$b;-><init>(Ljava/util/List;Ljava/util/Map;Lo/zu$c;)V

    iput-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->N()Lo/uj8;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    invoke-virtual {v0, v1}, Lo/uj8;->b(Lo/zu;)V

    return-void
.end method

.method public final C(J)V
    .locals 9

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->b:Lo/k08;

    invoke-virtual {v0, p1, p2}, Lo/k08;->e0(J)V

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->b:Lo/k08;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    int-to-long v2, v2

    iget-wide v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lo/k08;->l0(JJJZ)I

    :cond_0
    return-void
.end method

.method public a()V
    .locals 9

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/zu;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->r()V

    :try_start_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->y()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-virtual {p0, v0, v1, v2}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->A(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UnExpectedException"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->x()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->q()J

    move-result-wide v6

    new-instance v8, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1;

    invoke-direct {v8, p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1;-><init>(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V

    invoke-virtual/range {v2 .. v8}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lo/gz7;

    invoke-direct {v0, p0}, Lo/gz7;-><init>(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V

    invoke-static {v0}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->u(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->u(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->s(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 3

    const-string v0, "videoInfo"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetFormat"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object p1

    const-string v0, "getFormats(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->F0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->B()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->r()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/zu;->c()V

    :cond_0
    return-void
.end method

.method public final q()J
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lo/xu0;->p()V

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long v0, v2

    const-wide/16 v2, 0x3

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v2, :cond_3

    const-string v2, "videoInfo"

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest;
    .locals 7

    invoke-static {}, Lcom/phoenix/download/DownloadRequest;->a()Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/4 v2, 0x0

    const-string v3, "videoInfo"

    if-nez v1, :cond_0

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->B(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->D(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v1, :cond_1

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->y(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/wd9;->S(Ljava/lang/String;)Lcom/phoenix/download/DownloadInfo$ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->w(Lcom/phoenix/download/DownloadInfo$ContentType;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->t(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/phoenix/download/DownloadRequest$a;->z(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/phoenix/download/DownloadRequest$a;->C(J)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v0, :cond_3

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p2, v1, v0}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v0, :cond_4

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thumbnail"

    invoke-virtual {p2, v1, v0}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v0, :cond_5

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/phoenix/download/DownloadRequest$a;->A(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/phoenix/download/DownloadRequest$a;->x(Ljava/util/Map;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    const-string v0, "format"

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phoenix/download/DownloadRequest$a;->u()Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final t(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/4 v1, 0x0

    const-string v2, "videoInfo"

    if-nez v0, :cond_0

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lo/wd9;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-nez v0, :cond_1

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final u(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->v()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->isImage()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo/ft7;->a:Lo/ft7;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "image%03d.jpg"

    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "audio.tmp"

    :goto_0
    return-object p1
.end method

.method public final v()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->g:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/audio.tmp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->w()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/image%03d.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
