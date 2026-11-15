.class public final Lcom/cloud/hisavana/abtestkit/ABTestKit;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ-\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0003\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/hisavana/abtestkit/ABTestKit;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;",
        "config",
        "",
        "init",
        "(Landroid/content/Context;Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V",
        "",
        "interval",
        "updateHttpRequestTimeInterval",
        "(J)V",
        "layerId",
        "localRequestInterval",
        "",
        "layerSwitchStatus",
        "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;",
        "getABTestVariant",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;",
        "deleteTable",
        "abtestkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/hisavana/abtestkit/ABTestKit;

.field public static a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/abtestkit/ABTestKit;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/abtestkit/ABTestKit;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->INSTANCE:Lcom/cloud/hisavana/abtestkit/ABTestKit;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final deleteTable()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lx6/e;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final getABTestVariant(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    if-eqz p2, :cond_d

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    const-string v2, "OPEN"

    .line 26
    .line 27
    invoke-static {p2, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_a

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->getHttpRequestTimeInterval()Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const-wide/32 p1, 0x3f480

    .line 50
    .line 51
    .line 52
    :goto_1
    const/16 v2, 0x3e8

    .line 53
    .line 54
    int-to-long v2, v2

    .line 55
    mul-long/2addr p1, v2

    .line 56
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {v2, v3, p1, p2, v0}, Lx6/i;->a(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lx6/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    sget-object p1, Lx6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Lx6/z;->getInfo()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v0, p2

    .line 82
    :goto_2
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_6

    .line 89
    .line 90
    :cond_5
    sget-object v0, Lx6/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    new-instance p1, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    .line 103
    .line 104
    invoke-direct {p1, p2, v1, p2}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    invoke-virtual {p1, v1, v2}, Lx6/z;->setLayerId(J)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v1

    .line 118
    invoke-virtual {p1, v1, v2}, Lx6/z;->setRequestTime(J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    .line 122
    .line 123
    .line 124
    :cond_6
    const-string p0, "ADSDK"

    .line 125
    .line 126
    const/4 v0, 0x3

    .line 127
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    const-string v2, "ABTEST"

    .line 132
    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v4, "ABMemoryCache queryMemoryCacheForLayerId, result = "

    .line 142
    .line 143
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    if-eqz p1, :cond_8

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->getAbLayerInfo()Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    :cond_8
    invoke-static {p2}, Lx6/g;->a(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_9

    .line 171
    .line 172
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v0, "ABChecker check, state = "

    .line 179
    .line 180
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p0, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    move-object p0, p1

    .line 194
    goto :goto_4

    .line 195
    :cond_a
    const-string p0, "PUSH_ALL"

    .line 196
    .line 197
    invoke-static {p2, p0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    if-eqz p0, :cond_b

    .line 202
    .line 203
    sget-object p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;->INSTANCE:Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$PushAll;

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_b
    const-string p0, "CLOSED"

    .line 207
    .line 208
    invoke-static {p2, p0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-eqz p0, :cond_c

    .line 213
    .line 214
    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    .line 215
    .line 216
    const/4 p1, 0x7

    .line 217
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_c
    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    .line 222
    .line 223
    const/16 p1, 0x9

    .line 224
    .line 225
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_d
    :goto_3
    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    .line 230
    .line 231
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    .line 232
    .line 233
    .line 234
    :goto_4
    return-object p0
.end method

.method public static final init(Landroid/content/Context;Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->INSTANCE:Lcom/cloud/hisavana/abtestkit/ABTestKit;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sput-object p1, Lcom/cloud/hisavana/abtestkit/ABTestKit;->a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 22
    .line 23
    sget-object p0, Lx6/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->getInitCompleteListener()Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lx6/e;->g(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static final updateHttpRequestTimeInterval(J)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/hisavana/abtestkit/ABTestKit;->a:Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->setHttpRequestTimeInterval(Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
