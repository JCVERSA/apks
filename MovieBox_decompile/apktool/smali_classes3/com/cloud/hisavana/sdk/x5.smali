.class public final Lcom/cloud/hisavana/sdk/x5;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/x5;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/x5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/x5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/x5;->a:Lcom/cloud/hisavana/sdk/x5;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    sput v0, Lcom/cloud/hisavana/sdk/x5;->b:I

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget v0, Lcom/cloud/hisavana/sdk/x5;->b:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "client_ab_network"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_a

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getLayerId()Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getSwitch()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getReqInterval()Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v0, v3}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->getABTestVariant(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isOpen()Z

    .line 35
    .line 36
    .line 37
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    const-string v3, "bucketV2"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v2, :cond_7

    .line 42
    .line 43
    :try_start_2
    instance-of v2, v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v0, v1

    .line 51
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;->getVariant()Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v0, v1

    .line 59
    :goto_1
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getInfo()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    const-string v1, "netGroupBucketId"

    .line 68
    .line 69
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    :cond_3
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    :cond_4
    packed-switch v4, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :pswitch_0
    sput v4, Lcom/cloud/hisavana/sdk/x5;->b:I

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getSubExpId()Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    const-wide/16 v0, 0x0

    .line 108
    .line 109
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v4, "NetGroup gets the groupBucketId in the api = "

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    sget v4, Lcom/cloud/hisavana/sdk/x5;->b:I

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v4, ", save it in the cache"

    .line 125
    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/g1;->q()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/cloud/hisavana/net/NetGroup;->a(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_6

    .line 149
    .line 150
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    sget v4, Lcom/cloud/hisavana/sdk/x5;->b:I

    .line 155
    .line 156
    invoke-virtual {v2, v3, v4}, Ll7/a;->p(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const-string v3, "bucketVarId"

    .line 164
    .line 165
    invoke-virtual {v2, v3, v0, v1}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v1, "url is not in the white list, so it will not save groupBucketId in the cache. url = "

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isClosed()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_8

    .line 195
    .line 196
    sput v4, Lcom/cloud/hisavana/sdk/x5;->b:I

    .line 197
    .line 198
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0, v3, v4}, Ll7/a;->p(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    const-string v0, "network abtest is closed"

    .line 206
    .line 207
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isPushAll()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    const/16 v0, 0x7e0

    .line 218
    .line 219
    sput v0, Lcom/cloud/hisavana/sdk/x5;->b:I

    .line 220
    .line 221
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1, v3, v0}, Ll7/a;->p(Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    const-string v0, "network abtest is push all"

    .line 229
    .line 230
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    .line 232
    .line 233
    :catchall_0
    :cond_9
    :goto_3
    :try_start_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :catchall_1
    move-exception v0

    .line 237
    goto :goto_5

    .line 238
    :cond_a
    :goto_4
    if-nez v1, :cond_b

    .line 239
    .line 240
    const-string v0, "network abtest config data is null"

    .line 241
    .line 242
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 246
    .line 247
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 252
    .line 253
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    :goto_6
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x7dd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
