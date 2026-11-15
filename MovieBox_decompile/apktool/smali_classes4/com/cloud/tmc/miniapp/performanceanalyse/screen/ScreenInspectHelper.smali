.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;
    }
.end annotation


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field public final OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0Oo:J

.field public OooO0o0:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    .line 17
    .line 18
    const-wide/16 v0, 0x3e8

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0Oo:J

    .line 21
    .line 22
    return-void
.end method

.method public static final access$checkWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-string v1, "renderStatus"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v0, v3, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v0, v2, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    iput v2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 33
    .line 34
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    move-object v0, v2

    .line 45
    :goto_2
    new-instance v3, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;

    .line 46
    .line 47
    invoke-direct {v3, p0, p1, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 53
    .line 54
    if-eqz p0, :cond_5

    .line 55
    .line 56
    invoke-interface {p0, v1, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    iget-object p0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 60
    .line 61
    if-eqz p0, :cond_6

    .line 62
    .line 63
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "abilityName"

    .line 74
    .line 75
    const-string v3, "DispatchEvent"

    .line 76
    .line 77
    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v3, "callbackId"

    .line 89
    .line 90
    invoke-virtual {p1, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "eventName"

    .line 94
    .line 95
    const-string v3, "checkWhiteScreen"

    .line 96
    .line 97
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "{}"

    .line 101
    .line 102
    const-string v3, "dataJson"

    .line 103
    .line 104
    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v3, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "message"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v1, "call"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-eqz p0, :cond_6

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {p0, p1, v2}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    :goto_3
    return-void
.end method

.method public static final access$connectRender(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;

    .line 5
    .line 6
    invoke-direct {v0, p2, p0, p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string p1, "connectionRender"

    .line 16
    .line 17
    invoke-interface {p0, p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "abilityName"

    .line 35
    .line 36
    const-string v1, "DispatchEvent"

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "callbackId"

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "eventName"

    .line 55
    .line 56
    const-string v1, "connection"

    .line 57
    .line 58
    invoke-virtual {p2, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "{}"

    .line 62
    .line 63
    const-string v1, "dataJson"

    .line 64
    .line 65
    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string v0, "message"

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-string v0, "call"

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_1

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const/4 p2, 0x0

    .line 102
    invoke-interface {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method

.method public static final access$connectWorker(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO;

    .line 5
    .line 6
    invoke-direct {v0, p1, p0, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string p2, "connectionWorker"

    .line 16
    .line 17
    invoke-interface {p0, p2, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    new-instance p1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance p2, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v7, Lcom/google/gson/JsonObject;

    .line 35
    .line 36
    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v0, "eventName"

    .line 40
    .line 41
    const-string v1, "connection"

    .line 42
    .line 43
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "dataJson"

    .line 50
    .line 51
    const-string v1, "{}"

    .line 52
    .line 53
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "abilityName"

    .line 60
    .line 61
    const-string v2, "DispatchEvent"

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string v1, "target"

    .line 67
    .line 68
    const-string v2, "worker"

    .line 69
    .line 70
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v1, "source"

    .line 74
    .line 75
    const-string v2, "native"

    .line 76
    .line 77
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "time"

    .line 89
    .line 90
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v1, "callbackId"

    .line 94
    .line 95
    const-string v2, ""

    .line 96
    .line 97
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    new-instance p2, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    const-string v3, "native"

    .line 110
    .line 111
    const-string v6, ""

    .line 112
    .line 113
    const-string v1, "DispatchEvent"

    .line 114
    .line 115
    const-string v2, "worker"

    .line 116
    .line 117
    move-object v0, p2

    .line 118
    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/google/gson/Gson;

    .line 122
    .line 123
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const/4 v1, 0x1

    .line 143
    const/4 v2, 0x0

    .line 144
    if-ne v0, v1, :cond_1

    .line 145
    .line 146
    invoke-interface {p0, p1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/JSI;->workerType()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    const/4 v0, 0x3

    .line 155
    if-ne p1, v0, :cond_2

    .line 156
    .line 157
    invoke-interface {p0, p2, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 158
    .line 159
    .line 160
    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic access$getAPP_MAP$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCheckNowDelay$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0Oo:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$reportAthenaWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Ljava/lang/String;IZLjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o(Ljava/lang/String;IZLjava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v2, :cond_0

    const-string v3, "connectionRender"

    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 4
    :cond_0
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 5
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v2, :cond_1

    const-string v3, "renderStatus"

    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 7
    :cond_1
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 8
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 10
    :cond_2
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    :cond_3
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;IZLjava/lang/Long;)V
    .locals 2

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, "white_screen_onPageReady"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "white_screen"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "white_screen_stepMillis"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 16
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHECK_WHITESCREEN:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string p4, ""

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public appDestroy(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 26
    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    iput-object v0, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iget-object v4, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 36
    .line 37
    const-string v5, "connectionWorker"

    .line 38
    .line 39
    invoke-interface {v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iput-object v0, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 43
    .line 44
    iget-object v0, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v3, "pages.keys()"

    .line 51
    .line 52
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y(Ljava/util/Enumeration;)Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0, p1, v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->destroy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object p1, v2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_2
    return-void
.end method

.method public checkNow(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v1

    .line 38
    :goto_0
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v2, 0x1

    .line 42
    iput-boolean v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    .line 43
    .line 44
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v5, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;

    .line 53
    .line 54
    invoke-direct {v5, p0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x3

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public destroy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    if-eqz p2, :cond_5

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 35
    .line 36
    if-eqz v1, :cond_5

    .line 37
    .line 38
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 47
    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    iget-boolean v1, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 56
    .line 57
    iget-boolean v2, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    .line 58
    .line 59
    iget-object v3, p2, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_3
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o(Ljava/lang/String;IZLjava/lang/Long;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_1
    return-void
.end method

.method public initConfig(FLjava/lang/Long;[I)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->f([I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0Oo:J

    .line 24
    .line 25
    :cond_1
    iput p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0o0:F

    .line 26
    .line 27
    return-void
.end method

.method public registerRender(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 4

    .line 1
    const-string v0, "render"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    check-cast v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v1, v3

    .line 49
    :goto_0
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput p1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 67
    .line 68
    iput p1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getCurrentUri()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "\u6ce8\u518c\u9875\u9762:"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "\u7684\u5e94\u7528("

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, ")\u4e0d\u5b58\u5728"

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v0, "miniapp"

    .line 110
    .line 111
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    return-void
.end method

.method public registerWorker(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/worker/JSI;)V
    .locals 2

    .line 1
    const-string v0, "worker"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iput-object p2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    iput p2, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "\u6ce8\u518cworker id:"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, "\u7684\u5e94\u7528("

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ")\u4e0d\u5b58\u5728"

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "miniapp"

    .line 81
    .line 82
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    return-void
.end method

.method public start(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v4, v3

    .line 16
    :goto_0
    new-instance v5, Ljava/security/SecureRandom;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    iget v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0o0:F

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    cmpg-float v8, v7, v8

    .line 29
    .line 30
    const/4 v11, 0x1

    .line 31
    if-nez v8, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    float-to-double v7, v7

    .line 35
    cmpg-double v5, v5, v7

    .line 36
    .line 37
    if-gtz v5, :cond_2

    .line 38
    .line 39
    move v5, v11

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 42
    :goto_2
    if-eqz v4, :cond_a

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_3

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_3
    if-eqz v2, :cond_a

    .line 53
    .line 54
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_4

    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_4
    if-nez v5, :cond_5

    .line 63
    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_5
    const-class v5, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 67
    .line 68
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 73
    .line 74
    invoke-interface {v5, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 79
    .line 80
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    move-object v3, v1

    .line 107
    check-cast v3, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 108
    .line 109
    :cond_6
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO00o(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    .line 115
    new-instance v3, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 116
    .line 117
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 120
    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v10, 0x0

    .line 124
    const/4 v8, 0x0

    .line 125
    move-object v5, v3

    .line 126
    move-object v6, v4

    .line 127
    invoke-direct/range {v5 .. v10}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;-><init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/kernel/worker/JSI;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :goto_3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const-wide/16 v5, 0x0

    .line 140
    .line 141
    if-lez v1, :cond_8

    .line 142
    .line 143
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    sub-int/2addr v3, v11

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v7

    .line 160
    const-wide/16 v9, 0x3e8

    .line 161
    .line 162
    mul-long/2addr v7, v9

    .line 163
    goto :goto_4

    .line 164
    :cond_8
    move-wide v7, v5

    .line 165
    :goto_4
    cmp-long v1, v7, v5

    .line 166
    .line 167
    if-gez v1, :cond_9

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_9
    move-wide v5, v7

    .line 171
    :goto_5
    const/16 v1, 0x3e8

    .line 172
    .line 173
    int-to-long v7, v1

    .line 174
    add-long v10, v5, v7

    .line 175
    .line 176
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 177
    .line 178
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 183
    .line 184
    if-eqz v1, :cond_a

    .line 185
    .line 186
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    .line 188
    new-instance v4, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 189
    .line 190
    const/16 v20, 0x0

    .line 191
    .line 192
    const/16 v21, 0xff

    .line 193
    .line 194
    const/4 v13, 0x0

    .line 195
    const/4 v14, 0x0

    .line 196
    const/4 v15, 0x0

    .line 197
    const/16 v16, 0x0

    .line 198
    .line 199
    const/16 v17, 0x0

    .line 200
    .line 201
    const/16 v18, 0x0

    .line 202
    .line 203
    const/16 v19, 0x0

    .line 204
    .line 205
    move-object v12, v4

    .line 206
    invoke-direct/range {v12 .. v21}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;-><init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZI)V

    .line 207
    .line 208
    .line 209
    new-instance v5, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 210
    .line 211
    iget-object v14, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->OooO0OO:Ljava/util/List;

    .line 212
    .line 213
    new-instance v15, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;

    .line 214
    .line 215
    invoke-direct {v15, v0, v1, v4}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 216
    .line 217
    .line 218
    const-wide/16 v12, 0x3e8

    .line 219
    .line 220
    move-object v9, v5

    .line 221
    invoke-direct/range {v9 .. v15}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;-><init>(JJLjava/util/List;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 225
    .line 226
    .line 227
    iput-object v5, v4, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 228
    .line 229
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 230
    .line 231
    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 236
    .line 237
    :cond_a
    :goto_6
    return-void
.end method
