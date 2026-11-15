.class public abstract Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u0011\u001a\u00020\u0005J\u0008\u0010\u0012\u001a\u00020\u0005H&J\u0008\u0010\u0013\u001a\u00020\u0014H&J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u0016\u001a\u00020\u0005H\u0002J\u0008\u0010\u0017\u001a\u00020\u0005H\u0002J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0008\u0010\u001f\u001a\u00020\u000bH&J\u0016\u0010 \u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;",
        "Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;",
        "context",
        "Landroid/content/Context;",
        "renderId",
        "",
        "viewId",
        "render",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V",
        "isFixed",
        "",
        "()Z",
        "setFixed",
        "(Z)V",
        "weakRender",
        "Ljava/lang/ref/WeakReference;",
        "getComponentId",
        "getComponentName",
        "getComponentView",
        "Landroid/view/View;",
        "getIRender",
        "getNativeRenderId",
        "getNativeViewId",
        "onEventMessage",
        "",
        "methodName",
        "args",
        "Lcom/google/gson/JsonObject;",
        "callback",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;",
        "onInterceptBackPressed",
        "postEventMessage",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private isFixed:Z

.field private final renderId:Ljava/lang/String;

.field private final viewId:Ljava/lang/String;

.field private final weakRender:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->context:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->renderId:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->viewId:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->weakRender:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    return-void
.end method

.method private final getNativeRenderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->renderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final getNativeViewId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->viewId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final getComponentId()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x5f

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getNativeViewId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public abstract getComponentName()Ljava/lang/String;
.end method

.method public abstract getComponentView()Landroid/view/View;
.end method

.method public final getIRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->weakRender:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    .line 8
    .line 9
    return-object v0
.end method

.method public final isFixed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->isFixed:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract onEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;)V
.end method

.method public abstract onInterceptBackPressed()Z
.end method

.method public final postEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 5

    .line 1
    const-string v0, "methodName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "args"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "abilityName"

    .line 16
    .line 17
    const-string v4, "DispatchNativeEvent"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "componentId"

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "renderId"

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getNativeRenderId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "type"

    .line 48
    .line 49
    const-string v2, "nativeCall"

    .line 50
    .line 51
    invoke-virtual {p1, v0, v2}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v2, "callbackId"

    .line 60
    .line 61
    invoke-virtual {p1, v2, v0}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v1, p2}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "create()\n            .ad\u2026rgs)\n            .build()"

    .line 74
    .line 75
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p2, v2, v0}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const-string v0, "dataJson"

    .line 91
    .line 92
    invoke-virtual {p2, v0, p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string p2, "create()\n            .ad\u2026son)\n            .build()"

    .line 101
    .line 102
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getIRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    const-string v0, "message"

    .line 114
    .line 115
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const-string v0, "call"

    .line 120
    .line 121
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getIRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    if-eqz p2, :cond_0

    .line 134
    .line 135
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    if-eqz p2, :cond_0

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const/4 v0, 0x0

    .line 146
    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    .line 147
    .line 148
    .line 149
    :cond_0
    return-void
.end method

.method public final setFixed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->isFixed:Z

    .line 2
    .line 3
    return-void
.end method
