.class public final Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;
.super Landroidx/work/CoroutineWorker;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0006\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ:\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0082@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\u0018H\u0096@\u00a2\u0006\u0004\u0008\u0019\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "workerParams",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "",
        "imagePath",
        "Lkotlin/Pair;",
        "x",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "y",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "imageUrl",
        "logId",
        "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;",
        "model",
        "tempBucket",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;",
        "w",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroidx/work/i$a;",
        "r",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "workerParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final w(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    .line 5
    const-class v3, Lqx/a;

    .line 6
    .line 7
    invoke-static {v3, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lqx/a;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    new-instance v3, Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 30
    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const-string v2, "0"

    .line 35
    .line 36
    :cond_1
    const-string v4, "uid"

    .line 37
    .line 38
    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContent()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v4, "content"

    .line 46
    .line 47
    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    new-instance v2, Lcom/google/gson/JsonArray;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p1, "imageUrl"

    .line 61
    .line 62
    invoke-virtual {v3, p1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    const-string p1, "email"

    .line 66
    .line 67
    const-string v2, ""

    .line 68
    .line 69
    invoke-virtual {v3, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->getWhole()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    const-string v2, "whatsApp"

    .line 83
    .line 84
    invoke-virtual {v3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    const-string p1, "pageName"

    .line 88
    .line 89
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getPageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v3, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getUgcVideoId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    const-string v2, "ugcVideoId"

    .line 103
    .line 104
    invoke-virtual {v3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getSubjectId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    const-string v2, "subjectId"

    .line 114
    .line 115
    invoke-virtual {v3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getTv()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->getSeason()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-array v4, v0, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v2, v4, v1

    .line 137
    .line 138
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v4, "%02d"

    .line 143
    .line 144
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string v5, "format(...)"

    .line 149
    .line 150
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->getEpisode()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-array v6, v0, [Ljava/lang/Object;

    .line 162
    .line 163
    aput-object p1, v6, v1

    .line 164
    .line 165
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v1, "S"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v1, "  E"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const-string v0, "season"

    .line 202
    .line 203
    invoke-virtual {v3, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    const-string p1, "logId"

    .line 207
    .line 208
    invoke-virtual {v3, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getSelectedId()Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_7

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    goto :goto_1

    .line 222
    :cond_7
    const/4 p1, -0x1

    .line 223
    :goto_1
    const-string p2, "label"

    .line 224
    .line 225
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v3, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 230
    .line 231
    .line 232
    const-string p1, "tempBucket"

    .line 233
    .line 234
    invoke-virtual {v3, p1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sget-object p1, Lmg/b;->a:Lmg/b$a;

    .line 238
    .line 239
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    const-string p3, "toString(...)"

    .line 244
    .line 245
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p2}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_8

    .line 253
    .line 254
    sget-object p2, Lkg/c;->e:Lkg/c$a;

    .line 255
    .line 256
    invoke-virtual {p2}, Lkg/c$a;->a()Lkg/c;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    const-class p3, Lmv/a;

    .line 261
    .line 262
    invoke-virtual {p2, p3}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    check-cast p2, Lmv/a;

    .line 267
    .line 268
    sget-object p3, Lgg/a;->a:Lgg/a$a;

    .line 269
    .line 270
    invoke-virtual {p3}, Lgg/a$a;->a()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p3

    .line 274
    invoke-interface {p2, p3, p1, p5}, Lmv/a;->c(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    return-object p1

    .line 279
    :cond_8
    new-instance p1, Ljava/lang/Error;

    .line 280
    .line 281
    const-string p2, "can not find feedback body"

    .line 282
    .line 283
    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p1
.end method

.method private final x(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Luu/c;->a:Luu/c;

    .line 11
    .line 12
    sget-object v2, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    .line 13
    .line 14
    new-instance v3, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$a;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$a;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-virtual {v1, p1, v2, v4, v3}, Luu/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLuu/a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-ne p1, v0, :cond_0

    .line 32
    .line 33
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object p1
.end method

.method private final y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/transsion/upload/log/UploadLoggerManager;->a:Lcom/transsion/upload/log/UploadLoggerManager;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/transsion/upload/log/UploadLoggerManager;->k(Luu/a;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    .line 1
    instance-of v0, p1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    .line 34
    .line 35
    const-string v7, "failure(...)"

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    const/4 v3, 0x3

    .line 39
    const/4 v4, 0x2

    .line 40
    const/4 v8, 0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    if-eq v1, v8, :cond_4

    .line 45
    .line 46
    if-eq v1, v4, :cond_3

    .line 47
    .line 48
    if-eq v1, v3, :cond_2

    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_2
    iget-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v3, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    iget-object v4, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 79
    .line 80
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_3
    iget-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 88
    .line 89
    iget-object v4, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 92
    .line 93
    iget-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    iget-object v10, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v10, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 100
    .line 101
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_4
    iget-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$4:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 109
    .line 110
    iget-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v9, Ljava/lang/String;

    .line 113
    .line 114
    iget-object v10, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 117
    .line 118
    iget-object v11, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 121
    .line 122
    iget-object v12, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v12, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 125
    .line 126
    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    .line 128
    .line 129
    move-object v13, v10

    .line 130
    move-object v10, v9

    .line 131
    move-object v9, v13

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/work/i;->g()Landroidx/work/d;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v1, "key_work_data"

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Landroidx/work/d;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-class v1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 147
    .line 148
    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 153
    .line 154
    if-nez p1, :cond_6

    .line 155
    .line 156
    invoke-static {}, Landroidx/work/i$a;->a()Landroidx/work/i$a;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object p1

    .line 164
    :cond_6
    :try_start_4
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 165
    .line 166
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 167
    .line 168
    .line 169
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 170
    .line 171
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getImagePath()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    if-eqz v10, :cond_9

    .line 179
    .line 180
    iput-object p1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v10, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$4:Ljava/lang/Object;

    .line 189
    .line 190
    iput v8, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    .line 191
    .line 192
    invoke-direct {p0, v10, v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->x(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    if-ne v11, v0, :cond_7

    .line 197
    .line 198
    return-object v0

    .line 199
    :cond_7
    move-object v12, p1

    .line 200
    move-object p1, v11

    .line 201
    move-object v11, v1

    .line 202
    :goto_2
    check-cast p1, Lkotlin/Pair;

    .line 203
    .line 204
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v12, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v11, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 217
    .line 218
    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$4:Ljava/lang/Object;

    .line 219
    .line 220
    iput v4, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    .line 221
    .line 222
    invoke-direct {p0, v10, v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->x(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    if-ne p1, v0, :cond_8

    .line 227
    .line 228
    return-object v0

    .line 229
    :cond_8
    move-object v1, v9

    .line 230
    move-object v4, v1

    .line 231
    move-object v9, v11

    .line 232
    move-object v10, v12

    .line 233
    :goto_3
    check-cast p1, Lkotlin/Pair;

    .line 234
    .line 235
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 240
    .line 241
    move-object v1, v4

    .line 242
    move-object p1, v10

    .line 243
    goto :goto_4

    .line 244
    :cond_9
    move-object v13, v9

    .line 245
    move-object v9, v1

    .line 246
    move-object v1, v13

    .line 247
    :goto_4
    iput-object p1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 248
    .line 249
    iput-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 250
    .line 251
    iput-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 252
    .line 253
    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 254
    .line 255
    iput v3, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    .line 256
    .line 257
    invoke-direct {p0, v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-ne v3, v0, :cond_a

    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_a
    move-object v4, p1

    .line 265
    move-object p1, v3

    .line 266
    move-object v3, v9

    .line 267
    :goto_5
    check-cast p1, Ljava/lang/String;

    .line 268
    .line 269
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v3, Ljava/lang/String;

    .line 272
    .line 273
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 274
    .line 275
    move-object v9, v1

    .line 276
    check-cast v9, Ljava/lang/String;

    .line 277
    .line 278
    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 279
    .line 280
    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 281
    .line 282
    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 283
    .line 284
    iput v2, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    .line 285
    .line 286
    move-object v1, p0

    .line 287
    move-object v2, v3

    .line 288
    move-object v3, p1

    .line 289
    move-object v5, v9

    .line 290
    invoke-direct/range {v1 .. v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->w(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    if-ne p1, v0, :cond_b

    .line 295
    .line 296
    return-object v0

    .line 297
    :cond_b
    :goto_6
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 298
    .line 299
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;

    .line 304
    .line 305
    if-eqz p1, :cond_c

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;->getResult()Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-ne p1, v8, :cond_c

    .line 312
    .line 313
    invoke-static {}, Landroidx/work/i$a;->c()Landroidx/work/i$a;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    const-string v0, "success(...)"

    .line 318
    .line 319
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 320
    .line 321
    .line 322
    return-object p1

    .line 323
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    .line 325
    .line 326
    :cond_c
    invoke-static {}, Landroidx/work/i$a;->a()Landroidx/work/i$a;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-object p1
.end method
