.class Lcom/mbridge/msdk/foundation/same/report/e$b;
.super Lcom/mbridge/msdk/foundation/same/report/net/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/report/e;->a(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/mbridge/msdk/foundation/same/report/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/report/e;JLjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->b:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/report/net/b;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u6279\u91cf\u4e0a\u62a5\u5931\u8d25\uff1a "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/same/report/e;->a(Lcom/mbridge/msdk/foundation/same/report/e;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-wide v1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->b:J

    .line 45
    .line 46
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->c:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/db/BatchReportDao;->updateMessagesReportState(Ljava/util/ArrayList;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x5

    .line 87
    if-lt v0, v1, :cond_2

    .line 88
    .line 89
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "\u6279\u91cf\u4e0a\u62a5\u5931\u8d25\uff0c\u4e0a\u62a5\u5931\u8d25\u7684\u6570\u636e\u8d85\u8fc7\u9608\u503c"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/Long;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_1

    .line 139
    .line 140
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 141
    .line 142
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/foundation/db/BatchReportDao;->deleteBatchReportMessagesByTimestamp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catchall_1
    move-exception v0

    .line 151
    goto :goto_4

    .line 152
    :catch_0
    move-exception v0

    .line 153
    goto :goto_2

    .line 154
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    goto :goto_3

    .line 161
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    .line 171
    .line 172
    :try_start_4
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :goto_3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :goto_4
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 183
    .line 184
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_2
    :goto_5
    monitor-exit p1

    .line 193
    return-void

    .line 194
    :goto_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "\u6279\u91cf\u4e0a\u62a5\u6210\u529f"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/foundation/same/report/e;->a(Lcom/mbridge/msdk/foundation/same/report/e;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->b:J

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/db/BatchReportDao;->deleteBatchReportMessagesByTimestamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    monitor-enter p1

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$b;->d:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->f(Lcom/mbridge/msdk/foundation/same/report/e;)Ljava/util/Stack;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 64
    .line 65
    .line 66
    monitor-exit p1

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw v0
.end method
