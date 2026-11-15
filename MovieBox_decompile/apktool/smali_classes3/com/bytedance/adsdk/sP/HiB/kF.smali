.class Lcom/bytedance/adsdk/sP/HiB/kF;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/sP/Dq;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, -0x1

    .line 5
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v6, v4

    .line 11
    move-object v7, v6

    .line 12
    move v8, v5

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    if-eqz v9, :cond_8

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    sparse-switch v10, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    :goto_1
    move v9, v3

    .line 34
    goto :goto_2

    .line 35
    :sswitch_0
    const-string v10, "mode"

    .line 36
    .line 37
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-nez v9, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v9, v0

    .line 45
    goto :goto_2

    .line 46
    :sswitch_1
    const-string v10, "inv"

    .line 47
    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-nez v9, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v9, v1

    .line 56
    goto :goto_2

    .line 57
    :sswitch_2
    const-string v10, "pt"

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v9, v2

    .line 67
    goto :goto_2

    .line 68
    :sswitch_3
    const-string v10, "o"

    .line 69
    .line 70
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-nez v9, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v9, v5

    .line 78
    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    sparse-switch v9, :sswitch_data_1

    .line 97
    .line 98
    .line 99
    :goto_3
    move v4, v3

    .line 100
    goto :goto_4

    .line 101
    :sswitch_4
    const-string v9, "s"

    .line 102
    .line 103
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move v4, v0

    .line 111
    goto :goto_4

    .line 112
    :sswitch_5
    const-string v9, "n"

    .line 113
    .line 114
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    move v4, v1

    .line 122
    goto :goto_4

    .line 123
    :sswitch_6
    const-string v9, "i"

    .line 124
    .line 125
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_6

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    move v4, v2

    .line 133
    goto :goto_4

    .line 134
    :sswitch_7
    const-string v9, "a"

    .line 135
    .line 136
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_7

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    move v4, v5

    .line 144
    :goto_4
    packed-switch v4, :pswitch_data_1

    .line 145
    .line 146
    .line 147
    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :pswitch_1
    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :pswitch_2
    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :pswitch_3
    const-string v4, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 160
    .line 161
    invoke-virtual {p1, v4}, Lcom/bytedance/adsdk/sP/Jcg;->Sj(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_4
    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :pswitch_6
    invoke-static {p0, p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->HiB(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_7
    invoke-static {p0, p1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->sP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 191
    .line 192
    .line 193
    new-instance p0, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;

    .line 194
    .line 195
    invoke-direct {p0, v4, v6, v7, v8}, Lcom/bytedance/adsdk/sP/TKC/sP/Dq;-><init>(Lcom/bytedance/adsdk/sP/TKC/sP/Dq$Sj;Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;Z)V

    .line 196
    .line 197
    .line 198
    return-object p0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_3
        0xe04 -> :sswitch_2
        0x197f1 -> :sswitch_1
        0x3339a3 -> :sswitch_0
    .end sparse-switch

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_7
        0x69 -> :sswitch_6
        0x6e -> :sswitch_5
        0x73 -> :sswitch_4
    .end sparse-switch

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
