.class public final Lcom/cloud/config/bean/ConditionInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cloud/config/bean/ConditionInfo;",
        "",
        "conditionParams",
        "",
        "Lcom/cloud/config/bean/ConditionParam;",
        "defaultCacheFileUrl",
        "",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "_conditionParam",
        "get_conditionParam",
        "()Lcom/cloud/config/bean/ConditionParam;",
        "set_conditionParam",
        "(Lcom/cloud/config/bean/ConditionParam;)V",
        "getConditionParams",
        "()Ljava/util/List;",
        "getDefaultCacheFileUrl",
        "()Ljava/lang/String;",
        "matchCacheUrl",
        "getMatchCacheUrl",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _conditionParam:Lcom/cloud/config/bean/ConditionParam;

.field private final conditionParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultCacheFileUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/config/bean/ConditionInfo;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/config/bean/ConditionInfo;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/config/bean/ConditionInfo;->copy(Ljava/util/List;Ljava/lang/String;)Lcom/cloud/config/bean/ConditionInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;)Lcom/cloud/config/bean/ConditionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cloud/config/bean/ConditionInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/config/bean/ConditionInfo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/cloud/config/bean/ConditionInfo;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/config/bean/ConditionInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/config/bean/ConditionInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getConditionParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDefaultCacheFileUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMatchCacheUrl()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    if-eqz v2, :cond_21

    .line 15
    .line 16
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_21

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/cloud/config/bean/ConditionParam;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    .line 29
    .line 30
    .line 31
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const-string v5, "*"

    .line 33
    .line 34
    const-string v6, ""

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getMcc()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    check-cast v4, Ljava/lang/Iterable;

    .line 47
    .line 48
    instance-of v7, v4, Ljava/util/Collection;

    .line 49
    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    move-object v7, v4

    .line 53
    check-cast v7, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    goto/16 :goto_c

    .line 62
    .line 63
    :catchall_0
    move-exception v2

    .line 64
    goto/16 :goto_d

    .line 65
    .line 66
    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_20

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_5

    .line 87
    .line 88
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-nez v8, :cond_5

    .line 93
    .line 94
    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    .line 95
    .line 96
    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getMcc()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_4

    .line 105
    .line 106
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-nez v4, :cond_6

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getOsVersion()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-nez v4, :cond_7

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    check-cast v4, Ljava/lang/Iterable;

    .line 121
    .line 122
    instance-of v7, v4, Ljava/util/Collection;

    .line 123
    .line 124
    if-eqz v7, :cond_8

    .line 125
    .line 126
    move-object v7, v4

    .line 127
    check-cast v7, Ljava/util/Collection;

    .line 128
    .line 129
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_8

    .line 134
    .line 135
    goto/16 :goto_b

    .line 136
    .line 137
    :cond_8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_1f

    .line 146
    .line 147
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-nez v8, :cond_a

    .line 158
    .line 159
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-nez v8, :cond_a

    .line 164
    .line 165
    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    .line 166
    .line 167
    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getVersion()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_9

    .line 176
    .line 177
    :cond_a
    :goto_3
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-nez v4, :cond_b

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_b
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getPhoneModel()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    if-nez v4, :cond_c

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_c
    check-cast v4, Ljava/lang/Iterable;

    .line 192
    .line 193
    instance-of v7, v4, Ljava/util/Collection;

    .line 194
    .line 195
    if-eqz v7, :cond_d

    .line 196
    .line 197
    move-object v7, v4

    .line 198
    check-cast v7, Ljava/util/Collection;

    .line 199
    .line 200
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_d

    .line 205
    .line 206
    goto/16 :goto_a

    .line 207
    .line 208
    :cond_d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_1e

    .line 217
    .line 218
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    check-cast v7, Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-nez v8, :cond_f

    .line 229
    .line 230
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-nez v8, :cond_f

    .line 235
    .line 236
    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    .line 237
    .line 238
    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getModel()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_e

    .line 247
    .line 248
    :cond_f
    :goto_4
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    if-nez v4, :cond_10

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_10
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getPhoneBrand()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    if-nez v4, :cond_11

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_11
    check-cast v4, Ljava/lang/Iterable;

    .line 263
    .line 264
    instance-of v7, v4, Ljava/util/Collection;

    .line 265
    .line 266
    if-eqz v7, :cond_12

    .line 267
    .line 268
    move-object v7, v4

    .line 269
    check-cast v7, Ljava/util/Collection;

    .line 270
    .line 271
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-eqz v7, :cond_12

    .line 276
    .line 277
    goto/16 :goto_9

    .line 278
    .line 279
    :cond_12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_1d

    .line 288
    .line 289
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    check-cast v7, Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-nez v8, :cond_14

    .line 300
    .line 301
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-nez v8, :cond_14

    .line 306
    .line 307
    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    .line 308
    .line 309
    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getBrand()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-eqz v7, :cond_13

    .line 318
    .line 319
    :cond_14
    :goto_5
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    if-nez v4, :cond_15

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_15
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getPhoneLanguage()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    if-nez v4, :cond_16

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_16
    check-cast v4, Ljava/lang/Iterable;

    .line 334
    .line 335
    instance-of v7, v4, Ljava/util/Collection;

    .line 336
    .line 337
    if-eqz v7, :cond_17

    .line 338
    .line 339
    move-object v7, v4

    .line 340
    check-cast v7, Ljava/util/Collection;

    .line 341
    .line 342
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-eqz v7, :cond_17

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_17
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    if-eqz v7, :cond_1c

    .line 358
    .line 359
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    check-cast v7, Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    if-nez v8, :cond_19

    .line 370
    .line 371
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    if-nez v8, :cond_19

    .line 376
    .line 377
    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    .line 378
    .line 379
    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getSystemLanguage()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-eqz v7, :cond_18

    .line 388
    .line 389
    :cond_19
    :goto_6
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getShuntInfo()Lcom/cloud/config/bean/ShuntInfo;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    if-nez v2, :cond_1a

    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_1a
    invoke-virtual {v2}, Lcom/cloud/config/bean/ShuntInfo;->isShuntOpen()Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    const/4 v4, 0x1

    .line 401
    if-ne v2, v4, :cond_1b

    .line 402
    .line 403
    iput-object v3, p0, Lcom/cloud/config/bean/ConditionInfo;->_conditionParam:Lcom/cloud/config/bean/ConditionParam;

    .line 404
    .line 405
    const-string v0, "shuntopen"

    .line 406
    .line 407
    return-object v0

    .line 408
    :cond_1b
    :goto_7
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getCacheFileUrl()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    return-object v0

    .line 413
    :cond_1c
    :goto_8
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 414
    .line 415
    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    const-string v4, "CloudConfigResponse --> phoneLanguage\u4e0d\u5339\u914d"

    .line 420
    .line 421
    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :cond_1d
    :goto_9
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 427
    .line 428
    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    const-string v4, "CloudConfigResponse --> phoneBrand\u4e0d\u5339\u914d"

    .line 433
    .line 434
    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :cond_1e
    :goto_a
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 440
    .line 441
    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    const-string v4, "CloudConfigResponse --> phoneModel\u4e0d\u5339\u914d"

    .line 446
    .line 447
    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_1

    .line 451
    .line 452
    :cond_1f
    :goto_b
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 453
    .line 454
    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    const-string v4, "CloudConfigResponse --> osVersion\u4e0d\u5339\u914d"

    .line 459
    .line 460
    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_1

    .line 464
    .line 465
    :cond_20
    :goto_c
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 466
    .line 467
    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    const-string v4, "CloudConfigResponse --> mcc\u4e0d\u5339\u914d"

    .line 472
    .line 473
    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_1

    .line 477
    .line 478
    :cond_21
    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    .line 480
    return-object v0

    .line 481
    :goto_d
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 482
    .line 483
    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {v3, v0, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    return-object v1
.end method

.method public final get_conditionParam()Lcom/cloud/config/bean/ConditionParam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->_conditionParam:Lcom/cloud/config/bean/ConditionParam;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public final set_conditionParam(Lcom/cloud/config/bean/ConditionParam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/config/bean/ConditionInfo;->_conditionParam:Lcom/cloud/config/bean/ConditionParam;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ConditionInfo(conditionParams="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", defaultCacheFileUrl="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
