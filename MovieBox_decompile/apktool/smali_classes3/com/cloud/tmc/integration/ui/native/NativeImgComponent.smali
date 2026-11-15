.class public final Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;
.super Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 32\u00020\u0001:\u00013B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0015\u001a\u00020\u0005H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0008\u0010\u001d\u001a\u00020\u0019H\u0002J\u001a\u0010\u001e\u001a\u00020\u00192\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0019H\u0016J \u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020 2\u0006\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020\u0019H\u0016J\u0008\u0010,\u001a\u00020\u0019H\u0016J\u0008\u0010-\u001a\u00020\u0019H\u0016J\u0008\u0010.\u001a\u00020\u0019H\u0016J\u001a\u0010/\u001a\u00020\u00192\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u00100\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0005H\u0002R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u00064"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;",
        "Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;",
        "context",
        "Landroid/content/Context;",
        "renderId",
        "",
        "viewId",
        "render",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V",
        "frameLayout",
        "Landroid/widget/ImageView;",
        "getFrameLayout",
        "()Landroid/widget/ImageView;",
        "mContext",
        "mRender",
        "mSrc",
        "getMSrc",
        "()Ljava/lang/String;",
        "setMSrc",
        "(Ljava/lang/String;)V",
        "getComponentName",
        "getComponentView",
        "Landroid/view/View;",
        "loadImage",
        "",
        "imgUrl",
        "notifyError",
        "msg",
        "notifyLoad",
        "onAddView",
        "customObject",
        "Lcom/google/gson/JsonObject;",
        "onViewChangeCallback",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;",
        "onDestory",
        "onEventMessage",
        "methodName",
        "args",
        "callback",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;",
        "onInterceptBackPressed",
        "",
        "onPause",
        "onRemove",
        "onResume",
        "onStop",
        "onUpdateView",
        "parseCustomJson",
        "parseImageUrl",
        "url",
        "Companion",
        "com.cloud.tmc.integration"
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
.field public static final Companion:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ERROR_MSG_I10001:Ljava/lang/String; = "Parameter invalid: I10001"

.field public static final ERROR_MSG_I10002:Ljava/lang/String; = "load image failed: I10002"

.field public static final EVENT_LOAD:Ljava/lang/String; = "load"

.field public static final TAG:Ljava/lang/String; = "NativeImgComponent"


# instance fields
.field private final frameLayout:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private final mRender:Lcom/cloud/tmc/kernel/render/IRender;

.field private mSrc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->Companion:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "renderId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "viewId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "render"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Landroid/widget/ImageView;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    invoke-direct {p2, p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 35
    .line 36
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->parseImageUrl$lambda$3(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$notifyError(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$notifyLoad(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyLoad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->loadImage$lambda$4(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final loadImage(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, ".gif"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-class v4, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 15
    .line 16
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "http"

    .line 20
    .line 21
    invoke-static {p1, v5, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, "load image failed: I10002"

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-interface {v1, v3, p1}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    invoke-direct {p0, v2}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    :goto_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    new-instance p1, Lcom/cloud/tmc/integration/ui/native/b;

    .line 66
    .line 67
    invoke-direct {p1, p0, v0}, Lcom/cloud/tmc/integration/ui/native/b;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-direct {p0, v2}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    new-instance v2, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;

    .line 87
    .line 88
    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v1, p1, v2}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgBitmapNoRound(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void
.end method

.method private static final loadImage$lambda$4(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$file"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v3, p1

    .line 25
    check-cast v3, Ljava/io/File;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    .line 28
    .line 29
    new-instance v6, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$1$1;

    .line 30
    .line 31
    invoke-direct {v6, p0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$1$1;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgGifPlay(Landroid/content/Context;Ljava/io/File;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final notifyError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "errMsg"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "error"

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->postEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final notifyLoad()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "load"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->postEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final parseCustomJson(Lcom/google/gson/JsonObject;)V
    .locals 4

    .line 1
    const-string v0, "Parameter invalid: I10001"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "src"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string v2, "scaleType"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_8

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_8

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const v3, -0x514d33ab

    .line 45
    .line 46
    .line 47
    if-eq v2, v3, :cond_5

    .line 48
    .line 49
    const v3, 0x2ff583

    .line 50
    .line 51
    .line 52
    if-eq v2, v3, :cond_4

    .line 53
    .line 54
    const v3, 0x32882591

    .line 55
    .line 56
    .line 57
    if-eq v2, v3, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v2, "fit-center"

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    .line 70
    .line 71
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    const-string v2, "fill"

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    .line 86
    .line 87
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    const-string v2, "center"

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_7

    .line 100
    .line 101
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    .line 102
    .line 103
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    .line 110
    .line 111
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mSrc:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_9

    .line 123
    .line 124
    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->parseImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :goto_3
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "NativeImgComponent"

    .line 132
    .line 133
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_9
    :goto_4
    return-void
.end method

.method private final parseImageUrl(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "Parameter invalid: I10001"

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "http"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_2

    .line 28
    .line 29
    const-class v6, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 30
    .line 31
    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 36
    .line 37
    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 38
    .line 39
    invoke-interface {v7}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-interface {v6, v7}, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;->getVhost(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v7, "get(IImageResourceManage\u2026).getVhost(mRender.appId)"

    .line 48
    .line 49
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v7, "/"

    .line 53
    .line 54
    invoke-static {p1, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_1

    .line 59
    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    :goto_0
    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    .line 99
    :goto_1
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v6, Ljava/lang/CharSequence;

    .line 102
    .line 103
    new-instance v7, Lkotlin/text/Regex;

    .line 104
    .line 105
    const-string v8, ".miniapp.transsion.com"

    .line 106
    .line 107
    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v6}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    const-class p1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 123
    .line 124
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 125
    .line 126
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v3, Ljava/lang/String;

    .line 133
    .line 134
    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v6, Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v6, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    iput-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 155
    .line 156
    :goto_2
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Ljava/lang/CharSequence;

    .line 159
    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_5

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 170
    .line 171
    new-instance v0, Lcom/cloud/tmc/integration/ui/native/a;

    .line 172
    .line 173
    invoke-direct {v0, p0, v1}, Lcom/cloud/tmc/integration/ui/native/a;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_6
    :goto_3
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_7
    :goto_4
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method private static final parseImageUrl$lambda$3(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$imageUrl"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->loadImage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    const-string v0, "NativeImgComponent"

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "Parameter invalid: I10001"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "native-image"

    .line 2
    .line 3
    return-object v0
.end method

.method public getComponentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFrameLayout()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMSrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAddView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 1

    .line 1
    const-string v0, "onViewChangeCallback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->parseCustomJson(Lcom/google/gson/JsonObject;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDestory()V
    .locals 0

    .line 1
    return-void
.end method

.method public onEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;)V
    .locals 1

    .line 1
    const-string v0, "methodName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "args"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "callback"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onInterceptBackPressed()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onPause()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRemove()V
    .locals 0

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    return-void
.end method

.method public onUpdateView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 1

    .line 1
    const-string v0, "onViewChangeCallback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->parseCustomJson(Lcom/google/gson/JsonObject;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setMSrc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
