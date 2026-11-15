.class public Lcom/transsion/transfer/androidasync/http/v;
.super Lcom/transsion/transfer/androidasync/http/a0;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static i(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xc7

    .line 6
    .line 7
    if-le p0, v0, :cond_2

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0xcc

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x130

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method


# virtual methods
.method public c(Lcom/transsion/transfer/androidasync/http/g$f;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/Protocol;->get(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_0:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/http/g$i;->E()Lcom/transsion/transfer/androidasync/s;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v0, v0, Lvt/a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/g$i;->E()Lcom/transsion/transfer/androidasync/s;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/s;->d()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public f(Lcom/transsion/transfer/androidasync/http/g$c;)Z
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/Protocol;->get(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_0:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/http/a0;->f(Lcom/transsion/transfer/androidasync/http/g$c;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->e()Ltt/a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v1}, Ltt/a;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ltz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1}, Ltt/a;->length()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "Content-Length"

    .line 49
    .line 50
    invoke-virtual {v2, v4, v3}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    .line 56
    .line 57
    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/http/g$i;->f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "Connection"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "close"

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    .line 82
    .line 83
    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/http/g$i;->f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v3, "Transfer-Encoding"

    .line 92
    .line 93
    const-string v4, "Chunked"

    .line 94
    .line 95
    invoke-virtual {v2, v3, v4}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    .line 96
    .line 97
    .line 98
    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    .line 99
    .line 100
    new-instance v3, Lvt/a;

    .line 101
    .line 102
    iget-object v4, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    .line 103
    .line 104
    invoke-direct {v3, v4}, Lvt/a;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/http/g$i;->f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->n()Lcom/transsion/transfer/androidasync/http/y;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const/4 v4, 0x1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    invoke-interface {v1}, Ltt/a;->length()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-ltz v5, :cond_4

    .line 138
    .line 139
    invoke-interface {v1}, Ltt/a;->length()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    array-length v5, v3

    .line 144
    add-int/2addr v1, v5

    .line 145
    const/16 v5, 0x400

    .line 146
    .line 147
    if-ge v1, v5, :cond_4

    .line 148
    .line 149
    new-instance v1, Lcom/transsion/transfer/androidasync/n;

    .line 150
    .line 151
    iget-object v5, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    .line 152
    .line 153
    invoke-interface {v5}, Lcom/transsion/transfer/androidasync/http/g$i;->E()Lcom/transsion/transfer/androidasync/s;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-direct {v1, v5}, Lcom/transsion/transfer/androidasync/n;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v4}, Lcom/transsion/transfer/androidasync/n;->g(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v5, p1, Lcom/transsion/transfer/androidasync/http/g$c;->g:Lcom/transsion/transfer/androidasync/http/g$i;

    .line 164
    .line 165
    invoke-interface {v5, v1}, Lcom/transsion/transfer/androidasync/http/g$i;->f(Lcom/transsion/transfer/androidasync/s;)Lcom/transsion/transfer/androidasync/http/g$i;

    .line 166
    .line 167
    .line 168
    move-object v5, v1

    .line 169
    goto :goto_1

    .line 170
    :cond_4
    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    .line 171
    .line 172
    const/4 v5, 0x0

    .line 173
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v7, "\n"

    .line 179
    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/g$c;->h:Lst/a;

    .line 194
    .line 195
    new-instance v2, Lcom/transsion/transfer/androidasync/http/v$a;

    .line 196
    .line 197
    invoke-direct {v2, p0, v0, v5}, Lcom/transsion/transfer/androidasync/http/v$a;-><init>(Lcom/transsion/transfer/androidasync/http/v;Lst/a;Lcom/transsion/transfer/androidasync/n;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v1, v3, v2}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLst/a;)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Lcom/transsion/transfer/androidasync/http/v$b;

    .line 204
    .line 205
    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/androidasync/http/v$b;-><init>(Lcom/transsion/transfer/androidasync/http/v;Lcom/transsion/transfer/androidasync/http/g$c;)V

    .line 206
    .line 207
    .line 208
    new-instance v1, Lcom/transsion/transfer/androidasync/v;

    .line 209
    .line 210
    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/v;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$c;->f:Lcom/transsion/transfer/androidasync/j;

    .line 214
    .line 215
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/v;->a(Lcom/transsion/transfer/androidasync/v$a;)V

    .line 219
    .line 220
    .line 221
    return v4
.end method
