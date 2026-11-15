.class public final Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;
.super Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;,
        Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 12\u00020\u0001:\u000212B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0019\u001a\u00020\u0005H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u001dH\u0016J \u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u00020\u001dH\u0016J\u0008\u0010+\u001a\u00020\u001dH\u0016J\u0008\u0010,\u001a\u00020\u001dH\u0016J\u0008\u0010-\u001a\u00020\u001dH\u0016J\u001a\u0010.\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u000e\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u001fR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u000e\u001a\u00060\u000fR\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u00063"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;",
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
        "Lcom/cloud/tmc/integration/ui/native/NativeTabView;",
        "getFrameLayout",
        "()Lcom/cloud/tmc/integration/ui/native/NativeTabView;",
        "listener",
        "Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;",
        "getListener",
        "()Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;",
        "mId",
        "nativeTabBean",
        "Lcom/cloud/tmc/integration/ui/data/NativeTabBean;",
        "getNativeTabBean",
        "()Lcom/cloud/tmc/integration/ui/data/NativeTabBean;",
        "setNativeTabBean",
        "(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V",
        "getComponentName",
        "getComponentView",
        "Landroid/view/View;",
        "onAddView",
        "",
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
        "json",
        "Companion",
        "MiniNativeTabListener",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;

.field public static final TAG:Ljava/lang/String; = "NativeTabComponent"


# instance fields
.field private final frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

.field private final listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

.field private mId:Ljava/lang/String;

.field private nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->Companion:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;

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
    iput-object p3, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->mId:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p2, Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-direct {p2, p1, p3}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    .line 33
    .line 34
    new-instance p1, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    .line 40
    .line 41
    new-instance p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    .line 47
    .line 48
    return-void
.end method

.method public static final synthetic access$getMId$p(Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->mId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "native-tab"

    .line 2
    .line 3
    return-object v0
.end method

.method public getComponentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFrameLayout()Lcom/cloud/tmc/integration/ui/native/NativeTabView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getListener()Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNativeTabBean()Lcom/cloud/tmc/integration/ui/data/NativeTabBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAddView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 2

    .line 1
    const-string v0, "onViewChangeCallback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->addNativeTabListener(Lcom/cloud/tmc/integration/ui/native/INativeTabListener;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->parseCustomJson(Lcom/google/gson/JsonObject;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onDestory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->removeNativeTabListener(Lcom/cloud/tmc/integration/ui/native/INativeTabListener;)V

    .line 6
    .line 7
    .line 8
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
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p3, "switchTab"

    .line 17
    .line 18
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "index"

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->switchTab(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
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
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->parseCustomJson(Lcom/google/gson/JsonObject;)V

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

.method public final parseCustomJson(Lcom/google/gson/JsonObject;)V
    .locals 5

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    const-string v1, "errMsg"

    .line 4
    .line 5
    const-string v2, "NativeTabComponent"

    .line 6
    .line 7
    const-string v3, "json"

    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v3, "json.toString()"

    .line 17
    .line 18
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$parseCustomJson$tabBar$1;

    .line 22
    .line 23
    invoke-direct {v3}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$parseCustomJson$tabBar$1;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "object :\n               \u2026<NativeTabBean>() {}.type"

    .line 31
    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    const-string v3, "tabBarConfig json parse error"

    .line 44
    .line 45
    invoke-static {v2, v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "parse Json error, please check the config: T10002"

    .line 54
    .line 55
    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    .line 59
    .line 60
    invoke-virtual {v3, v0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;->onTabEvent(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    .line 65
    .line 66
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    .line 77
    .line 78
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->setTabStyle(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    new-instance v3, Lcom/google/gson/JsonObject;

    .line 84
    .line 85
    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v4, "Parameter error: T10001"

    .line 89
    .line 90
    invoke-virtual {v3, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    .line 94
    .line 95
    invoke-virtual {v1, v0, v3}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;->onTabEvent(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    :goto_1
    return-void
.end method

.method public final setNativeTabBean(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    .line 7
    .line 8
    return-void
.end method
