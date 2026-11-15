.class public final Lcom/cloud/tmc/integration/utils/BundleUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00062\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/BundleUtil;",
        "",
        "()V",
        "parse",
        "",
        "dataMap",
        "",
        "",
        "bundle",
        "Landroid/os/Bundle;",
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/BundleUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/BundleUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/BundleUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/BundleUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/BundleUtil;

    .line 7
    .line 8
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
.method public final parse(Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "BundleUtil"

    .line 2
    .line 3
    const-string v1, "dataMap"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "bundle"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_10

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    instance-of v3, v1, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    check-cast v1, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_1
    instance-of v3, v1, Ljava/lang/Short;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    check-cast v1, Ljava/lang/Number;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    instance-of v3, v1, Ljava/lang/Long;

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    check-cast v1, Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    instance-of v3, v1, Ljava/lang/Double;

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    check-cast v1, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    instance-of v3, v1, Ljava/lang/Float;

    .line 103
    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    check-cast v1, Ljava/lang/Number;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    instance-of v3, v1, Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    check-cast v1, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    instance-of v3, v1, Ljava/lang/Boolean;

    .line 127
    .line 128
    if-eqz v3, :cond_7

    .line 129
    .line 130
    check-cast v1, Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    instance-of v3, v1, Ljava/util/ArrayList;

    .line 141
    .line 142
    if-eqz v3, :cond_f

    .line 143
    .line 144
    move-object v3, v1

    .line 145
    check-cast v3, Ljava/lang/Iterable;

    .line 146
    .line 147
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_0

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    instance-of v5, v4, Ljava/lang/Integer;

    .line 162
    .line 163
    if-eqz v5, :cond_9

    .line 164
    .line 165
    move-object v4, v1

    .line 166
    check-cast v4, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_9
    instance-of v5, v4, Ljava/lang/Short;

    .line 173
    .line 174
    if-eqz v5, :cond_a

    .line 175
    .line 176
    move-object v4, v1

    .line 177
    check-cast v4, [S

    .line 178
    .line 179
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_a
    instance-of v5, v4, Ljava/lang/Long;

    .line 184
    .line 185
    if-eqz v5, :cond_b

    .line 186
    .line 187
    move-object v4, v1

    .line 188
    check-cast v4, [J

    .line 189
    .line 190
    invoke-virtual {p2, v2, v4}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_b
    instance-of v5, v4, Ljava/lang/Double;

    .line 195
    .line 196
    if-eqz v5, :cond_c

    .line 197
    .line 198
    move-object v4, v1

    .line 199
    check-cast v4, [D

    .line 200
    .line 201
    invoke-virtual {p2, v2, v4}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_c
    instance-of v5, v4, Ljava/lang/Float;

    .line 206
    .line 207
    if-eqz v5, :cond_d

    .line 208
    .line 209
    move-object v4, v1

    .line 210
    check-cast v4, [F

    .line 211
    .line 212
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_d
    instance-of v5, v4, Ljava/lang/String;

    .line 217
    .line 218
    if-eqz v5, :cond_e

    .line 219
    .line 220
    move-object v4, v1

    .line 221
    check-cast v4, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_e
    instance-of v4, v4, Ljava/lang/Boolean;

    .line 228
    .line 229
    if-eqz v4, :cond_8

    .line 230
    .line 231
    move-object v4, v1

    .line 232
    check-cast v4, [Z

    .line 233
    .line 234
    invoke-virtual {p2, v2, v4}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_f
    if-eqz v1, :cond_0

    .line 239
    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v4, "reportAdLog  put Bundle fail: key = "

    .line 246
    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v2, " , value = "

    .line 254
    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v1, "reportAdLog  parse data fail: "

    .line 276
    .line 277
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_10
    return-void
.end method
