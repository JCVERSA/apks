.class final Lcom/mbridge/msdk/thrid/okio/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/e;


# instance fields
.field public final a:Lcom/mbridge/msdk/thrid/okio/c;

.field public final b:Lcom/mbridge/msdk/thrid/okio/s;

.field c:Z


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mbridge/msdk/thrid/okio/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 17
    .line 18
    const-string v0, "source == null"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method


# virtual methods
.method public a(B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/n;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/thrid/okio/c;->a(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v1, v0, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/mbridge/msdk/thrid/okio/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    return-object v0
.end method

.method public b(Lcom/mbridge/msdk/thrid/okio/c;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1
    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v3, v2, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v0, v0, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/c;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(J)Lcom/mbridge/msdk/thrid/okio/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/c;->b(J)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okio/t;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/s;->b()Lcom/mbridge/msdk/thrid/okio/t;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/c;->c(J)[B

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/s;->close()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->k()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public d(J)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    const-wide v0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    const-wide/16 v3, 0x1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    move-wide v5, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    add-long v5, p1, v3

    .line 21
    .line 22
    :goto_0
    const/16 v8, 0xa

    .line 23
    .line 24
    const-wide/16 v9, 0x0

    .line 25
    .line 26
    move-object v7, p0

    .line 27
    move-wide v11, v5

    .line 28
    invoke-virtual/range {v7 .. v12}, Lcom/mbridge/msdk/thrid/okio/n;->a(BJJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    const-wide/16 v9, -0x1

    .line 33
    .line 34
    cmp-long v2, v7, v9

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 39
    .line 40
    invoke-virtual {p1, v7, v8}, Lcom/mbridge/msdk/thrid/okio/c;->h(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    cmp-long v0, v5, v0

    .line 46
    .line 47
    if-gez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, v5, v6}, Lcom/mbridge/msdk/thrid/okio/n;->f(J)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 56
    .line 57
    sub-long v1, v5, v3

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/c;->f(J)B

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/16 v1, 0xd

    .line 64
    .line 65
    if-ne v0, v1, :cond_2

    .line 66
    .line 67
    add-long/2addr v3, v5

    .line 68
    invoke-virtual {p0, v3, v4}, Lcom/mbridge/msdk/thrid/okio/n;->f(J)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 75
    .line 76
    invoke-virtual {v0, v5, v6}, Lcom/mbridge/msdk/thrid/okio/c;->f(J)B

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/16 v1, 0xa

    .line 81
    .line 82
    if-ne v0, v1, :cond_2

    .line 83
    .line 84
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 85
    .line 86
    invoke-virtual {p1, v5, v6}, Lcom/mbridge/msdk/thrid/okio/c;->h(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_2
    new-instance v6, Lcom/mbridge/msdk/thrid/okio/c;

    .line 92
    .line 93
    invoke-direct {v6}, Lcom/mbridge/msdk/thrid/okio/c;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    const-wide/16 v3, 0x20

    .line 103
    .line 104
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    const-wide/16 v2, 0x0

    .line 109
    .line 110
    move-object v1, v6

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okio/c;->a(Lcom/mbridge/msdk/thrid/okio/c;JJ)Lcom/mbridge/msdk/thrid/okio/c;

    .line 112
    .line 113
    .line 114
    new-instance v0, Ljava/io/EOFException;

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "\\n not found: limit="

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide p1

    .line 136
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, " content="

    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okio/c;->o()Lcom/mbridge/msdk/thrid/okio/f;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/f;->b()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const/16 p1, 0x2026

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v2, "limit < 0: "

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0
.end method

.method public e()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->e()I

    move-result v0

    return v0
.end method

.method public e(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okio/n;->f(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public f()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    if-nez v0, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    iget-wide v1, v0, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->g()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public i()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x1

    .line 3
    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 10
    .line 11
    int-to-long v4, v3

    .line 12
    invoke-virtual {p0, v4, v5}, Lcom/mbridge/msdk/thrid/okio/n;->f(J)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_5

    .line 17
    .line 18
    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 19
    .line 20
    int-to-long v5, v2

    .line 21
    invoke-virtual {v4, v5, v6}, Lcom/mbridge/msdk/thrid/okio/c;->f(J)B

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x30

    .line 26
    .line 27
    if-lt v4, v5, :cond_0

    .line 28
    .line 29
    const/16 v5, 0x39

    .line 30
    .line 31
    if-le v4, v5, :cond_2

    .line 32
    .line 33
    :cond_0
    const/16 v5, 0x61

    .line 34
    .line 35
    if-lt v4, v5, :cond_1

    .line 36
    .line 37
    const/16 v5, 0x66

    .line 38
    .line 39
    if-le v4, v5, :cond_2

    .line 40
    .line 41
    :cond_1
    const/16 v5, 0x41

    .line 42
    .line 43
    if-lt v4, v5, :cond_3

    .line 44
    .line 45
    const/16 v5, 0x46

    .line 46
    .line 47
    if-le v4, v5, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 56
    .line 57
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v3, v0, v1

    .line 64
    .line 65
    const-string v1, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 66
    .line 67
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v2

    .line 75
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->i()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    return-wide v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public j()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/mbridge/msdk/thrid/okio/n$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okio/n$a;-><init>(Lcom/mbridge/msdk/thrid/okio/n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    .line 12
    .line 13
    const-wide/16 v2, 0x2000

    .line 14
    .line 15
    invoke-interface {v1, v0, v2, v3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, -0x1

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    return p1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okio/c;->read(Ljava/nio/ByteBuffer;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public readFully([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p1

    .line 2
    int-to-long v0, v0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okio/c;->readFully([B)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 15
    .line 16
    iget-wide v3, v2, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    .line 17
    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    cmp-long v5, v3, v5

    .line 21
    .line 22
    if-lez v5, :cond_1

    .line 23
    .line 24
    long-to-int v3, v3

    .line 25
    invoke-virtual {v2, p1, v1, v3}, Lcom/mbridge/msdk/thrid/okio/c;->read([BII)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    add-int/2addr v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    throw v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/thrid/okio/n;->e(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->readShort()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public skip(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    :goto_0
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-lez v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 12
    .line 13
    iget-wide v3, v2, Lcom/mbridge/msdk/thrid/okio/c;->b:J

    .line 14
    .line 15
    cmp-long v0, v3, v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    .line 20
    .line 21
    const-wide/16 v3, 0x2000

    .line 22
    .line 23
    invoke-interface {v0, v2, v3, v4}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/c;->size()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/n;->a:Lcom/mbridge/msdk/thrid/okio/c;

    .line 51
    .line 52
    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/thrid/okio/c;->skip(J)V

    .line 53
    .line 54
    .line 55
    sub-long/2addr p1, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "closed"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
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
    const-string v1, "buffer("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/n;->b:Lcom/mbridge/msdk/thrid/okio/s;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
