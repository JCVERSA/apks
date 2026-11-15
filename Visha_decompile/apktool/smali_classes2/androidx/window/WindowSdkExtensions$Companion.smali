.class public final Landroidx/window/WindowSdkExtensions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/WindowSdkExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\r\u0010\u0003R\u0016\u0010\u000f\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/window/WindowSdkExtensions$Companion;",
        "",
        "<init>",
        "()V",
        "Landroidx/window/WindowSdkExtensions;",
        "getInstance",
        "()Landroidx/window/WindowSdkExtensions;",
        "Landroidx/window/WindowSdkExtensionsDecorator;",
        "overridingDecorator",
        "Lzfb;",
        "overrideDecorator$window_release",
        "(Landroidx/window/WindowSdkExtensionsDecorator;)V",
        "overrideDecorator",
        "reset$window_release",
        "reset",
        "decorator",
        "Landroidx/window/WindowSdkExtensionsDecorator;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/window/WindowSdkExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Landroidx/window/WindowSdkExtensions;
    .locals 1

    invoke-static {}, Landroidx/window/WindowSdkExtensions;->access$getDecorator$cp()Landroidx/window/WindowSdkExtensionsDecorator;

    move-result-object p0

    new-instance v0, Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    invoke-direct {v0}, Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;-><init>()V

    invoke-interface {p0, v0}, Landroidx/window/WindowSdkExtensionsDecorator;->decorate(Landroidx/window/WindowSdkExtensions;)Landroidx/window/WindowSdkExtensions;

    move-result-object p0

    return-object p0
.end method

.method public final overrideDecorator$window_release(Landroidx/window/WindowSdkExtensionsDecorator;)V
    .locals 0

    const-string p0, "overridingDecorator"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/window/WindowSdkExtensions;->access$setDecorator$cp(Landroidx/window/WindowSdkExtensionsDecorator;)V

    return-void
.end method

.method public final reset$window_release()V
    .locals 0

    sget-object p0, Landroidx/window/EmptyDecoratorWindowSdk;->INSTANCE:Landroidx/window/EmptyDecoratorWindowSdk;

    invoke-static {p0}, Landroidx/window/WindowSdkExtensions;->access$setDecorator$cp(Landroidx/window/WindowSdkExtensionsDecorator;)V

    return-void
.end method
