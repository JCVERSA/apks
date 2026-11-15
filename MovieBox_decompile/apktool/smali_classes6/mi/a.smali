.class public abstract Lmi/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 16

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long v2, p0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0xe10

    .line 10
    .line 11
    :try_start_0
    rem-long v6, v2, v4

    .line 12
    .line 13
    cmp-long v8, v2, v4

    .line 14
    .line 15
    const-wide/16 v9, 0x0

    .line 16
    .line 17
    const-wide/16 v11, 0x3c

    .line 18
    .line 19
    if-lez v8, :cond_3

    .line 20
    .line 21
    div-long/2addr v2, v4

    .line 22
    cmp-long v4, v6, v9

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    cmp-long v4, v6, v11

    .line 27
    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    div-long v4, v6, v11

    .line 31
    .line 32
    rem-long v13, v6, v11

    .line 33
    .line 34
    cmp-long v8, v13, v9

    .line 35
    .line 36
    if-eqz v8, :cond_0

    .line 37
    .line 38
    rem-long/2addr v6, v11

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-wide v6, v9

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-wide v4, v9

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-wide v4, v9

    .line 45
    move-wide v6, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    div-long v4, v2, v11

    .line 48
    .line 49
    rem-long v6, v2, v11

    .line 50
    .line 51
    cmp-long v6, v6, v9

    .line 52
    .line 53
    if-eqz v6, :cond_4

    .line 54
    .line 55
    rem-long v6, v2, v11

    .line 56
    .line 57
    move-wide v2, v9

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    move-wide v2, v9

    .line 60
    move-wide v6, v2

    .line 61
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    const-wide/16 v13, 0xa

    .line 67
    .line 68
    cmp-long v15, v2, v13

    .line 69
    .line 70
    const-string v11, "0"

    .line 71
    .line 72
    if-gez v15, :cond_5

    .line 73
    .line 74
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    :goto_1
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    new-instance v12, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    cmp-long v15, v4, v13

    .line 110
    .line 111
    if-gez v15, :cond_6

    .line 112
    .line 113
    new-instance v15, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v15

    .line 133
    :goto_2
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    cmp-long v12, v6, v13

    .line 144
    .line 145
    if-gez v12, :cond_7

    .line 146
    .line 147
    new-instance v12, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    goto :goto_3

    .line 163
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    :goto_3
    cmp-long v2, v2, v9

    .line 179
    .line 180
    if-nez v2, :cond_8

    .line 181
    .line 182
    move-object v8, v1

    .line 183
    :cond_8
    if-nez v2, :cond_9

    .line 184
    .line 185
    const-wide/16 v2, 0x3c

    .line 186
    .line 187
    cmp-long v2, v4, v2

    .line 188
    .line 189
    if-nez v2, :cond_9

    .line 190
    .line 191
    const-string v8, "01:"

    .line 192
    .line 193
    const-string v0, "00:"

    .line 194
    .line 195
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    return-object v0

    .line 214
    :catch_0
    return-object v1
.end method
