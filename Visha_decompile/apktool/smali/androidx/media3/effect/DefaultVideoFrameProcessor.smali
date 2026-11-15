.class public final Landroidx/media3/effect/DefaultVideoFrameProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/VideoFrameProcessor;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;,
        Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;,
        Landroidx/media3/effect/DefaultVideoFrameProcessor$WorkingColorSpace;,
        Landroidx/media3/effect/DefaultVideoFrameProcessor$ReleaseOutputTextureCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultFrameProcessor"

.field public static final WORKING_COLOR_SPACE_DEFAULT:I = 0x0

.field public static final WORKING_COLOR_SPACE_LINEAR:I = 0x2

.field public static final WORKING_COLOR_SPACE_ORIGINAL:I = 0x1


# instance fields
.field private final activeEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentInputStreamInfo:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

.field private final debugViewProvider:Landroidx/media3/common/DebugViewProvider;

.field private final eglDisplay:Landroid/opengl/EGLDisplay;

.field private final finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

.field private final glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field private volatile inputStreamEnded:Z

.field private final inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

.field private final inputSwitcher:Landroidx/media3/effect/InputSwitcher;

.field private final intermediateGlShaderPrograms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlShaderProgram;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Landroidx/media3/common/VideoFrameProcessor$Listener;

.field private final listenerExecutor:Ljava/util/concurrent/Executor;

.field private final lock:Ljava/lang/Object;

.field private volatile nextInputFrameInfo:Landroidx/media3/common/FrameInfo;

.field private onInputSurfaceReadyListener:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputColorInfo:Landroidx/media3/common/ColorInfo;

.field private pendingInputStreamInfo:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private registeredFirstInputStream:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final renderFramesAutomatically:Z

.field private final shouldReleaseGlObjectsProvider:Z

