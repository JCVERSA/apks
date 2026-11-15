.class public final Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J4\u0010\u000b\u001a\u00020\u00072\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u00042\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "onFinalized",
        "",
        "onInitialized",
        "permit",
        "",
        "reportAdLog",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "tag",
        "athenaData",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "com.cloud.tmc.miniad"
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
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFinalized()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;->permit()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/security/Permission;

    return-object v0
.end method

.method public permit()Ljava/lang/Void;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final reportAdLog(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "tag"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "athenaData"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "athenaData"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-class v1, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "tag is empty"

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p4, :cond_0

    .line 29
    .line 30
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    invoke-static {p3}, Lcom/cloud/tmc/kernel/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "athenaData is empty"

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz p4, :cond_2

    .line 50
    .line 51
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :cond_3
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge$reportAdLog$gson$1;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge$reportAdLog$gson$1;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;

    .line 70
    .line 71
    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge$reportAdLog$_dataMap$1;

    .line 87
    .line 88
    invoke-direct {v1}, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge$reportAdLog$_dataMap$1;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Ljava/util/Map;

    .line 100
    .line 101
    new-instance v0, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v1, Lcom/cloud/tmc/integration/utils/BundleUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/BundleUtil;

    .line 107
    .line 108
    const-string v2, "_dataMap"

    .line 109
    .line 110
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, p3, v0}, Lcom/cloud/tmc/integration/utils/BundleUtil;->parse(Ljava/util/Map;Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    const-class p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 117
    .line 118
    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception p1

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    const/4 p1, 0x0

    .line 134
    :goto_0
    const-string v1, ""

    .line 135
    .line 136
    invoke-interface {p3, p1, p2, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    if-eqz p4, :cond_5

    .line 140
    .line 141
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/ad/bridge/AdAthenaBridge;->TAG:Ljava/lang/String;

    .line 146
    .line 147
    new-instance p3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v0, "reportAdLog  parse data fail: "

    .line 153
    .line 154
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    if-eqz p4, :cond_5

    .line 168
    .line 169
    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 170
    .line 171
    .line 172
    :cond_5
    :goto_2
    return-void
.end method
