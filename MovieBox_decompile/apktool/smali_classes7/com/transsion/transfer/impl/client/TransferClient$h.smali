.class public final Lcom/transsion/transfer/impl/client/TransferClient$h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/client/TransferClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/client/TransferClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/client/TransferClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;JJ)V
    .locals 8

    .line 1
    const-string v0, "remoteFilePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Leu/a;->a:Leu/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Leu/a;->d()Ljava/util/List;

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
    move-object v2, v1

    .line 29
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_0
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2, p3}, Lcom/transsion/transfer/impl/entity/FileData;->setDownloadSize(J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p4, p5}, Lcom/transsion/transfer/impl/entity/FileData;->setFileSize(J)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    move-object v2, v1

    .line 78
    check-cast v2, Lcom/transsion/transfer/impl/f;

    .line 79
    .line 80
    move-object v3, p1

    .line 81
    move-wide v4, p2

    .line 82
    move-wide v6, p4

    .line 83
    invoke-interface/range {v2 .. v7}, Lcom/transsion/transfer/impl/f;->C(Ljava/lang/String;JJ)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    return-void
.end method

.method public J(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    const-string v1, "remoteFilePath"

    .line 8
    .line 9
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "state"

    .line 13
    .line 14
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Leu/a;->a:Leu/a;

    .line 18
    .line 19
    invoke-virtual {v1}, Leu/a;->d()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    move-object v3, v2

    .line 40
    check-cast v3, Lcom/transsion/transfer/impl/entity/FileData;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v2, 0x0

    .line 54
    :goto_0
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 55
    .line 56
    const/4 v13, 0x7

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v3, 0x5

    .line 64
    if-eq v1, v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v3, 0x6

    .line 71
    if-eq v1, v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v3, 0x3

    .line 78
    if-eq v1, v3, :cond_2

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v3, 0x4

    .line 85
    if-eq v1, v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eq v1, v13, :cond_2

    .line 92
    .line 93
    sget-object v1, Lcom/transsion/transfer/impl/entity/FileData;->Companion:Lcom/transsion/transfer/impl/entity/FileData$a;

    .line 94
    .line 95
    invoke-virtual {v1, v12}, Lcom/transsion/transfer/impl/entity/FileData$a;->a(Lcom/transsion/transfer/impl/TaskState;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v2, v1}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 100
    .line 101
    .line 102
    move-wide/from16 v14, p3

    .line 103
    .line 104
    invoke-virtual {v2, v14, v15}, Lcom/transsion/transfer/impl/entity/FileData;->setDownloadSize(J)V

    .line 105
    .line 106
    .line 107
    move-wide/from16 v8, p5

    .line 108
    .line 109
    invoke-virtual {v2, v8, v9}, Lcom/transsion/transfer/impl/entity/FileData;->setFileSize(J)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move-wide/from16 v14, p3

    .line 114
    .line 115
    move-wide/from16 v8, p5

    .line 116
    .line 117
    :goto_1
    iget-object v1, v0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v16

    .line 127
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/transsion/transfer/impl/f;

    .line 138
    .line 139
    move-object/from16 v2, p1

    .line 140
    .line 141
    move-object/from16 v3, p2

    .line 142
    .line 143
    move-wide/from16 v4, p3

    .line 144
    .line 145
    move-wide/from16 v6, p5

    .line 146
    .line 147
    move-wide/from16 v8, p7

    .line 148
    .line 149
    move-object/from16 v10, p9

    .line 150
    .line 151
    invoke-interface/range {v1 .. v10}, Lcom/transsion/transfer/impl/f;->J(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-wide/from16 v8, p5

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_3
    sget-object v1, Lcom/transsion/transfer/impl/TaskState;->SPACE_LIMIT:Lcom/transsion/transfer/impl/TaskState;

    .line 158
    .line 159
    if-ne v12, v1, :cond_4

    .line 160
    .line 161
    iget-object v1, v0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 162
    .line 163
    invoke-static {v1, v11, v13}, Lcom/transsion/transfer/impl/client/TransferClient;->J(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    :cond_4
    return-void
.end method

.method public N()V
    .locals 4

    .line 1
    sget-object v0, Leu/a;->a:Leu/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Leu/a;->d()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x4

    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x3

    .line 37
    if-eq v2, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x7

    .line 44
    if-eq v2, v3, :cond_0

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/transsion/transfer/impl/f;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/transsion/transfer/impl/f;->N()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/transsion/transfer/impl/f;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/transsion/transfer/impl/f;->l(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "remoteFilePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/transsion/transfer/impl/f;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lcom/transsion/transfer/impl/f;->q(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
