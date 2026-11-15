.class final Lcom/alibaba/fastjson/util/TypeUtils$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/alibaba/fastjson/util/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/sql/Time;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/sql/Time;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    instance-of v1, p1, Ljava/util/Date;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    new-instance v0, Ljava/sql/Time;

    .line 17
    .line 18
    check-cast p1, Ljava/util/Date;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    instance-of v1, p1, Ljava/util/Calendar;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    new-instance v0, Ljava/sql/Time;

    .line 33
    .line 34
    check-cast p1, Ljava/util/Calendar;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_3
    instance-of v1, p1, Ljava/math/BigDecimal;

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    check-cast v1, Ljava/math/BigDecimal;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->E0(Ljava/math/BigDecimal;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    instance-of v1, p1, Ljava/lang/Number;

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    check-cast v1, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    move-wide v4, v2

    .line 71
    :goto_0
    instance-of v1, p1, Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v1, :cond_b

    .line 74
    .line 75
    move-object v1, p1

    .line 76
    check-cast v1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_a

    .line 83
    .line 84
    const-string v4, "null"

    .line 85
    .line 86
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->v0(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v4

    .line 103
    goto :goto_2

    .line 104
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/16 v4, 0x8

    .line 109
    .line 110
    if-ne v0, v4, :cond_8

    .line 111
    .line 112
    const/4 v0, 0x2

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const/16 v4, 0x3a

    .line 118
    .line 119
    if-ne v0, v4, :cond_8

    .line 120
    .line 121
    const/4 v0, 0x5

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-ne v0, v4, :cond_8

    .line 127
    .line 128
    invoke-static {v1}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :cond_8
    new-instance v0, La5/e;

    .line 134
    .line 135
    invoke-direct {v0, v1}, La5/e;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    invoke-virtual {v0, v4}, La5/e;->x1(Z)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_9

    .line 144
    .line 145
    invoke-virtual {v0}, La5/c;->J0()Ljava/util/Calendar;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    goto :goto_2

    .line 158
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v2, "can not cast to Timestamp, value : "

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_a
    :goto_1
    return-object v0

    .line 182
    :cond_b
    :goto_2
    cmp-long v0, v4, v2

    .line 183
    .line 184
    if-lez v0, :cond_c

    .line 185
    .line 186
    new-instance p1, Ljava/sql/Time;

    .line 187
    .line 188
    invoke-direct {p1, v4, v5}, Ljava/sql/Time;-><init>(J)V

    .line 189
    .line 190
    .line 191
    return-object p1

    .line 192
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v2, "can not cast to Date, value : "

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v0
.end method
