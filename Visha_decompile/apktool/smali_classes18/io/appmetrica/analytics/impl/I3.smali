.class public final Lio/appmetrica/analytics/impl/I3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/G6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    sget-object p0, Lio/appmetrica/analytics/impl/N5;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lio/appmetrica/analytics/internal/PreloadInfoContentProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget-object p0, Lio/appmetrica/analytics/impl/N5;->b:Lio/appmetrica/analytics/internal/PreloadInfoContentProvider;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/internal/PreloadInfoContentProvider;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lio/appmetrica/analytics/impl/N5;->a:Ljava/util/concurrent/CountDownLatch;

    :cond_1
    return-void
.end method
