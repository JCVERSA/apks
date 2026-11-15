.class public final Landroidx/window/area/WindowAreaController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/area/WindowAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\u0003R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/window/area/WindowAreaController$Companion;",
        "",
        "<init>",
        "()V",
        "Landroidx/window/area/WindowAreaController;",
        "getOrCreate",
        "()Landroidx/window/area/WindowAreaController;",
        "Landroidx/window/area/WindowAreaControllerDecorator;",
        "overridingDecorator",
        "Lzfb;",
        "overrideDecorator",
        "(Landroidx/window/area/WindowAreaControllerDecorator;)V",
        "reset",
        "",
        "TAG",
        "Ljava/lang/String;",
        "decorator",
        "Landroidx/window/area/WindowAreaControllerDecorator;",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/window/area/WindowAreaController$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static decorator:Landroidx/window/area/WindowAreaControllerDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/area/WindowAreaController$Companion;

    invoke-direct {v0}, Landroidx/window/area/WindowAreaController$Companion;-><init>()V

    sput-object v0, Landroidx/window/area/WindowAreaController$Companion;->$$INSTANCE:Landroidx/window/area/WindowAreaController$Companion;

    const-class v0, Landroidx/window/area/WindowAreaController;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-interface {v0}, Lde5;->o()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/area/WindowAreaController$Companion;->TAG:Ljava/lang/String;

    sget-object v0, Landroidx/window/area/EmptyDecorator;->INSTANCE:Landroidx/window/area/EmptyDecorator;

    sput-object v0, Landroidx/window/area/WindowAreaController$Companion;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrCreate()Landroidx/window/area/WindowAreaController;
    .locals 5

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroidx/window/area/WindowAreaController$Companion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/window/area/SafeWindowAreaComponentProvider;

    invoke-direct {v1, v0}, Landroidx/window/area/SafeWindowAreaComponentProvider;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Landroidx/window/area/SafeWindowAreaComponentProvider;->getWindowAreaComponent()Landroidx/window/extensions/area/WindowAreaComponent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    invoke-virtual {v0}, Landroidx/window/core/BuildConfig;->getVerificationMode()Landroidx/window/core/VerificationMode;

    move-result-object v0

    sget-object v1, Landroidx/window/core/VerificationMode;->LOG:Landroidx/window/core/VerificationMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/window/area/WindowAreaController$Companion;->TAG:Ljava/lang/String;

    const-string v1, "Failed to load WindowExtensions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_2

    if-eqz p0, :cond_2

    sget-object v0, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v0}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    sget-object v1, Landroidx/window/area/utils/DeviceUtils;->INSTANCE:Landroidx/window/area/utils/DeviceUtils;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "MANUFACTURER"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MODEL"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroidx/window/area/utils/DeviceUtils;->hasDeviceMetrics$window_release(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Landroidx/window/area/WindowAreaControllerImpl;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v0

    invoke-direct {v1, p0, v0}, Landroidx/window/area/WindowAreaControllerImpl;-><init>(Landroidx/window/extensions/area/WindowAreaComponent;I)V

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/window/area/EmptyWindowAreaControllerImpl;

    invoke-direct {v1}, Landroidx/window/area/EmptyWindowAreaControllerImpl;-><init>()V

    :goto_1
    sget-object p0, Landroidx/window/area/WindowAreaController$Companion;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    invoke-interface {p0, v1}, Landroidx/window/area/WindowAreaControllerDecorator;->decorate(Landroidx/window/area/WindowAreaController;)Landroidx/window/area/WindowAreaController;

    move-result-object p0

    return-object p0
.end method

.method public final overrideDecorator(Landroidx/window/area/WindowAreaControllerDecorator;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string p0, "overridingDecorator"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Landroidx/window/area/WindowAreaController$Companion;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    return-void
.end method

.method public final reset()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object p0, Landroidx/window/area/EmptyDecorator;->INSTANCE:Landroidx/window/area/EmptyDecorator;

    sput-object p0, Landroidx/window/area/WindowAreaController$Companion;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    return-void
.end method
