.class public Lcom/mbridge/msdk/foundation/same/net/utils/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lcom/mbridge/msdk/foundation/same/net/exception/a;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "Network error,Load failed"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->a:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->c:Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget v2, p0, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;->d:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_0
    const/4 v3, -0x2

    .line 20
    if-eq v1, v3, :cond_9

    .line 21
    .line 22
    const/16 v3, 0xf

    .line 23
    .line 24
    if-eq v1, v3, :cond_8

    .line 25
    .line 26
    const v3, 0xd6d97

    .line 27
    .line 28
    .line 29
    if-eq v1, v3, :cond_7

    .line 30
    .line 31
    const v3, 0xd6da9

    .line 32
    .line 33
    .line 34
    if-eq v1, v3, :cond_6

    .line 35
    .line 36
    packed-switch v1, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    packed-switch v1, :pswitch_data_1

    .line 40
    .line 41
    .line 42
    const-string p0, "Network error,unknown"

    .line 43
    .line 44
    :goto_1
    move-object v0, p0

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :pswitch_0
    if-eqz p0, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/net/toolbox/a;->a:[B

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    new-instance v1, Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 56
    .line 57
    .line 58
    move-object v0, v1

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    const-string v0, "Socket exception message is NULL"

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const-string p0, "Unknown socket exception"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_1
    const-string p0, "Network error,ConnectException"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :pswitch_2
    const-string p0, "Network error\uff0csslp exception"

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_3
    const-string p0, "Network error,socket timeout exception"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_4
    const-string p0, "Cast exception, return data can not be casted correctly"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_5
    if-eqz v2, :cond_4

    .line 80
    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v1, "The server returns an exception state code "

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const-string p0, "The server returns an exception "

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_6
    if-eqz v2, :cond_5

    .line 103
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "Network error,please check state code "

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    goto :goto_1

    .line 122
    :cond_5
    const-string p0, "Network error,please check "

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :pswitch_7
    const-string p0, "Network error\uff0chttps is not work,please check your phone time"

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :pswitch_8
    const-string p0, "Network unknown error"

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_9
    const-string p0, "Network error,timeout exception"

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :pswitch_a
    const-string p0, "Network error,I/O exception"

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    const-string p0, "Network error,UnknownHostException"

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    const-string p0, "timeout"

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    const-string p0, "Network error,I/O exception contents null"

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_9
    const-string p0, "Network is canceled"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :goto_3
    :pswitch_b
    return-object v0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

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
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
