.class public Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/EjP;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "VerificationParameters"

    .line 2
    .line 3
    const-string v1, "JavaScriptResource"

    .line 4
    .line 5
    const-string v2, "Tracking"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x3

    .line 26
    if-eq v5, v6, :cond_9

    .line 27
    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-ne v5, v3, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-string v7, "Verification"

    .line 39
    .line 40
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_8

    .line 45
    .line 46
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    .line 47
    .line 48
    const-string v8, "vendor"

    .line 49
    .line 50
    invoke-interface {p0, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/4 v8, 0x0

    .line 55
    move-object v9, v8

    .line 56
    move-object v10, v9

    .line 57
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    const-string v12, "omid"

    .line 62
    .line 63
    if-ne v11, v6, :cond_4

    .line 64
    .line 65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-nez v11, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_1

    .line 81
    .line 82
    invoke-static {v12, v8, v5, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 93
    .line 94
    .line 95
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-ne v11, v3, :cond_2

    .line 100
    .line 101
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 106
    .line 107
    .line 108
    const/4 v13, -0x1

    .line 109
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    sparse-switch v14, :sswitch_data_0

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :sswitch_0
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-nez v11, :cond_5

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    move v13, v3

    .line 125
    goto :goto_3

    .line 126
    :sswitch_1
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-nez v11, :cond_6

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    const/4 v13, 0x1

    .line 134
    goto :goto_3

    .line 135
    :sswitch_2
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-nez v11, :cond_7

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    const/4 v13, 0x0

    .line 143
    :goto_3
    packed-switch v13, :pswitch_data_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_0
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    goto :goto_1

    .line 152
    :pswitch_1
    sget-object v11, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    .line 153
    .line 154
    const-string v13, "apiFramework"

    .line 155
    .line 156
    invoke-interface {p0, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-eqz v11, :cond_2

    .line 165
    .line 166
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    goto :goto_1

    .line 171
    :pswitch_2
    sget-object v11, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    .line 172
    .line 173
    const-string v12, "event"

    .line 174
    .line 175
    invoke-interface {p0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    const-string v12, "verificationNotExecuted"

    .line 180
    .line 181
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_2

    .line 186
    .line 187
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->sP(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;->Sj(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_9
    return-object v4

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x4f9482d7 -> :sswitch_2
        0x5d0eccdb -> :sswitch_1
        0x68437a85 -> :sswitch_0
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
