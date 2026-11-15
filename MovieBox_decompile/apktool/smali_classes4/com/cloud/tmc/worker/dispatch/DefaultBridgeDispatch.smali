.class public final Lcom/cloud/tmc/worker/dispatch/DefaultBridgeDispatch;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0096\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/dispatch/DefaultBridgeDispatch;",
        "Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;",
        "()V",
        "invoke",
        "",
        "engineRouter",
        "Lcom/cloud/tmc/kernel/engine/EngineRouter;",
        "workerId",
        "",
        "renderId",
        "result",
        "com.cloud.tmc.render"
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public invoke(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "DispatchEvent"

    .line 2
    .line 3
    const-string v1, "Api"

    .line 4
    .line 5
    const-string v2, "LifeCycle"

    .line 6
    .line 7
    const-string v3, "TmcRender"

    .line 8
    .line 9
    const-string v4, "workerId"

    .line 10
    .line 11
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "renderId"

    .line 15
    .line 16
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "result"

    .line 20
    .line 21
    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    const-string v4, "__TmcRenderToWorkerMsg:"

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-static {p4, v4, v7, v5, v6}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string v6, "__TmcRenderToWorkerMsg:"

    .line 37
    .line 38
    const-string v7, ""

    .line 39
    .line 40
    const/4 v9, 0x4

    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v5, p4

    .line 44
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    const-string v4, "miniapp"

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v6, "renderSendToNative = "

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v4, Lcom/google/gson/Gson;

    .line 71
    .line 72
    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 73
    .line 74
    .line 75
    const-class v5, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 76
    .line 77
    invoke-virtual {v4, p4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->getAbilityName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const-string v6, "DispatchNativeComponent"

    .line 94
    .line 95
    const-class v7, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    .line 96
    .line 97
    sparse-switch v5, :sswitch_data_0

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :sswitch_0
    :try_start_1
    const-string p1, "debugRefresh"

    .line 103
    .line 104
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_1

    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/kernel/debug/a;->b()V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :catch_0
    move-exception p1

    .line 118
    goto :goto_0

    .line 119
    :sswitch_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    .line 134
    .line 135
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;->handleMsgFromRender(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :sswitch_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :sswitch_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_3

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    invoke-static {v3, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    .line 161
    .line 162
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;->handleMsgFromRender(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :sswitch_4
    const-string v0, "DispatchNativeEvent"

    .line 167
    .line 168
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_4

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    invoke-static {v3, v6}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    .line 183
    .line 184
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;->handleMsgFromRender(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :sswitch_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_5

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    .line 203
    .line 204
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;->handleMsgFromRender(Lcom/cloud/tmc/kernel/engine/EngineRouter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string p3, "DefaultBridgeDispatch e = "

    .line 214
    .line 215
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {v3, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    :goto_1
    return-void

    .line 229
    :sswitch_data_0
    .sparse-switch
        -0x4ffcd5e0 -> :sswitch_5
        -0x46f2dc37 -> :sswitch_4
        0x101fa -> :sswitch_3
        0xdab9eac -> :sswitch_2
        0x63aa172a -> :sswitch_1
        0x76876108 -> :sswitch_0
    .end sparse-switch
.end method
