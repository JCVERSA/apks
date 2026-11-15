.class public final Landroidx/media3/datasource/DataSourceBitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/BitmapLoader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final DEFAULT_EXECUTOR_SERVICE:Lw6a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw6a;"
        }
    .end annotation
.end field


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final listeningExecutorService:Lpm5;

.field private final maximumOutputDimension:I

.field private final options:Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lss1;

    invoke-direct {v0}, Lss1;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lw6a;)Lw6a;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lw6a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lw6a;

    invoke-interface {v0}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpm5;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpm5;

    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lpm5;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lpm5;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lpm5;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Lpm5;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p3    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lpm5;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;I)V

    return-void
.end method

.method public constructor <init>(Lpm5;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;I)V
    .locals 0
    .param p3    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lpm5;

    .line 6
    iput-object p2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 7
    iput-object p3, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    .line 8
    iput p4, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    return-void
.end method

.method public static synthetic a(Landroidx/media3/datasource/DataSourceBitmapLoader;[B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$decodeBitmap$1([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lpm5;
    .locals 1

    invoke-static {}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$static$0()Lpm5;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroidx/media3/datasource/DataSourceBitmapLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$loadBitmap$2(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$decodeBitmap$1([B)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    iget p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    invoke-static {p1, v0, v1, p0}, Landroidx/media3/datasource/BitmapUtil;->decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$loadBitmap$2(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->options:Landroid/graphics/BitmapFactory$Options;

    iget p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->maximumOutputDimension:I

    invoke-static {v0, p1, v1, p0}, Landroidx/media3/datasource/DataSourceBitmapLoader;->load(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0()Lpm5;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->b(Ljava/util/concurrent/ExecutorService;)Lpm5;

    move-result-object v0

    return-object v0
.end method

.method private static load(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroidx/media3/datasource/DataSpec;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {p0, v0}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    invoke-static {p0}, Landroidx/media3/datasource/DataSourceUtil;->readToEnd(Landroidx/media3/datasource/DataSource;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0, p2, p3}, Landroidx/media3/datasource/BitmapUtil;->decode([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    throw p1
.end method


# virtual methods
.method public decodeBitmap([B)Lim5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lim5;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lpm5;

    new-instance v1, Lts1;

    invoke-direct {v1, p0, p1}, Lts1;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader;[B)V

    invoke-interface {v0, v1}, Lpm5;->submit(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public loadBitmap(Landroid/net/Uri;)Lim5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lim5;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lpm5;

    new-instance v1, Lus1;

    invoke-direct {v1, p0, p1}, Lus1;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Lpm5;->submit(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public supportsMimeType(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->isBitmapFactorySupportedMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
