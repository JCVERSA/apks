.class public Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;
.super Lcom/transsion/transfer/androidasync/t;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;
    }
.end annotation


# instance fields
.field private g:I

.field private h:I

.field private i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field j:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 6
    .line 7
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->j:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 19
    .line 20
    return-void
.end method

.method private O(CC)Z
    .locals 2

    .line 1
    if-eq p1, p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->ERROR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " was expected, got "

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->M(Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method private P(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->O(CC)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private Q(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->O(CC)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->ERROR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-lez p1, :cond_b

    .line 16
    .line 17
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$a;->a:[I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    aget p1, p1, v0

    .line 26
    .line 27
    packed-switch p1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    return-void

    .line 32
    :pswitch_1
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->m()C

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->Q(C)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 44
    .line 45
    if-lez p1, :cond_2

    .line 46
    .line 47
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_2
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->M(Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->m()C

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->P(C)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_3
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    .line 88
    .line 89
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    .line 94
    .line 95
    sub-int/2addr v0, p1

    .line 96
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    .line 97
    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 103
    .line 104
    :cond_4
    if-nez p1, :cond_5

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->j:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 108
    .line 109
    invoke-virtual {p2, v0, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->j:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 113
    .line 114
    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_4
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->m()C

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->Q(C)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_6

    .line 127
    .line 128
    return-void

    .line 129
    :cond_6
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_5
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->m()C

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    const/16 v0, 0xd

    .line 139
    .line 140
    if-ne p1, v0, :cond_7

    .line 141
    .line 142
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 143
    .line 144
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 148
    .line 149
    mul-int/lit8 v0, v0, 0x10

    .line 150
    .line 151
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 152
    .line 153
    const/16 v1, 0x61

    .line 154
    .line 155
    if-lt p1, v1, :cond_8

    .line 156
    .line 157
    const/16 v1, 0x66

    .line 158
    .line 159
    if-gt p1, v1, :cond_8

    .line 160
    .line 161
    add-int/lit8 p1, p1, -0x57

    .line 162
    .line 163
    add-int/2addr v0, p1

    .line 164
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_8
    const/16 v1, 0x30

    .line 168
    .line 169
    if-lt p1, v1, :cond_9

    .line 170
    .line 171
    const/16 v1, 0x39

    .line 172
    .line 173
    if-gt p1, v1, :cond_9

    .line 174
    .line 175
    add-int/lit8 p1, p1, -0x30

    .line 176
    .line 177
    add-int/2addr v0, p1

    .line 178
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    const/16 v1, 0x41

    .line 182
    .line 183
    if-lt p1, v1, :cond_a

    .line 184
    .line 185
    const/16 v1, 0x46

    .line 186
    .line 187
    if-gt p1, v1, :cond_a

    .line 188
    .line 189
    add-int/lit8 p1, p1, -0x37

    .line 190
    .line 191
    add-int/2addr v0, p1

    .line 192
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 193
    .line 194
    :goto_2
    iget p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    .line 195
    .line 196
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_a
    new-instance p2, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;

    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v1, "invalid chunk length: "

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-direct {p2, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->M(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :goto_3
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->M(Ljava/lang/Exception;)V

    .line 227
    .line 228
    .line 229
    :cond_b
    return-void

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected M(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;

    .line 10
    .line 11
    const-string v0, "chunked input ended before final chunk"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
