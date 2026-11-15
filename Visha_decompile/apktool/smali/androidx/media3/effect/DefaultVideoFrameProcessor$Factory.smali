.class public final Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/VideoFrameProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/effect/DefaultVideoFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;
    }
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "Effect:DefaultVideoFrameProcessor:GlThread"


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final experimentalAdjustSurfaceTextureTransformationMatrix:Z

.field private final experimentalRepeatInputBitmapWithoutResampling:Z

.field private final glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final repeatLastRegisteredFrame:Z

.field private final sdrWorkingColorSpace:I

.field private final textureOutputCapacity:I

.field private final textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(IZLandroidx/media3/common/GlObjectsProvider;Ljava/util/concurrent/ExecutorService;Landroidx/media3/effect/GlTextureProducer$Listener;IZZ)V
    .locals 0
    .param p3    # Landroidx/media3/common/GlObjectsProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/media3/effect/GlTextureProducer$Listener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->sdrWorkingColorSpace:I

    .line 4
    iput-boolean p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->repeatLastRegisteredFrame:Z

    .line 5
    iput-object p3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 6
    iput-object p4, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object p5, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    .line 8
    iput p6, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->textureOutputCapacity:I

    .line 9
    iput-boolean p7, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->experimentalAdjustSurfaceTextureTransformationMatrix:Z

    .line 10
    iput-boolean p8, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->experimentalRepeatInputBitmapWithoutResampling:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLandroidx/media3/common/GlObjectsProvider;Ljava/util/concurrent/ExecutorService;Landroidx/media3/effect/GlTextureProducer$Listener;IZZLandroidx/media3/effect/DefaultVideoFrameProcessor$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;-><init>(IZLandroidx/media3/common/GlObjectsProvider;Ljava/util/concurrent/ExecutorService;Landroidx/media3/effect/GlTextureProducer$Listener;IZZ)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;Z)Landroidx/media3/effect/DefaultVideoFrameProcessor;
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->lambda$create$0(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;Z)Landroidx/media3/effect/DefaultVideoFrameProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;)I
    .locals 0

    iget p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->sdrWorkingColorSpace:I

    return p0
.end method

.method public static synthetic access$100(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;)Landroidx/media3/common/GlObjectsProvider;
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;)Landroidx/media3/effect/GlTextureProducer$Listener;
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    return-object p0
.end method

.method public static synthetic access$400(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;)I
    .locals 0

    iget p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->textureOutputCapacity:I

    return p0
.end method

.method public static synthetic access$500(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->repeatLastRegisteredFrame:Z

    return p0
.end method

.method public static synthetic access$600(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->experimentalAdjustSurfaceTextureTransformationMatrix:Z

    return p0
.end method

.method public static synthetic access$700(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->experimentalRepeatInputBitmapWithoutResampling:Z

    return p0
.end method

.method private synthetic lambda$create$0(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;Z)Landroidx/media3/effect/DefaultVideoFrameProcessor;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    iget v3, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->sdrWorkingColorSpace:I

    iget-object v10, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->textureOutputListener:Landroidx/media3/effect/GlTextureProducer$Listener;

    iget v11, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->textureOutputCapacity:I

    iget-boolean v12, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->repeatLastRegisteredFrame:Z

    iget-boolean v13, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->experimentalAdjustSurfaceTextureTransformationMatrix:Z

    iget-boolean v14, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->experimentalRepeatInputBitmapWithoutResampling:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v14}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->access$1000(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;IZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;ZLandroidx/media3/effect/GlTextureProducer$Listener;IZZZ)Landroidx/media3/effect/DefaultVideoFrameProcessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;Landroidx/media3/effect/DefaultVideoFrameProcessor$1;)V

    return-object v0
.end method

.method public bridge synthetic create(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/common/VideoFrameProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->create(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/effect/DefaultVideoFrameProcessor;

    move-result-object p0

    return-object p0
.end method

.method public create(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/effect/DefaultVideoFrameProcessor;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const-string v1, "Effect:DefaultVideoFrameProcessor:GlThread"

    invoke-static {v1}, Landroidx/media3/common/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    :cond_0
    move-object v12, v1

    .line 3
    iget-object v1, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4
    :goto_0
    new-instance v7, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    .line 5
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/media3/effect/z;

    move-object/from16 v9, p6

    invoke-direct {v4, v9}, Landroidx/media3/effect/z;-><init>(Landroidx/media3/common/VideoFrameProcessor$Listener;)V

    invoke-direct {v7, v12, v1, v4}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;-><init>(Ljava/util/concurrent/ExecutorService;ZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor$ErrorListener;)V

    .line 6
    iget-object v1, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    if-eqz v1, :cond_3

    iget-object v4, v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v11, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v11, v3

    :goto_2
    if-nez v1, :cond_4

    .line 7
    new-instance v1, Landroidx/media3/effect/DefaultGlObjectsProvider;

    invoke-direct {v1}, Landroidx/media3/effect/DefaultGlObjectsProvider;-><init>()V

    :cond_4
    move-object v10, v1

    .line 8
    new-instance v13, Landroidx/media3/effect/a0;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v11}, Landroidx/media3/effect/a0;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;Z)V

    .line 9
    invoke-interface {v12, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 10
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/DefaultVideoFrameProcessor;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    .line 11
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 12
    new-instance v1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v1, v0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :goto_4
    new-instance v1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v1, v0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
