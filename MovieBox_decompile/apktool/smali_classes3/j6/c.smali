.class public abstract Lj6/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:Ljava/util/List;

.field b:Lj6/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/io/InputStream;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Lj6/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lj6/c;->b:Lj6/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract d()I
.end method

.method protected e(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lj6/c;->a:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lj6/c;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_2
    return-object v0
.end method

.method protected f(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p1, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    packed-switch p1, :pswitch_data_2

    .line 8
    .line 9
    .line 10
    packed-switch p1, :pswitch_data_3

    .line 11
    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :pswitch_0
    const-string p1, "HTTP Version Not Supported"

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_1
    const-string p1, "Gateway Timeout"

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :pswitch_2
    const-string p1, "Service Unavailable"

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :pswitch_3
    const-string p1, "Bad Gateway"

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :pswitch_4
    const-string p1, "Not Implemented"

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :pswitch_5
    const-string p1, "Internal Server Error"

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :pswitch_6
    const-string p1, "Unsupported Media Type"

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :pswitch_7
    const-string p1, "Request-URI Too Large"

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :pswitch_8
    const-string p1, "Request Entity Too Large"

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :pswitch_9
    const-string p1, "Precondition Failed"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_a
    const-string p1, "Length Required"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_b
    const-string p1, "Gone"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_c
    const-string p1, "Conflict"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_d
    const-string p1, "Request Time-Out"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_e
    const-string p1, "Proxy Authentication Required"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_f
    const-string p1, "Not Acceptable"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_10
    const-string p1, "Method Not Allowed"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_11
    const-string p1, "Not Found"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_12
    const-string p1, "Forbidden"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_13
    const-string p1, "Payment Required"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_14
    const-string p1, "Unauthorized"

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_15
    const-string p1, "Bad Request"

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_16
    const-string p1, "Use Proxy"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_17
    const-string p1, "Not Modified"

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_18
    const-string p1, "See Other"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_19
    const-string p1, "Temporary Redirect"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_1a
    const-string p1, "Moved Permanently"

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_1b
    const-string p1, "Multiple Choices"

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_1c
    const-string p1, "Partial Content"

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_1d
    const-string p1, "Reset Content"

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_1e
    const-string p1, "No Content"

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_1f
    const-string p1, "Non-Authoritative"

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_20
    const-string p1, "Accepted"

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_21
    const-string p1, "Created"

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :pswitch_22
    const-string p1, "OK"

    .line 129
    .line 130
    :goto_0
    return-object p1

    .line 131
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :pswitch_data_2
    .packed-switch 0x190
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :pswitch_data_3
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract h()Ljava/util/List;
.end method

.method public abstract i()Z
.end method

.method public abstract j()Ljava/lang/String;
.end method