.field private final videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.effect"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroidx/media3/common/GlObjectsProvider;ZLandroid/opengl/EGLDisplay;Landroidx/media3/effect/InputSwitcher;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroidx/media3/common/VideoFrameProcessor$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/effect/FinalShaderProgramWrapper;ZLandroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iput-boolean p3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->shouldReleaseGlObjectsProvider:Z

    iput-object p4, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->eglDisplay:Landroid/opengl/EGLDisplay;

    iput-object p5, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    iput-object p6, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iput-object p7, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    iput-object p8, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listenerExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p10, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->renderFramesAutomatically:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->activeEffects:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lock:Ljava/lang/Object;

    iput-object p11, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iput-object p12, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    iput-object p9, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    new-instance p1, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {p1}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    new-instance p1, Landroidx/media3/effect/q;

    invoke-direct {p1, p0, p8, p7}, Landroidx/media3/effect/q;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)V

    invoke-virtual {p9, p1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->setOnInputStreamProcessedListener(Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lambda$registerInputStream$2(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;IZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;ZLandroidx/media3/effect/GlTextureProducer$Listener;IZZZ)Landroidx/media3/effect/DefaultVideoFrameProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;,
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    invoke-static/range {p0 .. p14}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->createOpenGlObjectsAndFrameProcessor(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;IZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;ZLandroidx/media3/effect/GlTextureProducer$Listener;IZZZ)Landroidx/media3/effect/DefaultVideoFrameProcessor;

    move-result-object p0

    return-object p0
.end method

.method private adjustForPixelWidthHeightRatio(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 2

    iget p0, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget v1, p1, Landroidx/media3/common/Format;->width:I

    int-to-float v1, v1

    iget p1, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0

    :cond_0
    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iget v1, p1, Landroidx/media3/common/Format;->height:I

    int-to-float v1, v1

    iget p1, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    div-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static synthetic b(Landroidx/media3/effect/DefaultVideoFrameProcessor;Ljava/lang/InterruptedException;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lambda$registerInputStream$1(Ljava/lang/InterruptedException;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lambda$configure$5(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    return-void
.end method

.method private static chainShaderProgramsWithListeners(Landroidx/media3/common/GlObjectsProvider;Ljava/util/List;Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroidx/media3/common/VideoFrameProcessor$Listener;Ljava/util/concurrent/Executor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/GlObjectsProvider;",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlShaderProgram;",
            ">;",
            "Landroidx/media3/effect/FinalShaderProgramWrapper;",
            "Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;",
            "Landroidx/media3/common/VideoFrameProcessor$Listener;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/effect/GlShaderProgram;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/effect/GlShaderProgram;

    new-instance v2, Landroidx/media3/effect/ChainingGlShaderProgramListener;

    invoke-direct {v2, p0, p2, v1, p3}, Landroidx/media3/effect/ChainingGlShaderProgramListener;-><init>(Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/effect/GlShaderProgram;Landroidx/media3/effect/GlShaderProgram;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;)V

    invoke-interface {p2, v2}, Landroidx/media3/effect/GlShaderProgram;->setOutputListener(Landroidx/media3/effect/GlShaderProgram$OutputListener;)V

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ly62;

    invoke-direct {v3, p4}, Ly62;-><init>(Landroidx/media3/common/VideoFrameProcessor$Listener;)V

    invoke-interface {p2, p5, v3}, Landroidx/media3/effect/GlShaderProgram;->setErrorListener(Ljava/util/concurrent/Executor;Landroidx/media3/effect/GlShaderProgram$ErrorListener;)V

    invoke-interface {v1, v2}, Landroidx/media3/effect/GlShaderProgram;->setInputListener(Landroidx/media3/effect/GlShaderProgram$InputListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static checkColors(Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    invoke-static {p0}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    :cond_1
    invoke-static {p0}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :try_start_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->getContextMajorVersion()J

    move-result-wide v3
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x3

    cmp-long v0, v3, v5

    if-nez v0, :cond_9

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget v0, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    if-eq v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual {p1}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget v0, p1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    if-eq v0, v2, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-static {p0}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v3

    if-eq v0, v3, :cond_8

    invoke-static {p0, p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->isSupportedToneMapping(Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0, p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->isUltraHdr(Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    :cond_8
    return-void

    :cond_9
    new-instance p0, Landroidx/media3/common/VideoFrameProcessingException;

    const-string p1, "OpenGL ES 3.0 context support is required for HDR input or output."

    invoke-direct {p0, p1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p0

    throw p0
.end method

.method private configure(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    iget-object v0, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/ColorInfo;

    iget-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0, v1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->checkColors(Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->activeEffects:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->effects:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_0
    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/GlShaderProgram;

    invoke-interface {v0}, Landroidx/media3/effect/GlShaderProgram;->release()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_2
    new-instance p2, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {p2}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    iget-object v0, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->effects:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p2

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    sget-object v1, Landroidx/media3/common/DebugViewProvider;->NONE:Landroidx/media3/common/DebugViewProvider;

    if-eq v0, v1, :cond_3

    new-instance v1, Landroidx/media3/effect/DebugViewEffect;

    iget-object v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    invoke-direct {v1, v0, v2}, Landroidx/media3/effect/DebugViewEffect;-><init>(Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;)V

    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :cond_3
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    iget-object v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    iget-object v3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

    invoke-static {v1, p2, v2, v3}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->createGlShaderPrograms(Landroid/content/Context;Ljava/util/List;Landroidx/media3/common/ColorInfo;Landroidx/media3/effect/FinalShaderProgramWrapper;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

    invoke-static {v0, v1}, Lv55;->f(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/GlShaderProgram;

    invoke-virtual {p2, v0}, Landroidx/media3/effect/InputSwitcher;->setDownstreamShaderProgram(Landroidx/media3/effect/GlShaderProgram;)V

    iget-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-object v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    iget-object v3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iget-object v4, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iget-object v5, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    iget-object v6, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listenerExecutor:Ljava/util/concurrent/Executor;

    invoke-static/range {v1 .. v6}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->chainShaderProgramsWithListeners(Landroidx/media3/common/GlObjectsProvider;Ljava/util/List;Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroidx/media3/common/VideoFrameProcessor$Listener;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->activeEffects:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->activeEffects:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->effects:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    iget v0, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->inputType:I

    new-instance v1, Landroidx/media3/common/FrameInfo;

    iget-object v2, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->format:Landroidx/media3/common/Format;

    iget-wide v3, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->offsetToAddUs:J

    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/common/FrameInfo;-><init>(Landroidx/media3/common/Format;J)V

    invoke-virtual {p2, v0, v1}, Landroidx/media3/effect/InputSwitcher;->switchToInput(ILandroidx/media3/common/FrameInfo;)V

    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p2}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->onInputSurfaceReadyListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->onInputSurfaceReadyListener:Ljava/lang/Runnable;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/media3/effect/y;

    invoke-direct {v0, p0, p1}, Landroidx/media3/effect/y;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->currentInputStreamInfo:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

    if-eqz p2, :cond_6

    iget-object v0, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->frameRate:F

    iget-object p2, p2, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_7

    :cond_6
    iget-object p2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/media3/effect/p;

    invoke-direct {v0, p0, p1}, Landroidx/media3/effect/p;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    iput-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->currentInputStreamInfo:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

    return-void

    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static createFocusedEglContext(Landroidx/media3/common/GlObjectsProvider;Landroid/opengl/EGLDisplay;I[I)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/GlObjectsProvider;",
            "Landroid/opengl/EGLDisplay;",
            "I[I)",
            "Landroid/util/Pair<",
            "Landroid/opengl/EGLContext;",
            "Landroid/opengl/EGLSurface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/GlObjectsProvider;->createEglContext(Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Landroidx/media3/common/GlObjectsProvider;->createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static createFocusedEglContextWithFallback(Landroidx/media3/common/GlObjectsProvider;Landroid/opengl/EGLDisplay;[I)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/GlObjectsProvider;",
            "Landroid/opengl/EGLDisplay;",
            "[I)",
            "Landroid/util/Pair<",
            "Landroid/opengl/EGLContext;",
            "Landroid/opengl/EGLSurface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_0
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->createFocusedEglContext(Landroidx/media3/common/GlObjectsProvider;Landroid/opengl/EGLDisplay;I[I)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->createFocusedEglContext(Landroidx/media3/common/GlObjectsProvider;Landroid/opengl/EGLDisplay;I[I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static createGlShaderPrograms(Landroid/content/Context;Ljava/util/List;Landroidx/media3/common/ColorInfo;Landroidx/media3/effect/FinalShaderProgramWrapper;)Lcom/google/common/collect/ImmutableList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;",
            "Landroidx/media3/common/ColorInfo;",
            "Landroidx/media3/effect/FinalShaderProgramWrapper;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/effect/GlShaderProgram;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    new-instance v1, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    new-instance v2, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Effect;

    instance-of v5, v4, Landroidx/media3/effect/GlEffect;

    const-string v6, "DefaultVideoFrameProcessor only supports GlEffects"

    invoke-static {v5, v6}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    check-cast v4, Landroidx/media3/effect/GlEffect;

    instance-of v5, v4, Landroidx/media3/effect/GlMatrixTransformation;

    if-eqz v5, :cond_0

    check-cast v4, Landroidx/media3/effect/GlMatrixTransformation;

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_1

    :cond_0
    instance-of v5, v4, Landroidx/media3/effect/RgbMatrix;

    if-eqz v5, :cond_1

    check-cast v4, Landroidx/media3/effect/RgbMatrix;

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v5

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    invoke-static {p0, v6, v7, v5}, Landroidx/media3/effect/DefaultShaderProgram;->create(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Landroidx/media3/effect/DefaultShaderProgram;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    new-instance v1, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    new-instance v2, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    :cond_3
    invoke-interface {v4, p0, v5}, Landroidx/media3/effect/GlEffect;->toGlShaderProgram(Landroid/content/Context;Z)Landroidx/media3/effect/GlShaderProgram;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->setMatrixTransformations(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static createOpenGlObjectsAndFrameProcessor(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;IZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;ZLandroidx/media3/effect/GlTextureProducer$Listener;IZZZ)Landroidx/media3/effect/DefaultVideoFrameProcessor;
    .locals 18
    .param p10    # Landroidx/media3/effect/GlTextureProducer$Listener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;,
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->getDefaultEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    :goto_0
    move-object/from16 v14, p8

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    goto :goto_0

    :goto_1
    invoke-static {v14, v13, v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->createFocusedEglContextWithFallback(Landroidx/media3/common/GlObjectsProvider;Landroid/opengl/EGLDisplay;[I)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/ColorInfo;->buildUpon()Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v12, p3

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    move/from16 v12, p3

    if-ne v12, v2, :cond_2

    :goto_2
    move-object v3, v1

    goto :goto_3

    :cond_2
    move-object/from16 v3, p2

    :goto_3
    new-instance v15, Landroidx/media3/effect/InputSwitcher;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ly62;

    move-object/from16 v11, p7

    invoke-direct {v7, v11}, Ly62;-><init>(Landroidx/media3/common/VideoFrameProcessor$Listener;)V

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p3

    move/from16 v9, p12

    move/from16 v10, p13

    move/from16 v11, p14

    invoke-direct/range {v1 .. v11}, Landroidx/media3/effect/InputSwitcher;-><init>(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/GlObjectsProvider;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/effect/GlShaderProgram$ErrorListener;IZZZ)V

    new-instance v16, Landroidx/media3/effect/FinalShaderProgramWrapper;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/opengl/EGLContext;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/opengl/EGLSurface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Landroidx/media3/effect/FinalShaderProgramWrapper;-><init>(Landroid/content/Context;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;Landroidx/media3/common/ColorInfo;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/effect/GlTextureProducer$Listener;IIZ)V

    new-instance v17, Landroidx/media3/effect/DefaultVideoFrameProcessor;

    move-object/from16 v0, v17

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, v16

    move/from16 v10, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    invoke-direct/range {v0 .. v12}, Landroidx/media3/effect/DefaultVideoFrameProcessor;-><init>(Landroid/content/Context;Landroidx/media3/common/GlObjectsProvider;ZLandroid/opengl/EGLDisplay;Landroidx/media3/effect/InputSwitcher;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroidx/media3/common/VideoFrameProcessor$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/effect/FinalShaderProgramWrapper;ZLandroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;)V

    return-object v17
.end method

.method public static synthetic d(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lambda$configure$6(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/effect/DefaultVideoFrameProcessor;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->releaseGlObjects()V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/effect/DefaultVideoFrameProcessor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lambda$new$0(Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lambda$submitPendingInputStream$4(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    return-void
.end method

.method private static getInputTypeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "Surface with automatic frame registration"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Texture ID"

    return-object p0

    :cond_2
    const-string p0, "Bitmap"

    return-object p0

    :cond_3
    const-string p0, "Surface"

    return-object p0
.end method

.method public static synthetic h(Landroidx/media3/effect/DefaultVideoFrameProcessor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lambda$renderOutputFrame$3(J)V

    return-void
.end method

.method private static isSupportedToneMapping(Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;)Z
    .locals 2

    iget v0, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUltraHdr(Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo;)Z
    .locals 1

    sget-object v0, Landroidx/media3/common/ColorInfo;->SRGB_BT709_FULL:Landroidx/media3/common/ColorInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$configure$5(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    iget v0, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->inputType:I

    iget-object v1, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->format:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->effects:Ljava/util/List;

    invoke-interface {p0, v0, v1, p1}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onInputStreamRegistered(ILandroidx/media3/common/Format;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$configure$6(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    iget-object p1, p1, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;->format:Landroidx/media3/common/Format;

    iget p1, p1, Landroidx/media3/common/Format;->frameRate:F

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onOutputFrameRateChanged(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lx62;

    invoke-direct {p0, p2}, Lx62;-><init>(Landroidx/media3/common/VideoFrameProcessor$Listener;)V

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "SignalEnded"

    const-wide/high16 p1, -0x8000000000000000L

    const-string v0, "VideoFrameProcessor"

    invoke-static {v0, p0, p1, p2}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->submitPendingInputStream()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$registerInputStream$1(Ljava/lang/InterruptedException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listener:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-static {p1}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private synthetic lambda$registerInputStream$2(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->configure(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;Z)V

    return-void
.end method

.method private synthetic lambda$renderOutputFrame$3(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/effect/FinalShaderProgramWrapper;->renderOutputFrame(Landroidx/media3/common/GlObjectsProvider;J)V

    return-void
.end method

.method private synthetic lambda$submitPendingInputStream$4(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->configure(Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;Z)V

    return-void
.end method

.method private releaseGlObjects()V
    .locals 4

    const-string v0, "Error releasing GL objects"

    const-string v1, "DefaultFrameProcessor"

    :try_start_0
    iget-object v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {v2}, Landroidx/media3/effect/InputSwitcher;->release()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->intermediateGlShaderPrograms:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/effect/GlShaderProgram;

    invoke-interface {v3}, Landroidx/media3/effect/GlShaderProgram;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

    invoke-virtual {v2}, Landroidx/media3/effect/FinalShaderProgramWrapper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    const-string v3, "Error releasing shader program"

    invoke-static {v1, v3, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-boolean v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->shouldReleaseGlObjectsProvider:Z

    if-eqz v2, :cond_1

    :try_start_2
    iget-object v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-interface {v2, p0}, Landroidx/media3/common/GlObjectsProvider;->release(Landroid/opengl/EGLDisplay;)V
    :try_end_2
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    return-void

    :goto_4
    iget-boolean v3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->shouldReleaseGlObjectsProvider:Z

    if-eqz v3, :cond_2

    :try_start_3
    iget-object v3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-interface {v3, p0}, Landroidx/media3/common/GlObjectsProvider;->release(Landroid/opengl/EGLDisplay;)V
    :try_end_3
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    invoke-static {v1, v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    throw v2
.end method

.method private submitPendingInputStream()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->pendingInputStreamInfo:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v3, Landroidx/media3/effect/w;

    invoke-direct {v3, p0, v1}, Landroidx/media3/effect/w;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    invoke-virtual {v2, v3}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->pendingInputStreamInfo:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public flush()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {v0}, Landroidx/media3/effect/InputSwitcher;->hasActiveInput()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamEnded:Z

    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {v0}, Landroidx/media3/effect/InputSwitcher;->activeTextureManager()Landroidx/media3/effect/TextureManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/effect/TextureManager;->dropIncomingRegisteredFrames()V

    iget-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    invoke-virtual {v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->flush()V

    invoke-virtual {v0}, Landroidx/media3/effect/TextureManager;->releaseAllRegisteredFrames()V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Landroidx/media3/effect/t;

    invoke-direct {v2, v1}, Landroidx/media3/effect/t;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v2}, Landroidx/media3/effect/TextureManager;->setOnFlushCompleteListener(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    iget-object v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iget-object v3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/media3/effect/u;

    invoke-direct {v4, v3}, Landroidx/media3/effect/u;-><init>(Landroidx/media3/effect/FinalShaderProgramWrapper;)V

    invoke-virtual {v2, v4}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/effect/TextureManager;->setOnFlushCompleteListener(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    invoke-direct {p0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->submitPendingInputStream()V

    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {p0}, Landroidx/media3/effect/InputSwitcher;->getInputSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getPendingInputFrameCount()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {v0}, Landroidx/media3/effect/InputSwitcher;->hasActiveInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {p0}, Landroidx/media3/effect/InputSwitcher;->activeTextureManager()Landroidx/media3/effect/TextureManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/effect/TextureManager;->getPendingFrameCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTaskExecutor()Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    return-object p0
.end method

.method public queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->isOpen()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->outputColorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v0, v3, :cond_1

    invoke-static {p1}, Lff0;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    const-string v0, "VideoFrameProcessor configured for HDR output, but either received SDR input, or is on an API level that doesn\'t support gainmaps. SDR to HDR tonemapping is not supported."

    invoke-static {v2, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->nextInputFrameInfo:Landroidx/media3/common/FrameInfo;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/FrameInfo;

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {p0}, Landroidx/media3/effect/InputSwitcher;->activeTextureManager()Landroidx/media3/effect/TextureManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/effect/TextureManager;->queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/FrameInfo;Landroidx/media3/common/util/TimestampIterator;)V

    return v1
.end method

.method public queueInputTexture(IJ)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {p0}, Landroidx/media3/effect/InputSwitcher;->activeTextureManager()Landroidx/media3/effect/TextureManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/effect/TextureManager;->queueInputTexture(IJ)V

    return v1
.end method

.method public registerInputFrame()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->nextInputFrameInfo:Landroidx/media3/common/FrameInfo;

    const-string v2, "registerInputStream must be called before registering input frames"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {v0}, Landroidx/media3/effect/InputSwitcher;->activeTextureManager()Landroidx/media3/effect/TextureManager;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->nextInputFrameInfo:Landroidx/media3/common/FrameInfo;

    invoke-virtual {v0, p0}, Landroidx/media3/effect/TextureManager;->registerInputFrame(Landroidx/media3/common/FrameInfo;)V

    return v1
.end method

.method public registerInputStream(ILandroidx/media3/common/Format;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "VideoFrameProcessor"

    const-string v1, "RegisterNewInputStream"

    const-string v4, "InputType %s - %dx%d"

    invoke-static {p1}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->getInputTypeString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p2, Landroidx/media3/common/Format;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p2, Landroidx/media3/common/Format;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    move-wide v2, p4

    invoke-static/range {v0 .. v5}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->adjustForPixelWidthHeightRatio(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/FrameInfo;

    invoke-direct {v1, v0, p4, p5}, Landroidx/media3/common/FrameInfo;-><init>(Landroidx/media3/common/Format;J)V

    iput-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->nextInputFrameInfo:Landroidx/media3/common/FrameInfo;

    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->block()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lw62;

    invoke-direct {v2, p0, v0}, Lw62;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Ljava/lang/InterruptedException;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    new-instance v7, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;-><init>(ILandroidx/media3/common/Format;Ljava/util/List;J)V

    iget-boolean p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->registeredFirstInputStream:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->registeredFirstInputStream:Z

    iget-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->close()Z

    iget-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance p2, Landroidx/media3/effect/s;

    invoke-direct {p2, p0, v7}, Landroidx/media3/effect/s;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    invoke-virtual {p1, p2}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submit(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iput-object v7, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->pendingInputStreamInfo:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

    iget-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->close()Z

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {p0}, Landroidx/media3/effect/InputSwitcher;->signalEndOfCurrentInputStream()V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v1, Landroidx/media3/effect/x;

    invoke-direct {v1, p0}, Landroidx/media3/effect/x;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;)V

    invoke-virtual {v0, v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->release(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public renderOutputFrame(J)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->renderFramesAutomatically:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Calling this method is not allowed when renderFramesAutomatically is enabled"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->videoFrameProcessingTaskExecutor:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    new-instance v1, Landroidx/media3/effect/v;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/effect/v;-><init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;J)V

    invoke-virtual {v0, v1}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->submitWithHighPriority(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method

.method public setInputDefaultBufferSize(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/effect/InputSwitcher;->setInputDefaultBufferSize(II)V

    return-void
.end method

.method public setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {p0, p1}, Landroidx/media3/effect/InputSwitcher;->setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V

    return-void
.end method

.method public setOnInputSurfaceReadyListener(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamRegisteredCondition:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v1}, Landroidx/media3/common/util/ConditionVariable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->onInputSurfaceReadyListener:Ljava/lang/Runnable;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V
    .locals 0
    .param p1    # Landroidx/media3/common/SurfaceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->finalShaderProgramWrapper:Landroidx/media3/effect/FinalShaderProgramWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/effect/FinalShaderProgramWrapper;->setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V

    return-void
.end method

.method public signalEndOfInput()V
    .locals 4

    const-string v0, "ReceiveEndOfAllInput"

    const-wide/high16 v1, -0x8000000000000000L

    const-string v3, "VideoFrameProcessor"

    invoke-static {v3, v0, v1, v2}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;J)V

    iget-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputStreamEnded:Z

    iget-object p0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor;->inputSwitcher:Landroidx/media3/effect/InputSwitcher;

    invoke-virtual {p0}, Landroidx/media3/effect/InputSwitcher;->signalEndOfCurrentInputStream()V

    return-void
.end method
