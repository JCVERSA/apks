.class public Lcom/bytedance/adsdk/sP/HiB/ib;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private static EjP(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TEQ$Sj;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_9

    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/adsdk/sP/TEQ$Sj;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bytedance/adsdk/sP/TEQ$Sj;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_8

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v4, 0x63

    .line 35
    .line 36
    if-eq v3, v4, :cond_6

    .line 37
    .line 38
    const/16 v4, 0x66

    .line 39
    .line 40
    if-eq v3, v4, :cond_5

    .line 41
    .line 42
    const/16 v4, 0x6c

    .line 43
    .line 44
    if-eq v3, v4, :cond_4

    .line 45
    .line 46
    const/16 v4, 0x73

    .line 47
    .line 48
    if-eq v3, v4, :cond_3

    .line 49
    .line 50
    const/16 v4, 0xc51

    .line 51
    .line 52
    if-eq v3, v4, :cond_2

    .line 53
    .line 54
    const/16 v4, 0xd79

    .line 55
    .line 56
    if-eq v3, v4, :cond_1

    .line 57
    .line 58
    const v4, 0x1799e

    .line 59
    .line 60
    .line 61
    if-eq v3, v4, :cond_0

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    const-string v3, "ali"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    const/4 v2, 0x6

    .line 73
    goto :goto_3

    .line 74
    :cond_1
    const-string v3, "le"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_7

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    const-string v3, "bs"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_7

    .line 91
    .line 92
    const/4 v2, 0x5

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const-string v3, "s"

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_7

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    const-string v3, "l"

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    const-string v3, "f"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    const/4 v2, 0x4

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    const-string v3, "c"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    const/4 v2, 0x3

    .line 133
    goto :goto_3

    .line 134
    :cond_7
    :goto_2
    const/4 v2, -0x1

    .line 135
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iput-object v2, v1, Lcom/bytedance/adsdk/sP/TEQ$Sj;->Jcg:Ljava/lang/String;

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iput v2, v1, Lcom/bytedance/adsdk/sP/TEQ$Sj;->vS:I

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, v1, Lcom/bytedance/adsdk/sP/TEQ$Sj;->EjP:Ljava/lang/String;

    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iput-object v2, v1, Lcom/bytedance/adsdk/sP/TEQ$Sj;->TKC:Ljava/lang/String;

    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    iput v2, v1, Lcom/bytedance/adsdk/sP/TEQ$Sj;->HiB:I

    .line 179
    .line 180
    goto/16 :goto_1

    .line 181
    .line 182
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    iput v2, v1, Lcom/bytedance/adsdk/sP/TEQ$Sj;->sP:I

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    iput v2, v1, Lcom/bytedance/adsdk/sP/TEQ$Sj;->Sj:I

    .line 195
    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 199
    .line 200
    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_9
    return-object v0

    .line 207
    :catch_0
    const/4 p0, 0x0

    .line 208
    return-object p0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Sj(Landroid/util/JsonReader;)Lcom/bytedance/adsdk/sP/Jcg;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    move-result v3

    .line 2
    new-instance v10, Landroid/util/LongSparseArray;

    invoke-direct {v10}, Landroid/util/LongSparseArray;-><init>()V

    .line 3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 9
    new-instance v8, Lcom/bytedance/adsdk/sP/Jcg$TKC;

    invoke-direct {v8}, Lcom/bytedance/adsdk/sP/Jcg$TKC;-><init>()V

    .line 10
    new-instance v7, Lcom/bytedance/adsdk/sP/Jcg$Sj;

    invoke-direct {v7}, Lcom/bytedance/adsdk/sP/Jcg$Sj;-><init>()V

    .line 11
    new-instance v6, Lcom/bytedance/adsdk/sP/Jcg$sP;

    invoke-direct {v6}, Lcom/bytedance/adsdk/sP/Jcg$sP;-><init>()V

    .line 12
    new-instance v5, Lcom/bytedance/adsdk/sP/Jcg;

    invoke-direct {v5}, Lcom/bytedance/adsdk/sP/Jcg;-><init>()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/16 v16, 0x0

    const/4 v4, 0x0

    move/from16 v20, v4

    move/from16 v21, v20

    move-object/from16 v19, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 14
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/16 v23, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "markers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v23, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "timer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v23, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "fonts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v23, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "chars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v23, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "op"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v23, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "ip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v23, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "gc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v23, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/16 v23, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/16 v23, 0x6

    goto :goto_1

    :sswitch_9
    const-string v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const/16 v23, 0x5

    goto :goto_1

    :sswitch_a
    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    const/16 v23, 0x4

    goto :goto_1

    :sswitch_b
    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    const/16 v23, 0x3

    goto :goto_1

    :sswitch_c
    const-string v2, "globalEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    const/16 v23, 0x2

    goto :goto_1

    :sswitch_d
    const-string v2, "layers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1

    :cond_e
    const/16 v23, 0x1

    goto :goto_1

    :sswitch_e
    const-string v2, "assets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1

    :cond_f
    move/from16 v23, v4

    :goto_1
    packed-switch v23, :pswitch_data_0

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    const/4 v2, 0x1

    const/16 v22, 0x2

    goto/16 :goto_0

    .line 17
    :pswitch_0
    invoke-static {v0, v15}, Lcom/bytedance/adsdk/sP/HiB/ib;->Sj(Landroid/util/JsonReader;Ljava/util/List;)V

    goto :goto_2

    .line 18
    :pswitch_1
    invoke-static {v0, v8}, Lcom/bytedance/adsdk/sP/HiB/ib;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg$TKC;)V

    goto :goto_2

    .line 19
    :pswitch_2
    invoke-static {v0, v14}, Lcom/bytedance/adsdk/sP/HiB/ib;->Sj(Landroid/util/JsonReader;Ljava/util/Map;)V

    goto :goto_2

    .line 20
    :pswitch_3
    invoke-static {v0, v5, v13}, Lcom/bytedance/adsdk/sP/HiB/ib;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Landroid/util/SparseArray;)V

    goto :goto_2

    .line 21
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    sub-float v16, v1, v2

    goto/16 :goto_0

    .line 22
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v17, v1

    goto/16 :goto_0

    .line 23
    :pswitch_6
    invoke-static {v0, v7}, Lcom/bytedance/adsdk/sP/HiB/ib;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg$Sj;)V

    goto :goto_2

    .line 24
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v18, v1

    goto/16 :goto_0

    .line 25
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 26
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v20

    goto/16 :goto_0

    .line 27
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 28
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 29
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/4 v2, 0x1

    .line 30
    aget-object v23, v1, v2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v22, 0x2

    .line 31
    aget-object v1, v1, v22

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    const/16 v29, 0x4

    const/16 v30, 0x0

    const/16 v28, 0x4

    .line 32
    invoke-static/range {v25 .. v30}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj(IIIIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v5, v1}, Lcom/bytedance/adsdk/sP/Jcg;->Sj(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const/4 v2, 0x1

    const/16 v22, 0x2

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v21

    goto/16 :goto_0

    :pswitch_c
    const/4 v2, 0x1

    const/16 v22, 0x2

    .line 35
    invoke-static {v0, v6}, Lcom/bytedance/adsdk/sP/HiB/ib;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg$sP;)V

    goto/16 :goto_0

    :pswitch_d
    const/4 v2, 0x1

    const/16 v22, 0x2

    .line 36
    invoke-static {v0, v5, v9, v10}, Lcom/bytedance/adsdk/sP/HiB/ib;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Ljava/util/List;Landroid/util/LongSparseArray;)V

    goto/16 :goto_0

    :pswitch_e
    const/4 v2, 0x1

    const/16 v22, 0x2

    .line 37
    invoke-static {v0, v5, v11, v12}, Lcom/bytedance/adsdk/sP/HiB/ib;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 38
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    move/from16 v0, v20

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move/from16 v1, v21

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 39
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    move-object v0, v5

    move-object v5, v2

    move-object v1, v6

    move/from16 v6, v17

    move-object v2, v7

    move/from16 v7, v16

    move-object v3, v8

    move/from16 v8, v18

    move-object/from16 v16, v3

    move-object/from16 v17, v19

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    .line 40
    invoke-virtual/range {v4 .. v19}, Lcom/bytedance/adsdk/sP/Jcg;->Sj(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/util/Map;Ljava/util/List;Lcom/bytedance/adsdk/sP/Jcg$TKC;Ljava/lang/String;Lcom/bytedance/adsdk/sP/Jcg$Sj;Lcom/bytedance/adsdk/sP/Jcg$sP;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_e
        -0x42252abe -> :sswitch_d
        -0x3395b349 -> :sswitch_c
        0x68 -> :sswitch_b
        0x76 -> :sswitch_a
        0x77 -> :sswitch_9
        0xc88 -> :sswitch_8
        0xccc -> :sswitch_7
        0xcdc -> :sswitch_6
        0xd27 -> :sswitch_5
        0xde1 -> :sswitch_4
        0x5a3d7dd -> :sswitch_3
        0x5d17e04 -> :sswitch_2
        0x6940745 -> :sswitch_1
        0x3205f379 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg$Sj;)V
    .locals 7

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 57
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc43

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v1, v2, :cond_4

    const/16 v2, 0xca0

    if-eq v1, v2, :cond_3

    const/16 v2, 0xdf3

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe52

    if-eq v1, v2, :cond_1

    const v2, 0x18199

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "cpf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_2

    :cond_1
    const-string v1, "se"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v1, "pc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_2

    :cond_3
    const-string v1, "ee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_2

    :cond_4
    const-string v1, "be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v6, :cond_6

    .line 59
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 60
    :cond_6
    invoke-static {p0, p1}, Lcom/bytedance/adsdk/sP/HiB/ib;->sP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg$Sj;)V

    goto :goto_0

    .line 61
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p1, Lcom/bytedance/adsdk/sP/Jcg$Sj;->EjP:I

    goto :goto_0

    .line 62
    :cond_8
    invoke-static {p0}, Lcom/bytedance/adsdk/sP/HiB/ib;->sP(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$Sj;->TKC:Ljava/util/Map;

    goto :goto_0

    .line 63
    :cond_9
    invoke-static {p0}, Lcom/bytedance/adsdk/sP/HiB/ib;->sP(Landroid/util/JsonReader;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$Sj;->sP:Ljava/util/Map;

    goto/16 :goto_0

    .line 64
    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p1, Lcom/bytedance/adsdk/sP/Jcg$Sj;->Sj:I

    goto/16 :goto_0

    .line 65
    :cond_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg$TKC;)V
    .locals 6

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc33

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v1, v2, :cond_6

    const/16 v2, 0xca7

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd1b

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd5a

    if-eq v1, v2, :cond_3

    const/16 v2, 0xe78

    if-eq v1, v2, :cond_2

    const v2, 0x1a213

    if-eq v1, v2, :cond_1

    const v2, 0x31648c

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "inel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_2

    :cond_1
    const-string v1, "lel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_2

    :cond_2
    const-string v1, "tl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_2

    :cond_3
    const-string v1, "ke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_2

    :cond_4
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    :cond_6
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v5

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 70
    :pswitch_0
    invoke-static {p0}, Lcom/bytedance/adsdk/sP/HiB/ib;->TKC(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->Jcg:Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->vS:Ljava/lang/String;

    goto/16 :goto_0

    .line 72
    :pswitch_2
    filled-new-array {v5, v5}, [I

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->HiB:[I

    .line 73
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_3
    if-ge v3, v4, :cond_9

    .line 74
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->HiB:[I

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    aput v1, v0, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 76
    :cond_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 77
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->EjP:Ljava/lang/String;

    goto/16 :goto_0

    .line 78
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->TKC:Ljava/lang/String;

    goto/16 :goto_0

    .line 79
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->sP:Ljava/lang/String;

    goto/16 :goto_0

    .line 80
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p1, Lcom/bytedance/adsdk/sP/Jcg$TKC;->Sj:I

    goto/16 :goto_0

    .line 81
    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg$sP;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 43
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xca7

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eq v3, v4, :cond_2

    const v4, 0x1a213

    if-eq v3, v4, :cond_1

    const v4, 0x31648c

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "inel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_1
    const-string v3, "lel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_2
    const-string v3, "el"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v6

    :goto_2
    if-eqz v2, :cond_6

    if-eq v2, v1, :cond_5

    if-eq v2, v5, :cond_4

    .line 44
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 45
    :cond_4
    invoke-static {p0}, Lcom/bytedance/adsdk/sP/HiB/ib;->TKC(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p1, Lcom/bytedance/adsdk/sP/Jcg$sP;->TKC:Lorg/json/JSONArray;

    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/bytedance/adsdk/sP/Jcg$sP;->Sj:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_6
    filled-new-array {v6, v6}, [I

    move-result-object v2

    new-array v3, v1, [[I

    aput-object v2, v3, v0

    iput-object v3, p1, Lcom/bytedance/adsdk/sP/Jcg$sP;->sP:[[I

    .line 48
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 49
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 50
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    move v2, v0

    :goto_3
    if-ge v2, v5, :cond_8

    .line 51
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 52
    iget-object v3, p1, Lcom/bytedance/adsdk/sP/Jcg$sP;->sP:[[I

    aget-object v3, v3, v0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    aput v4, v3, v2

    :cond_7
    add-int/2addr v2, v1

    goto :goto_3

    .line 53
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 54
    :cond_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 55
    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/adsdk/sP/TKC/EjP;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0, p1}, Lcom/bytedance/adsdk/sP/HiB/Fmk;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/EjP;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/EjP;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Ljava/util/List;Landroid/util/LongSparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 83
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0, p1}, Lcom/bytedance/adsdk/sP/HiB/zR;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Ym()Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$Sj;

    sget-object v1, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB$Sj;

    .line 86
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->HiB()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Ljava/util/Map;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TEQ;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 90
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v6, 0x0

    move v8, v2

    move v9, v8

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    .line 94
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_2
    move v6, v1

    goto/16 :goto_3

    :sswitch_0
    const-string v7, "inel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    const/16 v6, 0xa

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "rel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "lel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "tc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x7

    goto :goto_3

    :sswitch_4
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x6

    goto :goto_3

    :sswitch_5
    const-string v7, "el"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x5

    goto :goto_3

    :sswitch_6
    const-string v7, "w"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x4

    goto :goto_3

    :sswitch_7
    const-string v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x3

    goto :goto_3

    :sswitch_8
    const-string v7, "p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move v6, v0

    goto :goto_3

    :sswitch_9
    const-string v7, "h"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    move v6, v3

    goto :goto_3

    :sswitch_a
    const-string v7, "layers"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    move v6, v2

    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_6

    .line 97
    :pswitch_0
    new-array v6, v3, [[I

    filled-new-array {v1, v1}, [I

    move-result-object v7

    aput-object v7, v6, v2

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    move v7, v2

    :goto_4
    if-ge v7, v0, :cond_c

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 102
    aget-object v16, v6, v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v18

    aput v18, v16, v7

    :cond_b
    add-int/2addr v7, v3

    goto :goto_4

    .line 103
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    .line 104
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    move-object/from16 v16, v6

    goto/16 :goto_1

    .line 105
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 106
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/bytedance/adsdk/sP/HiB/ib;->TKC(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v17

    goto/16 :goto_1

    .line 107
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 108
    invoke-static/range {p0 .. p0}, Lcom/bytedance/adsdk/sP/HiB/ib;->EjP(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v14

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_1

    .line 110
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 111
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 112
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    goto/16 :goto_1

    .line 113
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 114
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 115
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    goto/16 :goto_1

    .line 116
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    .line 117
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 118
    invoke-static/range {p0 .. p1}, Lcom/bytedance/adsdk/sP/HiB/zR;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->HiB()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 120
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    const/4 v1, -0x1

    goto :goto_5

    .line 121
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    :goto_6
    const/4 v0, 0x2

    const/4 v1, -0x1

    goto/16 :goto_1

    .line 122
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v11, :cond_10

    .line 123
    new-instance v0, Lcom/bytedance/adsdk/sP/TEQ;

    move-object v7, v0

    invoke-direct/range {v7 .. v17}, Lcom/bytedance/adsdk/sP/TEQ;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;[[ILorg/json/JSONArray;)V

    .line 124
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TEQ;->Dq()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, p3

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    const/4 v0, 0x2

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p2

    move-object/from16 v5, p3

    .line 125
    invoke-interface {v0, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 126
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x42252abe -> :sswitch_a
        0x68 -> :sswitch_9
        0x70 -> :sswitch_8
        0x75 -> :sswitch_7
        0x77 -> :sswitch_6
        0xca7 -> :sswitch_5
        0xd1b -> :sswitch_4
        0xe6f -> :sswitch_3
        0x1a213 -> :sswitch_2
        0x1b899 -> :sswitch_1
        0x31648c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Sj(Landroid/util/JsonReader;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TKC/vS;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    .line 145
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "tm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_1
    const-string v5, "dr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_2
    const-string v5, "cm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 147
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v0, v3

    goto :goto_1

    .line 149
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_1

    .line 150
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 152
    new-instance v3, Lcom/bytedance/adsdk/sP/TKC/vS;

    invoke-direct {v3, v2, v0, v1}, Lcom/bytedance/adsdk/sP/TKC/vS;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xc6a -> :sswitch_2
        0xc8e -> :sswitch_1
        0xe79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Sj(Landroid/util/JsonReader;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TKC/TKC;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 128
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 132
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {p0}, Lcom/bytedance/adsdk/sP/HiB/sef;->Sj(Landroid/util/JsonReader;)Lcom/bytedance/adsdk/sP/TKC/TKC;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private static TKC(Landroid/util/JsonReader;)Lorg/json/JSONArray;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    new-instance v1, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 24
    .line 25
    .line 26
    :catch_0
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    const/16 v4, 0xcfc

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    const-string v6, "hd"

    .line 44
    .line 45
    const-string v7, "vid"

    .line 46
    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    const v4, 0x1c811

    .line 50
    .line 51
    .line 52
    if-eq v3, v4, :cond_0

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    move v2, v5

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    :goto_2
    const/4 v2, -0x1

    .line 72
    :goto_3
    if-eqz v2, :cond_4

    .line 73
    .line 74
    if-eq v2, v5, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 101
    .line 102
    .line 103
    :catch_1
    return-object v0
.end method

.method private static sP(Landroid/util/JsonReader;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    const-string v0, "hd"

    const-string v1, "lottie_back"

    const-string v2, "lel"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 15
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 17
    :catch_0
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 20
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v5, "vid"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {p0}, Lcom/bytedance/adsdk/sP/HiB/ib;->TKC(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 25
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 26
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 27
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_5

    .line 29
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 30
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 31
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 32
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-object v3
.end method

.method private static sP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg$Sj;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xca7

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_2

    const/16 v2, 0xccc

    if-eq v1, v2, :cond_1

    const v2, 0x1a213

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "lel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_1
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v4, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 5
    :cond_4
    invoke-static {p0}, Lcom/bytedance/adsdk/sP/HiB/ib;->TKC(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$Sj;->Jcg:Lorg/json/JSONArray;

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg$Sj;->vS:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p1, Lcom/bytedance/adsdk/sP/Jcg$Sj;->HiB:I

    goto :goto_0

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
