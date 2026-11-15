.class public final Lzt/h$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzt/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzt/h;


# direct methods
.method constructor <init>(Lzt/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzt/h$b;->a:Lzt/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    const-string v1, "clientIp"

    .line 8
    .line 9
    move-object/from16 v11, p1

    .line 10
    .line 11
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "remoteFilePath"

    .line 15
    .line 16
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "state"

    .line 20
    .line 21
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Leu/b;->a:Leu/b;

    .line 25
    .line 26
    invoke-virtual {v1}, Leu/b;->d()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v12, 0x0

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v3, v2

    .line 48
    check-cast v3, Lcom/transsion/transfer/impl/entity/FileData;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v2, v12

    .line 62
    :goto_0
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object v1, v0, Lzt/h$b;->a:Lzt/h;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, 0x5

    .line 73
    if-eq v3, v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v4, 0x6

    .line 80
    if-eq v3, v4, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/4 v4, 0x3

    .line 87
    if-eq v3, v4, :cond_2

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v4, 0x4

    .line 94
    if-eq v3, v4, :cond_2

    .line 95
    .line 96
    sget-object v3, Lcom/transsion/transfer/impl/entity/FileData;->Companion:Lcom/transsion/transfer/impl/entity/FileData$a;

    .line 97
    .line 98
    invoke-virtual {v3, v10}, Lcom/transsion/transfer/impl/entity/FileData$a;->a(Lcom/transsion/transfer/impl/TaskState;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v2, v3}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 103
    .line 104
    .line 105
    move-wide/from16 v13, p4

    .line 106
    .line 107
    invoke-virtual {v2, v13, v14}, Lcom/transsion/transfer/impl/entity/FileData;->setDownloadSize(J)V

    .line 108
    .line 109
    .line 110
    move-wide/from16 v7, p6

    .line 111
    .line 112
    invoke-virtual {v2, v7, v8}, Lcom/transsion/transfer/impl/entity/FileData;->setFileSize(J)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    move-wide/from16 v13, p4

    .line 117
    .line 118
    move-wide/from16 v7, p6

    .line 119
    .line 120
    :goto_1
    invoke-static {v1}, Lzt/h;->u(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/transsion/transfer/impl/i;

    .line 139
    .line 140
    move-object/from16 v2, p1

    .line 141
    .line 142
    move-object/from16 v3, p2

    .line 143
    .line 144
    move-object/from16 v4, p3

    .line 145
    .line 146
    move-wide/from16 v5, p4

    .line 147
    .line 148
    move-wide/from16 v7, p6

    .line 149
    .line 150
    invoke-interface/range {v1 .. v8}, Lcom/transsion/transfer/impl/i;->L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    move-wide/from16 v13, p4

    .line 155
    .line 156
    :cond_4
    sget-object v1, Leu/b;->a:Leu/b;

    .line 157
    .line 158
    invoke-virtual {v1}, Leu/b;->d()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ljava/lang/Iterable;

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    move-object v3, v2

    .line 179
    check-cast v3, Lcom/transsion/transfer/impl/entity/FileData;

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_5

    .line 190
    .line 191
    move-object v12, v2

    .line 192
    :cond_6
    check-cast v12, Lcom/transsion/transfer/impl/entity/FileData;

    .line 193
    .line 194
    if-eqz v12, :cond_7

    .line 195
    .line 196
    iget-object v1, v0, Lzt/h$b;->a:Lzt/h;

    .line 197
    .line 198
    invoke-static {v1}, Lzt/h;->u(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Lcom/transsion/transfer/impl/i;

    .line 217
    .line 218
    move-object/from16 v2, p1

    .line 219
    .line 220
    move-object/from16 v3, p2

    .line 221
    .line 222
    move-object/from16 v4, p3

    .line 223
    .line 224
    move-wide/from16 v5, p4

    .line 225
    .line 226
    move-wide/from16 v7, p6

    .line 227
    .line 228
    invoke-interface/range {v1 .. v8}, Lcom/transsion/transfer/impl/i;->L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_7
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "clientIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzt/h$b;->a:Lzt/h;

    .line 7
    .line 8
    invoke-static {v0}, Lzt/h;->u(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/transsion/transfer/impl/i;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lcom/transsion/transfer/impl/i;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    const-string v0, "clientIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "remoteFilePath"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Leu/b;->a:Leu/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Leu/b;->d()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v2, v1

    .line 34
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_0
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p3, p4}, Lcom/transsion/transfer/impl/entity/FileData;->setDownloadSize(J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p5, p6}, Lcom/transsion/transfer/impl/entity/FileData;->setFileSize(J)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lzt/h$b;->a:Lzt/h;

    .line 63
    .line 64
    invoke-static {v0}, Lzt/h;->u(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    move-object v2, v1

    .line 83
    check-cast v2, Lcom/transsion/transfer/impl/i;

    .line 84
    .line 85
    move-object v3, p1

    .line 86
    move-object v4, p2

    .line 87
    move-wide v5, p3

    .line 88
    move-wide v7, p5

    .line 89
    invoke-interface/range {v2 .. v8}, Lcom/transsion/transfer/impl/i;->j(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "clientIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzt/h$b;->a:Lzt/h;

    .line 7
    .line 8
    invoke-static {v0}, Lzt/h;->u(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/transsion/transfer/impl/i;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lcom/transsion/transfer/impl/i;->o(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Leu/b;->a:Leu/b;

    .line 33
    .line 34
    invoke-virtual {p1}, Leu/b;->d()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x2

    .line 62
    if-ne v1, v2, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_1
    check-cast v0, Lcom/transsion/transfer/impl/entity/FileData;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const/4 p1, 0x4

    .line 71
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "clientIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "files"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lzt/h$b;->a:Lzt/h;

    .line 12
    .line 13
    invoke-static {v0}, Lzt/h;->u(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/transsion/transfer/impl/i;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/transsion/transfer/impl/i;->p(Ljava/lang/String;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "clientIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Leu/b;->a:Leu/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Leu/b;->d()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x4

    .line 35
    if-eq v2, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x3

    .line 42
    if-eq v2, v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x7

    .line 49
    if-eq v2, v3, :cond_0

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lzt/h$b;->a:Lzt/h;

    .line 57
    .line 58
    invoke-static {v0}, Lzt/h;->p(Lzt/h;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/transsion/transfer/androidasync/http/b0;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lzt/h$b;->a:Lzt/h;

    .line 74
    .line 75
    invoke-static {v0}, Lzt/h;->u(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/transsion/transfer/impl/i;

    .line 94
    .line 95
    invoke-interface {v1, p1}, Lcom/transsion/transfer/impl/i;->r(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    return-void
.end method
