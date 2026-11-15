.class public Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;-><init>()V

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->detectFramework()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static framework()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static isNative()Z
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->a:Ljava/lang/String;

    const-string v1, "native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public detectFramework()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "com.unity3d.player.UnityPlayer"

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "unity"

    goto :goto_0

    :cond_0
    const-string p0, "mono.MonoPackageManager"

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "xamarin"

    goto :goto_0

    :cond_1
    const-string p0, "org.apache.cordova.CordovaPlugin"

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "cordova"

    goto :goto_0

    :cond_2
    const-string p0, "com.facebook.react.ReactRootView"

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "react"

    goto :goto_0

    :cond_3
    const-string p0, "io.flutter.embedding.engine.FlutterEngine"

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "flutter"

    goto :goto_0

    :cond_4
    const-string p0, "native"

    :goto_0
    return-object p0
.end method
