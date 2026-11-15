.class public La5/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La5/a$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:La5/i;

.field protected c:La5/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/text/DateFormat;

.field public final f:La5/b;

.field protected g:La5/g;

.field private h:[La5/g;

.field private i:I

.field private j:Ljava/util/List;

.field public k:I

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:I

.field private o:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La5/a;->p:Ljava/util/Set;

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    new-array v1, v1, [Ljava/lang/Class;

    .line 11
    .line 12
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 16
    .line 17
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    aput-object v2, v1, v3

    .line 31
    .line 32
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    aput-object v2, v1, v3

    .line 36
    .line 37
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    const/4 v3, 0x5

    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    const/4 v3, 0x6

    .line 45
    aput-object v2, v1, v3

    .line 46
    .line 47
    const-class v2, Ljava/lang/Boolean;

    .line 48
    .line 49
    const/4 v3, 0x7

    .line 50
    aput-object v2, v1, v3

    .line 51
    .line 52
    const-class v2, Ljava/lang/Byte;

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    aput-object v2, v1, v3

    .line 57
    .line 58
    const-class v2, Ljava/lang/Short;

    .line 59
    .line 60
    const/16 v3, 0x9

    .line 61
    .line 62
    aput-object v2, v1, v3

    .line 63
    .line 64
    const-class v2, Ljava/lang/Integer;

    .line 65
    .line 66
    const/16 v3, 0xa

    .line 67
    .line 68
    aput-object v2, v1, v3

    .line 69
    .line 70
    const-class v2, Ljava/lang/Long;

    .line 71
    .line 72
    const/16 v3, 0xb

    .line 73
    .line 74
    aput-object v2, v1, v3

    .line 75
    .line 76
    const-class v2, Ljava/lang/Float;

    .line 77
    .line 78
    const/16 v3, 0xc

    .line 79
    .line 80
    aput-object v2, v1, v3

    .line 81
    .line 82
    const-class v2, Ljava/lang/Double;

    .line 83
    .line 84
    const/16 v3, 0xd

    .line 85
    .line 86
    aput-object v2, v1, v3

    .line 87
    .line 88
    const-class v2, Ljava/math/BigInteger;

    .line 89
    .line 90
    const/16 v3, 0xe

    .line 91
    .line 92
    aput-object v2, v1, v3

    .line 93
    .line 94
    const-class v2, Ljava/math/BigDecimal;

    .line 95
    .line 96
    const/16 v3, 0xf

    .line 97
    .line 98
    aput-object v2, v1, v3

    .line 99
    .line 100
    const-class v2, Ljava/lang/String;

    .line 101
    .line 102
    const/16 v3, 0x10

    .line 103
    .line 104
    aput-object v2, v1, v3

    .line 105
    .line 106
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;La5/b;La5/h;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, La5/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, La5/a;->i:I

    .line 8
    iput v0, p0, La5/a;->k:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, La5/a;->l:Ljava/util/List;

    .line 10
    iput-object v1, p0, La5/a;->m:Ljava/util/List;

    .line 11
    iput v0, p0, La5/a;->n:I

    .line 12
    iput-object v1, p0, La5/a;->o:[Ljava/lang/String;

    .line 13
    iput-object p2, p0, La5/a;->f:La5/b;

    .line 14
    iput-object p1, p0, La5/a;->a:Ljava/lang/Object;

    .line 15
    iput-object p3, p0, La5/a;->c:La5/h;

    .line 16
    iget-object p1, p3, La5/h;->e:La5/i;

    iput-object p1, p0, La5/a;->b:La5/i;

    .line 17
    invoke-interface {p2}, La5/b;->d()C

    move-result p1

    const/16 p3, 0x7b

    if-ne p1, p3, :cond_0

    .line 18
    invoke-interface {p2}, La5/b;->next()C

    .line 19
    check-cast p2, La5/c;

    const/16 p1, 0xc

    iput p1, p2, La5/c;->a:I

    goto :goto_0

    :cond_0
    const/16 p3, 0x5b

    if-ne p1, p3, :cond_1

    .line 20
    invoke-interface {p2}, La5/b;->next()C

    .line 21
    check-cast p2, La5/c;

    const/16 p1, 0xe

    iput p1, p2, La5/c;->a:I

    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {p2}, La5/b;->d0()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, La5/h;->t()La5/h;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, La5/a;-><init>(Ljava/lang/String;La5/h;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La5/h;)V
    .locals 2

    .line 2
    new-instance v0, La5/e;

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, La5/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, La5/a;-><init>(Ljava/lang/Object;La5/b;La5/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La5/h;I)V
    .locals 1

    .line 3
    new-instance v0, La5/e;

    invoke-direct {v0, p1, p3}, La5/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, La5/a;-><init>(Ljava/lang/Object;La5/b;La5/h;)V

    return-void
.end method

.method public constructor <init>([CILa5/h;I)V
    .locals 1

    .line 4
    new-instance v0, La5/e;

    invoke-direct {v0, p1, p2, p4}, La5/e;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, La5/a;-><init>(Ljava/lang/Object;La5/b;La5/h;)V

    return-void
.end method

.method private f(La5/g;)V
    .locals 5

    .line 1
    iget v0, p0, La5/a;->i:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, La5/a;->i:I

    .line 6
    .line 7
    iget-object v1, p0, La5/a;->h:[La5/g;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v1, v1, [La5/g;

    .line 14
    .line 15
    iput-object v1, p0, La5/a;->h:[La5/g;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    array-length v2, v1

    .line 19
    if-lt v0, v2, :cond_1

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    mul-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    div-int/lit8 v2, v2, 0x2

    .line 25
    .line 26
    new-array v2, v2, [La5/g;

    .line 27
    .line 28
    array-length v3, v1

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, La5/a;->h:[La5/g;

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object v1, p0, La5/a;->h:[La5/g;

    .line 36
    .line 37
    aput-object p1, v1, v0

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public A0(La5/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 4
    .line 5
    invoke-interface {v0, v1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, La5/a;->g:La5/g;

    .line 13
    .line 14
    return-void
.end method

.method public B0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La5/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, La5/a;->e:Ljava/text/DateFormat;

    .line 5
    .line 6
    return-void
.end method

.method public D0(I)V
    .locals 0

    .line 1
    iput p1, p0, La5/a;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public S(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq v1, v2, :cond_f

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    if-eq v1, v3, :cond_e

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-eq v1, v3, :cond_b

    .line 15
    .line 16
    const/16 v3, 0xc

    .line 17
    .line 18
    if-eq v1, v3, :cond_8

    .line 19
    .line 20
    const/16 v3, 0xe

    .line 21
    .line 22
    if-eq v1, v3, :cond_5

    .line 23
    .line 24
    const-string v3, "syntax error, "

    .line 25
    .line 26
    const/16 v4, 0x12

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-eq v1, v4, :cond_3

    .line 30
    .line 31
    const/16 v6, 0x1a

    .line 32
    .line 33
    if-eq v1, v6, :cond_2

    .line 34
    .line 35
    packed-switch v1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    packed-switch v1, :pswitch_data_1

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, La5/b;->k()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :pswitch_0
    invoke-interface {v0}, La5/b;->d0()V

    .line 67
    .line 68
    .line 69
    return-object v5

    .line 70
    :pswitch_1
    invoke-interface {v0}, La5/b;->d0()V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/util/TreeSet;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, p1}, La5/a;->e0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_2
    invoke-interface {v0}, La5/b;->d0()V

    .line 83
    .line 84
    .line 85
    new-instance v0, Ljava/util/HashSet;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0, p1}, La5/a;->e0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :pswitch_3
    invoke-interface {v0}, La5/b;->W()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    return-object v5

    .line 101
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "unterminated json string, "

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, La5/b;->k()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :pswitch_4
    invoke-interface {v0, v4}, La5/b;->f0(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, La5/b;->t0()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-ne p1, v4, :cond_1

    .line 136
    .line 137
    const/16 p1, 0xa

    .line 138
    .line 139
    invoke-interface {v0, p1}, La5/b;->f0(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, La5/a;->b(I)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v0}, La5/b;->r0()Ljava/lang/Number;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    invoke-virtual {p0, v2}, La5/a;->b(I)V

    .line 154
    .line 155
    .line 156
    const/16 p1, 0xb

    .line 157
    .line 158
    invoke-virtual {p0, p1}, La5/a;->b(I)V

    .line 159
    .line 160
    .line 161
    new-instance p1, Ljava/util/Date;

    .line 162
    .line 163
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 168
    .line 169
    const-string v0, "syntax error"

    .line 170
    .line 171
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :pswitch_5
    invoke-interface {v0}, La5/b;->d0()V

    .line 176
    .line 177
    .line 178
    return-object v5

    .line 179
    :pswitch_6
    invoke-interface {v0}, La5/b;->d0()V

    .line 180
    .line 181
    .line 182
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 183
    .line 184
    return-object p1

    .line 185
    :pswitch_7
    invoke-interface {v0}, La5/b;->d0()V

    .line 186
    .line 187
    .line 188
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 189
    .line 190
    return-object p1

    .line 191
    :cond_2
    invoke-interface {v0}, La5/b;->l0()[B

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-interface {v0}, La5/b;->d0()V

    .line 196
    .line 197
    .line 198
    return-object p1

    .line 199
    :cond_3
    invoke-interface {v0}, La5/b;->o0()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v1, "NaN"

    .line 204
    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_4

    .line 210
    .line 211
    invoke-interface {v0}, La5/b;->d0()V

    .line 212
    .line 213
    .line 214
    return-object v5

    .line 215
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 216
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-interface {v0}, La5/b;->k()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_5
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseNativeJavaObject:Lcom/alibaba/fastjson/parser/Feature;

    .line 241
    .line 242
    invoke-virtual {p0, v1}, La5/a;->w(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_6

    .line 247
    .line 248
    new-instance v1, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    .line 255
    .line 256
    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 257
    .line 258
    .line 259
    :goto_0
    invoke-virtual {p0, v1, p1}, La5/a;->e0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    .line 263
    .line 264
    invoke-interface {v0, p1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_7

    .line 269
    .line 270
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    return-object p1

    .line 275
    :cond_7
    return-object v1

    .line 276
    :cond_8
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseNativeJavaObject:Lcom/alibaba/fastjson/parser/Feature;

    .line 277
    .line 278
    invoke-virtual {p0, v1}, La5/a;->w(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_a

    .line 283
    .line 284
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 285
    .line 286
    invoke-interface {v0, v1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_9

    .line 291
    .line 292
    new-instance v0, Ljava/util/HashMap;

    .line 293
    .line 294
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 299
    .line 300
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    .line 305
    .line 306
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 307
    .line 308
    invoke-interface {v0, v2}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 313
    .line 314
    .line 315
    move-object v0, v1

    .line 316
    :goto_1
    check-cast v0, Ljava/util/Map;

    .line 317
    .line 318
    invoke-virtual {p0, v0, p1}, La5/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    return-object p1

    .line 323
    :cond_b
    invoke-interface {v0}, La5/b;->o0()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    const/16 v1, 0x10

    .line 328
    .line 329
    invoke-interface {v0, v1}, La5/b;->f0(I)V

    .line 330
    .line 331
    .line 332
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 333
    .line 334
    invoke-interface {v0, v1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_d

    .line 339
    .line 340
    new-instance v0, La5/e;

    .line 341
    .line 342
    invoke-direct {v0, p1}, La5/e;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :try_start_0
    invoke-virtual {v0}, La5/e;->w1()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_c

    .line 350
    .line 351
    invoke-virtual {v0}, La5/c;->J0()Ljava/util/Calendar;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 356
    .line 357
    .line 358
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v0}, La5/c;->close()V

    .line 360
    .line 361
    .line 362
    return-object p1

    .line 363
    :catchall_0
    move-exception p1

    .line 364
    goto :goto_2

    .line 365
    :cond_c
    invoke-virtual {v0}, La5/c;->close()V

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :goto_2
    invoke-virtual {v0}, La5/c;->close()V

    .line 370
    .line 371
    .line 372
    throw p1

    .line 373
    :cond_d
    :goto_3
    return-object p1

    .line 374
    :cond_e
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 375
    .line 376
    invoke-interface {v0, p1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    invoke-interface {v0, p1}, La5/b;->B0(Z)Ljava/lang/Number;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-interface {v0}, La5/b;->d0()V

    .line 385
    .line 386
    .line 387
    return-object p1

    .line 388
    :cond_f
    invoke-interface {v0}, La5/b;->r0()Ljava/lang/Number;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-interface {v0}, La5/b;->d0()V

    .line 393
    .line 394
    .line 395
    return-object p1

    .line 396
    nop

    .line 397
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public T(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, La5/a;->W(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public W(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, La5/a;->X(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public X(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x16

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 16
    .line 17
    invoke-interface {v0}, La5/b;->d0()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 21
    .line 22
    invoke-interface {v0}, La5/b;->t0()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :cond_1
    const/16 v1, 0xe

    .line 27
    .line 28
    if-ne v0, v1, :cond_c

    .line 29
    .line 30
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    const-class v2, Ljava/lang/String;

    .line 34
    .line 35
    if-ne v0, p1, :cond_2

    .line 36
    .line 37
    sget-object v0, Lc5/j0;->a:Lc5/j0;

    .line 38
    .line 39
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    invoke-interface {v3, v4}, La5/b;->f0(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    if-ne v2, p1, :cond_3

    .line 47
    .line 48
    sget-object v0, Lc5/k1;->a:Lc5/k1;

    .line 49
    .line 50
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 51
    .line 52
    invoke-interface {v3, v1}, La5/b;->f0(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, La5/a;->c:La5/h;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 63
    .line 64
    invoke-interface {v0}, Lb5/b2;->b()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-interface {v3, v4}, La5/b;->f0(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v3, p0, La5/a;->g:La5/g;

    .line 72
    .line 73
    invoke-virtual {p0, p2, p3}, La5/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 74
    .line 75
    .line 76
    const/4 p3, 0x0

    .line 77
    :goto_1
    :try_start_0
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 78
    .line 79
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 80
    .line 81
    invoke-interface {v4, v5}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const/16 v5, 0x10

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    :goto_2
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 90
    .line 91
    invoke-interface {v4}, La5/b;->t0()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ne v4, v5, :cond_4

    .line 96
    .line 97
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 98
    .line 99
    invoke-interface {v4}, La5/b;->d0()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :cond_4
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 107
    .line 108
    invoke-interface {v4}, La5/b;->t0()I

    .line 109
    .line 110
    .line 111
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    const/16 v6, 0xf

    .line 113
    .line 114
    if-ne v4, v6, :cond_5

    .line 115
    .line 116
    invoke-virtual {p0, v3}, La5/a;->A0(La5/g;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, La5/a;->f:La5/b;

    .line 120
    .line 121
    invoke-interface {p1, v5}, La5/b;->f0(I)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    :try_start_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 126
    .line 127
    const/4 v6, 0x0

    .line 128
    if-ne v4, p1, :cond_6

    .line 129
    .line 130
    sget-object v4, Lc5/j0;->a:Lc5/j0;

    .line 131
    .line 132
    invoke-virtual {v4, p0, v6, v6}, Lc5/j0;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_6
    if-ne v2, p1, :cond_9

    .line 141
    .line 142
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 143
    .line 144
    invoke-interface {v4}, La5/b;->t0()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-ne v4, v1, :cond_7

    .line 149
    .line 150
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 151
    .line 152
    invoke-interface {v4}, La5/b;->o0()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 157
    .line 158
    invoke-interface {v4, v5}, La5/b;->f0(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    invoke-virtual {p0}, La5/a;->x()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-nez v4, :cond_8

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    :goto_3
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_9
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 178
    .line 179
    invoke-interface {v4}, La5/b;->t0()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const/16 v7, 0x8

    .line 184
    .line 185
    if-ne v4, v7, :cond_a

    .line 186
    .line 187
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 188
    .line 189
    invoke-interface {v4}, La5/b;->d0()V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-interface {v0, p0, p1, v4}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    :goto_4
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p2}, La5/a;->j(Ljava/util/Collection;)V

    .line 205
    .line 206
    .line 207
    :goto_5
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 208
    .line 209
    invoke-interface {v4}, La5/b;->t0()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-ne v4, v5, :cond_b

    .line 214
    .line 215
    iget-object v4, p0, La5/a;->f:La5/b;

    .line 216
    .line 217
    invoke-interface {v0}, Lb5/b2;->b()I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    invoke-interface {v4, v5}, La5/b;->f0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .line 223
    .line 224
    :cond_b
    add-int/lit8 p3, p3, 0x1

    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :goto_6
    invoke-virtual {p0, v3}, La5/a;->A0(La5/g;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 233
    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v1, "field "

    .line 240
    .line 241
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p3, " expect \'[\', but "

    .line 248
    .line 249
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, La5/f;->a(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string p3, ", "

    .line 260
    .line 261
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object p3, p0, La5/a;->f:La5/b;

    .line 265
    .line 266
    invoke-interface {p3}, La5/b;->k()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p3

    .line 270
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p1
.end method

.method public final b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, La5/b;->d0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "syntax error, expect "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, La5/f;->a(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ", actual "

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, La5/b;->t0()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, La5/f;->a(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    .line 4
    .line 5
    invoke-interface {v0, v1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, La5/b;->t0()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x14

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "not close json text, token : "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, La5/b;->t0()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v3}, La5/f;->a(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-interface {v0}, La5/b;->close()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    invoke-interface {v0}, La5/b;->close()V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->v()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, La5/b;->t0()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    const-string v3, "type not match error"

    .line 12
    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, La5/b;->o0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, La5/b;->d0()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, La5/b;->t0()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/16 v1, 0x10

    .line 33
    .line 34
    if-ne p1, v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, La5/b;->d0()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 41
    .line 42
    invoke-direct {p1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 47
    .line 48
    invoke-direct {p1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final d0(Ljava/util/Collection;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, La5/a;->e0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final e0(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x15

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, La5/b;->t0()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x16

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-interface {v0}, La5/b;->d0()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-interface {v0}, La5/b;->t0()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0xe

    .line 27
    .line 28
    if-ne v1, v2, :cond_14

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-interface {v0, v1}, La5/b;->f0(I)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, La5/a;->g:La5/g;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    iget v4, v3, La5/g;->d:I

    .line 39
    .line 40
    const/16 v5, 0x200

    .line 41
    .line 42
    if-gt v4, v5, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 46
    .line 47
    const-string p2, "array level > 512"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, La5/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 54
    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    move v4, p2

    .line 58
    :goto_1
    :try_start_0
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 59
    .line 60
    invoke-interface {v0, v5}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/16 v6, 0x10

    .line 65
    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    :goto_2
    invoke-interface {v0}, La5/b;->t0()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-ne v5, v6, :cond_4

    .line 73
    .line 74
    invoke-interface {v0}, La5/b;->d0()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_4
    invoke-interface {v0}, La5/b;->t0()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/4 v7, 0x2

    .line 89
    if-eq v5, v7, :cond_11

    .line 90
    .line 91
    const/4 v7, 0x3

    .line 92
    if-eq v5, v7, :cond_f

    .line 93
    .line 94
    if-eq v5, v1, :cond_d

    .line 95
    .line 96
    const/4 v7, 0x6

    .line 97
    if-eq v5, v7, :cond_c

    .line 98
    .line 99
    const/4 v7, 0x7

    .line 100
    if-eq v5, v7, :cond_b

    .line 101
    .line 102
    const/16 v7, 0x8

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    if-eq v5, v7, :cond_a

    .line 106
    .line 107
    const/16 v7, 0xc

    .line 108
    .line 109
    if-eq v5, v7, :cond_9

    .line 110
    .line 111
    const/16 v7, 0x14

    .line 112
    .line 113
    if-eq v5, v7, :cond_8

    .line 114
    .line 115
    const/16 v7, 0x17

    .line 116
    .line 117
    if-eq v5, v7, :cond_7

    .line 118
    .line 119
    if-eq v5, v2, :cond_6

    .line 120
    .line 121
    const/16 v7, 0xf

    .line 122
    .line 123
    if-eq v5, v7, :cond_5

    .line 124
    .line 125
    invoke-virtual {p0}, La5/a;->x()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_5
    invoke-interface {v0, v6}, La5/b;->f0(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v3}, La5/a;->A0(La5/g;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_6
    :try_start_1
    new-instance v8, Lcom/alibaba/fastjson/JSONArray;

    .line 139
    .line 140
    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {p0, v8, v5}, La5/a;->e0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    .line 151
    .line 152
    invoke-interface {v0, v5}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_12

    .line 157
    .line 158
    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :cond_7
    invoke-interface {v0, v1}, La5/b;->f0(I)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_5

    .line 168
    .line 169
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 170
    .line 171
    const-string p2, "unclosed jsonArray"

    .line 172
    .line 173
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_9
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    .line 178
    .line 179
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 180
    .line 181
    invoke-interface {v0, v7}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 186
    .line 187
    .line 188
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {p0, v5, v7}, La5/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    goto :goto_5

    .line 197
    :cond_a
    invoke-interface {v0, v1}, La5/b;->f0(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_b
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_c
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_d
    invoke-interface {v0}, La5/b;->o0()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 218
    .line 219
    .line 220
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 221
    .line 222
    invoke-interface {v0, v5}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_12

    .line 227
    .line 228
    new-instance v5, La5/e;

    .line 229
    .line 230
    invoke-direct {v5, v8}, La5/e;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, La5/e;->w1()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_e

    .line 238
    .line 239
    invoke-virtual {v5}, La5/c;->J0()Ljava/util/Calendar;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    move-object v8, v7

    .line 248
    :cond_e
    invoke-virtual {v5}, La5/c;->close()V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_f
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 253
    .line 254
    invoke-interface {v0, v5}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_10

    .line 259
    .line 260
    const/4 v5, 0x1

    .line 261
    invoke-interface {v0, v5}, La5/b;->B0(Z)Ljava/lang/Number;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    :goto_3
    move-object v8, v5

    .line 266
    goto :goto_4

    .line 267
    :cond_10
    invoke-interface {v0, p2}, La5/b;->B0(Z)Ljava/lang/Number;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    goto :goto_3

    .line 272
    :goto_4
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_11
    invoke-interface {v0}, La5/b;->r0()Ljava/lang/Number;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 281
    .line 282
    .line 283
    :cond_12
    :goto_5
    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, p1}, La5/a;->j(Ljava/util/Collection;)V

    .line 287
    .line 288
    .line 289
    invoke-interface {v0}, La5/b;->t0()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-ne v5, v6, :cond_13

    .line 294
    .line 295
    invoke-interface {v0, v1}, La5/b;->f0(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .line 297
    .line 298
    :cond_13
    add-int/lit8 v4, v4, 0x1

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :goto_6
    :try_start_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 303
    .line 304
    const-string v0, "unkown error"

    .line 305
    .line 306
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :goto_7
    invoke-virtual {p0, v3}, La5/a;->A0(La5/g;)V

    .line 311
    .line 312
    .line 313
    throw p1

    .line 314
    :cond_14
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v2, "syntax error, expect [, actual "

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-interface {v0}, La5/b;->t0()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-static {v2}, La5/f;->a(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v2, ", pos "

    .line 338
    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-interface {v0}, La5/b;->h()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v0, ", fieldName "

    .line 350
    .line 351
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p1
.end method

.method public f0([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, La5/a;->f:La5/b;

    .line 6
    .line 7
    invoke-interface {v2}, La5/b;->t0()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/16 v4, 0x10

    .line 13
    .line 14
    const/16 v5, 0x8

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, La5/a;->f:La5/b;

    .line 19
    .line 20
    invoke-interface {v1, v4}, La5/b;->f0(I)V

    .line 21
    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    iget-object v2, v0, La5/a;->f:La5/b;

    .line 25
    .line 26
    invoke-interface {v2}, La5/b;->t0()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v6, 0xe

    .line 31
    .line 32
    if-ne v2, v6, :cond_15

    .line 33
    .line 34
    array-length v2, v1

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    array-length v7, v1

    .line 38
    const-string v8, "syntax error"

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/16 v10, 0xf

    .line 42
    .line 43
    if-nez v7, :cond_2

    .line 44
    .line 45
    iget-object v1, v0, La5/a;->f:La5/b;

    .line 46
    .line 47
    invoke-interface {v1, v10}, La5/b;->f0(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, La5/a;->f:La5/b;

    .line 51
    .line 52
    invoke-interface {v1}, La5/b;->t0()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ne v1, v10, :cond_1

    .line 57
    .line 58
    iget-object v1, v0, La5/a;->f:La5/b;

    .line 59
    .line 60
    invoke-interface {v1, v4}, La5/b;->f0(I)V

    .line 61
    .line 62
    .line 63
    new-array v1, v9, [Ljava/lang/Object;

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 67
    .line 68
    invoke-direct {v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_2
    iget-object v7, v0, La5/a;->f:La5/b;

    .line 73
    .line 74
    const/4 v11, 0x2

    .line 75
    invoke-interface {v7, v11}, La5/b;->f0(I)V

    .line 76
    .line 77
    .line 78
    move v7, v9

    .line 79
    :goto_0
    array-length v12, v1

    .line 80
    if-ge v7, v12, :cond_13

    .line 81
    .line 82
    iget-object v12, v0, La5/a;->f:La5/b;

    .line 83
    .line 84
    invoke-interface {v12}, La5/b;->t0()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const-string v13, "syntax error :"

    .line 89
    .line 90
    if-ne v12, v5, :cond_3

    .line 91
    .line 92
    iget-object v12, v0, La5/a;->f:La5/b;

    .line 93
    .line 94
    invoke-interface {v12, v4}, La5/b;->f0(I)V

    .line 95
    .line 96
    .line 97
    move-object v12, v3

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_3
    aget-object v12, v1, v7

    .line 101
    .line 102
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 103
    .line 104
    if-eq v12, v14, :cond_e

    .line 105
    .line 106
    const-class v14, Ljava/lang/Integer;

    .line 107
    .line 108
    if-ne v12, v14, :cond_4

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_4
    const-class v14, Ljava/lang/String;

    .line 113
    .line 114
    const/4 v15, 0x4

    .line 115
    if-ne v12, v14, :cond_6

    .line 116
    .line 117
    iget-object v14, v0, La5/a;->f:La5/b;

    .line 118
    .line 119
    invoke-interface {v14}, La5/b;->t0()I

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    if-ne v14, v15, :cond_5

    .line 124
    .line 125
    iget-object v12, v0, La5/a;->f:La5/b;

    .line 126
    .line 127
    invoke-interface {v12}, La5/b;->o0()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    iget-object v14, v0, La5/a;->f:La5/b;

    .line 132
    .line 133
    invoke-interface {v14, v4}, La5/b;->f0(I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_5
    invoke-virtual/range {p0 .. p0}, La5/a;->x()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    iget-object v15, v0, La5/a;->c:La5/h;

    .line 143
    .line 144
    invoke-static {v14, v12, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :cond_6
    array-length v14, v1

    .line 151
    add-int/lit8 v14, v14, -0x1

    .line 152
    .line 153
    if-ne v7, v14, :cond_9

    .line 154
    .line 155
    instance-of v14, v12, Ljava/lang/Class;

    .line 156
    .line 157
    if-eqz v14, :cond_9

    .line 158
    .line 159
    move-object v14, v12

    .line 160
    check-cast v14, Ljava/lang/Class;

    .line 161
    .line 162
    const-class v5, [B

    .line 163
    .line 164
    if-eq v14, v5, :cond_7

    .line 165
    .line 166
    const-class v5, [C

    .line 167
    .line 168
    if-ne v14, v5, :cond_8

    .line 169
    .line 170
    :cond_7
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 171
    .line 172
    invoke-interface {v5}, La5/b;->t0()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eq v5, v15, :cond_9

    .line 177
    .line 178
    :cond_8
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    goto :goto_1

    .line 187
    :cond_9
    move-object v14, v3

    .line 188
    move v5, v9

    .line 189
    :goto_1
    if-eqz v5, :cond_d

    .line 190
    .line 191
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 192
    .line 193
    invoke-interface {v5}, La5/b;->t0()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-eq v5, v6, :cond_d

    .line 198
    .line 199
    new-instance v5, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v15, v0, La5/a;->c:La5/h;

    .line 205
    .line 206
    invoke-virtual {v15, v14}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-interface {v14}, Lb5/b2;->b()I

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    iget-object v6, v0, La5/a;->f:La5/b;

    .line 215
    .line 216
    invoke-interface {v6}, La5/b;->t0()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eq v6, v10, :cond_c

    .line 221
    .line 222
    :goto_2
    invoke-interface {v14, v0, v12, v3}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    iget-object v6, v0, La5/a;->f:La5/b;

    .line 230
    .line 231
    invoke-interface {v6}, La5/b;->t0()I

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-ne v6, v4, :cond_a

    .line 236
    .line 237
    iget-object v6, v0, La5/a;->f:La5/b;

    .line 238
    .line 239
    invoke-interface {v6, v15}, La5/b;->f0(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_a
    iget-object v6, v0, La5/a;->f:La5/b;

    .line 244
    .line 245
    invoke-interface {v6}, La5/b;->t0()I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-ne v6, v10, :cond_b

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 253
    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget-object v3, v0, La5/a;->f:La5/b;

    .line 263
    .line 264
    invoke-interface {v3}, La5/b;->t0()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-static {v3}, La5/f;->a(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v1

    .line 283
    :cond_c
    :goto_3
    iget-object v6, v0, La5/a;->c:La5/h;

    .line 284
    .line 285
    invoke-static {v5, v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    goto :goto_5

    .line 290
    :cond_d
    iget-object v5, v0, La5/a;->c:La5/h;

    .line 291
    .line 292
    invoke-virtual {v5, v12}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-interface {v5, v0, v12, v6}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    goto :goto_5

    .line 305
    :cond_e
    :goto_4
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 306
    .line 307
    invoke-interface {v5}, La5/b;->t0()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-ne v5, v11, :cond_f

    .line 312
    .line 313
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 314
    .line 315
    invoke-interface {v5}, La5/b;->p()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 324
    .line 325
    invoke-interface {v5, v4}, La5/b;->f0(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_f
    invoke-virtual/range {p0 .. p0}, La5/a;->x()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    iget-object v6, v0, La5/a;->c:La5/h;

    .line 334
    .line 335
    invoke-static {v5, v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    :goto_5
    aput-object v12, v2, v7

    .line 340
    .line 341
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 342
    .line 343
    invoke-interface {v5}, La5/b;->t0()I

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-ne v5, v10, :cond_10

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_10
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 351
    .line 352
    invoke-interface {v5}, La5/b;->t0()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-ne v5, v4, :cond_12

    .line 357
    .line 358
    array-length v5, v1

    .line 359
    add-int/lit8 v5, v5, -0x1

    .line 360
    .line 361
    if-ne v7, v5, :cond_11

    .line 362
    .line 363
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 364
    .line 365
    invoke-interface {v5, v10}, La5/b;->f0(I)V

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_11
    iget-object v5, v0, La5/a;->f:La5/b;

    .line 370
    .line 371
    invoke-interface {v5, v11}, La5/b;->f0(I)V

    .line 372
    .line 373
    .line 374
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 375
    .line 376
    const/16 v5, 0x8

    .line 377
    .line 378
    const/16 v6, 0xe

    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 383
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v3, v0, La5/a;->f:La5/b;

    .line 393
    .line 394
    invoke-interface {v3}, La5/b;->t0()I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    invoke-static {v3}, La5/f;->a(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v1

    .line 413
    :cond_13
    :goto_7
    iget-object v1, v0, La5/a;->f:La5/b;

    .line 414
    .line 415
    invoke-interface {v1}, La5/b;->t0()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-ne v1, v10, :cond_14

    .line 420
    .line 421
    iget-object v1, v0, La5/a;->f:La5/b;

    .line 422
    .line 423
    invoke-interface {v1, v4}, La5/b;->f0(I)V

    .line 424
    .line 425
    .line 426
    return-object v2

    .line 427
    :cond_14
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 428
    .line 429
    invoke-direct {v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v1

    .line 433
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 434
    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    const-string v3, "syntax error : "

    .line 441
    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    iget-object v3, v0, La5/a;->f:La5/b;

    .line 446
    .line 447
    invoke-interface {v3}, La5/b;->x()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw v1
.end method

.method public g0(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {p1}, La5/b;->v()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, La5/a;->l:Ljava/util/List;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw p2

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, La5/a;->x()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, La5/a;->m:Ljava/util/List;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p2

    .line 56
    :cond_3
    :goto_1
    iget p1, p0, La5/a;->k:I

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    if-ne p1, p2, :cond_4

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput p1, p0, La5/a;->k:I

    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public h(La5/a$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, La5/a;->j:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, La5/a;->j:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, La5/a;->j:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public h0()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 4
    .line 5
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 6
    .line 7
    invoke-interface {v1, v2}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, La5/a;->p0(Ljava/util/Map;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    .line 30
    .line 31
    check-cast v0, Ljava/util/Map;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public j(Ljava/util/Collection;)V
    .locals 4

    .line 1
    iget v0, p0, La5/a;->k:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    instance-of v0, p1, Ljava/util/List;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-int/2addr v0, v1

    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p0}, La5/a;->q()La5/a$a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Lb5/h3;

    .line 23
    .line 24
    invoke-direct {v3, p0, p1, v0}, Lb5/h3;-><init>(La5/a;Ljava/util/List;I)V

    .line 25
    .line 26
    .line 27
    iput-object v3, v1, La5/a$a;->c:Lb5/l;

    .line 28
    .line 29
    iget-object p1, p0, La5/a;->g:La5/g;

    .line 30
    .line 31
    iput-object p1, v1, La5/a$a;->d:La5/g;

    .line 32
    .line 33
    invoke-virtual {p0, v2}, La5/a;->D0(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, La5/a;->q()La5/a$a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lb5/h3;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lb5/h3;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, La5/a$a;->c:Lb5/l;

    .line 47
    .line 48
    iget-object p1, p0, La5/a;->g:La5/g;

    .line 49
    .line 50
    iput-object p1, v0, La5/a$a;->d:La5/g;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, La5/a;->D0(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public j0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, La5/a;->o0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public k(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, La5/a;->k:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lb5/h3;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lb5/h3;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, La5/a;->q()La5/a$a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object v0, p1, La5/a$a;->c:Lb5/l;

    .line 16
    .line 17
    iget-object p2, p0, La5/a;->g:La5/g;

    .line 18
    .line 19
    iput-object p2, p1, La5/a$a;->d:La5/g;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, La5/a;->D0(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public l()La5/h;
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->c:La5/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public l0(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, La5/a;->o0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public m()La5/g;
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->g:La5/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Ljava/text/DateFormat;
    .locals 3

    .line 1
    iget-object v0, p0, La5/a;->e:Ljava/text/DateFormat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    iget-object v1, p0, La5/a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 10
    .line 11
    invoke-interface {v2}, La5/b;->D0()Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, La5/a;->e:Ljava/text/DateFormat;

    .line 19
    .line 20
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 21
    .line 22
    invoke-interface {v1}, La5/b;->p0()Ljava/util/TimeZone;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, La5/a;->e:Ljava/text/DateFormat;

    .line 30
    .line 31
    return-object v0
.end method

.method public o0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, La5/a;->f:La5/b;

    .line 12
    .line 13
    invoke-interface {p2}, La5/b;->d0()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->J0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 v1, 0x4

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    const-class v0, [B

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, La5/a;->f:La5/b;

    .line 29
    .line 30
    invoke-interface {p1}, La5/b;->l0()[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, La5/a;->f:La5/b;

    .line 35
    .line 36
    invoke-interface {p2}, La5/b;->d0()V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    const-class v0, [C

    .line 41
    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, La5/a;->f:La5/b;

    .line 45
    .line 46
    invoke-interface {p1}, La5/b;->o0()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p0, La5/a;->f:La5/b;

    .line 51
    .line 52
    invoke-interface {p2}, La5/b;->d0()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_2
    iget-object v0, p0, La5/a;->c:La5/h;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-class v2, Lb5/o;

    .line 71
    .line 72
    if-ne v1, v2, :cond_5

    .line 73
    .line 74
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 75
    .line 76
    invoke-interface {v1}, La5/b;->t0()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    if-eq v1, v2, :cond_4

    .line 83
    .line 84
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 85
    .line 86
    invoke-interface {v1}, La5/b;->t0()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/16 v2, 0xe

    .line 91
    .line 92
    if-ne v1, v2, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v0, "syntax error,expect start with { or [,but actually start with "

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 108
    .line 109
    invoke-interface {v0}, La5/b;->x()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception p1

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    :goto_0
    check-cast v0, Lb5/o;

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, p0, p1, p2, v1}, Lb5/o;->g(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    :cond_5
    invoke-interface {v0, p0, p1, p2}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    return-object p1

    .line 141
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw p2

    .line 151
    :goto_2
    throw p1
.end method

.method public p()Lb5/m;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public p0(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, La5/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public q()La5/a$a;
    .locals 2

    .line 1
    iget-object v0, p0, La5/a;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, La5/a$a;

    .line 14
    .line 15
    return-object v0
.end method

.method public r()La5/b;
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "parse number key error"

    .line 8
    .line 9
    const-class v4, Ljava/util/Map;

    .line 10
    .line 11
    iget-object v5, v1, La5/a;->f:La5/b;

    .line 12
    .line 13
    invoke-interface {v5}, La5/b;->t0()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const/16 v7, 0x8

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    if-ne v6, v7, :cond_0

    .line 21
    .line 22
    invoke-interface {v5}, La5/b;->d0()V

    .line 23
    .line 24
    .line 25
    return-object v8

    .line 26
    :cond_0
    invoke-interface {v5}, La5/b;->t0()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v7, 0xd

    .line 31
    .line 32
    if-ne v6, v7, :cond_1

    .line 33
    .line 34
    invoke-interface {v5}, La5/b;->d0()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    invoke-interface {v5}, La5/b;->t0()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v9, 0x4

    .line 43
    if-ne v6, v9, :cond_2

    .line 44
    .line 45
    invoke-interface {v5}, La5/b;->o0()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    invoke-interface {v5}, La5/b;->d0()V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    invoke-interface {v5}, La5/b;->t0()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/16 v10, 0xc

    .line 64
    .line 65
    const/16 v11, 0x10

    .line 66
    .line 67
    if-eq v6, v10, :cond_4

    .line 68
    .line 69
    invoke-interface {v5}, La5/b;->t0()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ne v6, v11, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "syntax error, expect {, actual "

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-interface {v5}, La5/b;->x()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, ", "

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-interface {v5}, La5/b;->k()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_4
    :goto_0
    iget-object v6, v1, La5/a;->g:La5/g;

    .line 116
    .line 117
    :try_start_0
    instance-of v10, v0, Lcom/alibaba/fastjson/JSONObject;

    .line 118
    .line 119
    if-eqz v10, :cond_5

    .line 120
    .line 121
    move-object v12, v0

    .line 122
    check-cast v12, Lcom/alibaba/fastjson/JSONObject;

    .line 123
    .line 124
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto/16 :goto_23

    .line 131
    .line 132
    :cond_5
    move-object v12, v0

    .line 133
    :goto_1
    const/4 v14, 0x0

    .line 134
    :goto_2
    invoke-interface {v5}, La5/b;->x0()V

    .line 135
    .line 136
    .line 137
    invoke-interface {v5}, La5/b;->d()C

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 142
    .line 143
    invoke-interface {v5, v9}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    const/16 v13, 0x2c

    .line 148
    .line 149
    if-eqz v9, :cond_6

    .line 150
    .line 151
    :goto_3
    if-ne v15, v13, :cond_6

    .line 152
    .line 153
    invoke-interface {v5}, La5/b;->next()C

    .line 154
    .line 155
    .line 156
    invoke-interface {v5}, La5/b;->x0()V

    .line 157
    .line 158
    .line 159
    invoke-interface {v5}, La5/b;->d()C

    .line 160
    .line 161
    .line 162
    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    const-string v11, ", name "

    .line 165
    .line 166
    const-string v7, "expect \':\' at "

    .line 167
    .line 168
    const/16 v13, 0x22

    .line 169
    .line 170
    const-string v8, "syntax error"

    .line 171
    .line 172
    if-ne v15, v13, :cond_8

    .line 173
    .line 174
    :try_start_1
    iget-object v15, v1, La5/a;->b:La5/i;

    .line 175
    .line 176
    invoke-interface {v5, v15, v13}, La5/b;->w(La5/i;C)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-interface {v5}, La5/b;->x0()V

    .line 181
    .line 182
    .line 183
    invoke-interface {v5}, La5/b;->d()C

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    const/16 v9, 0x3a

    .line 188
    .line 189
    if-ne v13, v9, :cond_7

    .line 190
    .line 191
    :goto_4
    const/4 v7, 0x0

    .line 192
    goto/16 :goto_b

    .line 193
    .line 194
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 195
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-interface {v5}, La5/b;->h()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_8
    const/16 v9, 0x7d

    .line 226
    .line 227
    if-ne v15, v9, :cond_b

    .line 228
    .line 229
    invoke-interface {v5}, La5/b;->next()C

    .line 230
    .line 231
    .line 232
    invoke-interface {v5}, La5/b;->y0()V

    .line 233
    .line 234
    .line 235
    invoke-interface {v5}, La5/b;->d0()V

    .line 236
    .line 237
    .line 238
    if-nez v14, :cond_a

    .line 239
    .line 240
    iget-object v3, v1, La5/a;->g:La5/g;

    .line 241
    .line 242
    if-eqz v3, :cond_9

    .line 243
    .line 244
    iget-object v4, v3, La5/g;->c:Ljava/lang/Object;

    .line 245
    .line 246
    if-ne v2, v4, :cond_9

    .line 247
    .line 248
    iget-object v4, v3, La5/g;->a:Ljava/lang/Object;

    .line 249
    .line 250
    if-ne v0, v4, :cond_9

    .line 251
    .line 252
    move-object v6, v3

    .line 253
    goto :goto_5

    .line 254
    :cond_9
    invoke-virtual/range {p0 .. p2}, La5/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 255
    .line 256
    .line 257
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    if-nez v6, :cond_a

    .line 259
    .line 260
    move-object v6, v2

    .line 261
    :cond_a
    :goto_5
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 262
    .line 263
    .line 264
    return-object v0

    .line 265
    :cond_b
    const/16 v9, 0x27

    .line 266
    .line 267
    if-ne v15, v9, :cond_e

    .line 268
    .line 269
    :try_start_2
    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 270
    .line 271
    invoke-interface {v5, v13}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    if-eqz v13, :cond_d

    .line 276
    .line 277
    iget-object v13, v1, La5/a;->b:La5/i;

    .line 278
    .line 279
    invoke-interface {v5, v13, v9}, La5/b;->w(La5/i;C)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v15

    .line 283
    invoke-interface {v5}, La5/b;->x0()V

    .line 284
    .line 285
    .line 286
    invoke-interface {v5}, La5/b;->d()C

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    const/16 v13, 0x3a

    .line 291
    .line 292
    if-ne v9, v13, :cond_c

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 296
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-interface {v5}, La5/b;->h()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v0

    .line 320
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 321
    .line 322
    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_e
    const/16 v9, 0x1a

    .line 327
    .line 328
    if-eq v15, v9, :cond_5f

    .line 329
    .line 330
    const/16 v9, 0x2c

    .line 331
    .line 332
    if-eq v15, v9, :cond_5e

    .line 333
    .line 334
    const/16 v9, 0x30

    .line 335
    .line 336
    if-lt v15, v9, :cond_f

    .line 337
    .line 338
    const/16 v9, 0x39

    .line 339
    .line 340
    if-le v15, v9, :cond_10

    .line 341
    .line 342
    :cond_f
    const/16 v9, 0x2d

    .line 343
    .line 344
    if-ne v15, v9, :cond_15

    .line 345
    .line 346
    :cond_10
    invoke-interface {v5}, La5/b;->y0()V

    .line 347
    .line 348
    .line 349
    invoke-interface {v5}, La5/b;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    .line 351
    .line 352
    :try_start_3
    invoke-interface {v5}, La5/b;->t0()I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    const/4 v9, 0x2

    .line 357
    if-ne v7, v9, :cond_11

    .line 358
    .line 359
    invoke-interface {v5}, La5/b;->r0()Ljava/lang/Number;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    goto :goto_6

    .line 364
    :cond_11
    const/4 v7, 0x1

    .line 365
    invoke-interface {v5, v7}, La5/b;->B0(Z)Ljava/lang/Number;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    move-object v7, v9

    .line 370
    :goto_6
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    .line 371
    .line 372
    invoke-interface {v5, v9}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    if-nez v9, :cond_13

    .line 377
    .line 378
    if-eqz v10, :cond_12

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_12
    :goto_7
    move-object v15, v7

    .line 382
    goto :goto_9

    .line 383
    :cond_13
    :goto_8
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    goto :goto_7

    .line 388
    :goto_9
    :try_start_4
    invoke-interface {v5}, La5/b;->d()C

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    const/16 v9, 0x3a

    .line 393
    .line 394
    if-ne v7, v9, :cond_14

    .line 395
    .line 396
    goto/16 :goto_4

    .line 397
    .line 398
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 399
    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-interface {v5}, La5/b;->k()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v0

    .line 423
    :catch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 424
    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-interface {v5}, La5/b;->k()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    throw v0

    .line 448
    :cond_15
    const/16 v9, 0x7b

    .line 449
    .line 450
    if-eq v15, v9, :cond_19

    .line 451
    .line 452
    const/16 v9, 0x5b

    .line 453
    .line 454
    if-ne v15, v9, :cond_16

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_16
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 458
    .line 459
    invoke-interface {v5, v9}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    if-eqz v9, :cond_18

    .line 464
    .line 465
    iget-object v9, v1, La5/a;->b:La5/i;

    .line 466
    .line 467
    invoke-interface {v5, v9}, La5/b;->T(La5/i;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v15

    .line 471
    invoke-interface {v5}, La5/b;->x0()V

    .line 472
    .line 473
    .line 474
    invoke-interface {v5}, La5/b;->d()C

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    const/16 v13, 0x3a

    .line 479
    .line 480
    if-ne v9, v13, :cond_17

    .line 481
    .line 482
    goto/16 :goto_4

    .line 483
    .line 484
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 485
    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-interface {v5}, La5/b;->h()I

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v3, ", actual "

    .line 502
    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 518
    .line 519
    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v0

    .line 523
    :cond_19
    :goto_a
    iget v7, v1, La5/a;->n:I

    .line 524
    .line 525
    add-int/lit8 v9, v7, 0x1

    .line 526
    .line 527
    iput v9, v1, La5/a;->n:I

    .line 528
    .line 529
    const/16 v9, 0x200

    .line 530
    .line 531
    if-gt v7, v9, :cond_5d

    .line 532
    .line 533
    invoke-interface {v5}, La5/b;->d0()V

    .line 534
    .line 535
    .line 536
    invoke-virtual/range {p0 .. p0}, La5/a;->x()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v15

    .line 540
    const/4 v7, 0x1

    .line 541
    :goto_b
    if-nez v7, :cond_1a

    .line 542
    .line 543
    invoke-interface {v5}, La5/b;->next()C

    .line 544
    .line 545
    .line 546
    invoke-interface {v5}, La5/b;->x0()V

    .line 547
    .line 548
    .line 549
    :cond_1a
    invoke-interface {v5}, La5/b;->d()C

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    invoke-interface {v5}, La5/b;->y0()V

    .line 554
    .line 555
    .line 556
    sget-object v9, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 557
    .line 558
    if-ne v15, v9, :cond_2d

    .line 559
    .line 560
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 561
    .line 562
    invoke-interface {v5, v9}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    if-nez v9, :cond_2d

    .line 567
    .line 568
    iget-object v7, v1, La5/a;->b:La5/i;

    .line 569
    .line 570
    const/16 v8, 0x22

    .line 571
    .line 572
    invoke-interface {v5, v7, v8}, La5/b;->w(La5/i;C)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    .line 577
    .line 578
    invoke-interface {v5, v8}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    if-eqz v8, :cond_1b

    .line 583
    .line 584
    const/4 v9, 0x4

    .line 585
    const/4 v13, 0x0

    .line 586
    goto/16 :goto_15

    .line 587
    .line 588
    :cond_1b
    if-eqz v0, :cond_1c

    .line 589
    .line 590
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    move-result-object v8

    .line 594
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v8

    .line 598
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v8

    .line 602
    if-eqz v8, :cond_1c

    .line 603
    .line 604
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    move-result-object v8

    .line 608
    :goto_c
    const/4 v13, 0x0

    .line 609
    goto :goto_f

    .line 610
    :cond_1c
    const-string v8, "java.util.HashMap"

    .line 611
    .line 612
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v8

    .line 616
    if-eqz v8, :cond_1d

    .line 617
    .line 618
    const-class v8, Ljava/util/HashMap;

    .line 619
    .line 620
    goto :goto_c

    .line 621
    :cond_1d
    const-string v8, "java.util.LinkedHashMap"

    .line 622
    .line 623
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v8

    .line 627
    if-eqz v8, :cond_1e

    .line 628
    .line 629
    const-class v8, Ljava/util/LinkedHashMap;

    .line 630
    .line 631
    goto :goto_c

    .line 632
    :cond_1e
    const/4 v8, 0x0

    .line 633
    :goto_d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 634
    .line 635
    .line 636
    move-result v9

    .line 637
    if-ge v8, v9, :cond_21

    .line 638
    .line 639
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 640
    .line 641
    .line 642
    move-result v9

    .line 643
    const/16 v11, 0x30

    .line 644
    .line 645
    if-lt v9, v11, :cond_20

    .line 646
    .line 647
    const/16 v11, 0x39

    .line 648
    .line 649
    if-le v9, v11, :cond_1f

    .line 650
    .line 651
    goto :goto_e

    .line 652
    :cond_1f
    add-int/lit8 v8, v8, 0x1

    .line 653
    .line 654
    goto :goto_d

    .line 655
    :cond_20
    :goto_e
    iget-object v8, v1, La5/a;->c:La5/h;

    .line 656
    .line 657
    invoke-interface {v5}, La5/b;->s()I

    .line 658
    .line 659
    .line 660
    move-result v9

    .line 661
    const/4 v13, 0x0

    .line 662
    invoke-virtual {v8, v7, v13, v9}, La5/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    .line 663
    .line 664
    .line 665
    move-result-object v8

    .line 666
    goto :goto_f

    .line 667
    :cond_21
    const/4 v13, 0x0

    .line 668
    move-object v8, v13

    .line 669
    :goto_f
    if-nez v8, :cond_22

    .line 670
    .line 671
    sget-object v8, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 672
    .line 673
    invoke-interface {v12, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    const/4 v9, 0x4

    .line 677
    goto/16 :goto_15

    .line 678
    .line 679
    :cond_22
    const/16 v3, 0x10

    .line 680
    .line 681
    invoke-interface {v5, v3}, La5/b;->f0(I)V

    .line 682
    .line 683
    .line 684
    invoke-interface {v5}, La5/b;->t0()I

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    const/16 v9, 0xd

    .line 689
    .line 690
    if-ne v4, v9, :cond_28

    .line 691
    .line 692
    invoke-interface {v5, v3}, La5/b;->f0(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 693
    .line 694
    .line 695
    :try_start_5
    iget-object v2, v1, La5/a;->c:La5/h;

    .line 696
    .line 697
    invoke-virtual {v2, v8}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    instance-of v2, v2, Lb5/o;

    .line 702
    .line 703
    if-eqz v2, :cond_23

    .line 704
    .line 705
    iget-object v2, v1, La5/a;->c:La5/h;

    .line 706
    .line 707
    invoke-static {v0, v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    move-object v13, v0

    .line 712
    goto :goto_10

    .line 713
    :catch_1
    move-exception v0

    .line 714
    goto :goto_12

    .line 715
    :cond_23
    :goto_10
    if-nez v13, :cond_27

    .line 716
    .line 717
    const-class v0, Ljava/lang/Cloneable;

    .line 718
    .line 719
    if-ne v8, v0, :cond_24

    .line 720
    .line 721
    new-instance v13, Ljava/util/HashMap;

    .line 722
    .line 723
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 724
    .line 725
    .line 726
    goto :goto_11

    .line 727
    :cond_24
    const-string v0, "java.util.Collections$EmptyMap"

    .line 728
    .line 729
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    if-eqz v0, :cond_25

    .line 734
    .line 735
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 736
    .line 737
    .line 738
    move-result-object v13

    .line 739
    goto :goto_11

    .line 740
    :cond_25
    const-string v0, "java.util.Collections$UnmodifiableMap"

    .line 741
    .line 742
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    if-eqz v0, :cond_26

    .line 747
    .line 748
    new-instance v0, Ljava/util/HashMap;

    .line 749
    .line 750
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 751
    .line 752
    .line 753
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 754
    .line 755
    .line 756
    move-result-object v13

    .line 757
    goto :goto_11

    .line 758
    :cond_26
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 762
    :cond_27
    :goto_11
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 763
    .line 764
    .line 765
    return-object v13

    .line 766
    :goto_12
    :try_start_6
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    .line 767
    .line 768
    const-string v3, "create instance error"

    .line 769
    .line 770
    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 771
    .line 772
    .line 773
    throw v2

    .line 774
    :cond_28
    const/4 v3, 0x2

    .line 775
    invoke-virtual {v1, v3}, La5/a;->D0(I)V

    .line 776
    .line 777
    .line 778
    iget-object v3, v1, La5/a;->g:La5/g;

    .line 779
    .line 780
    if-eqz v3, :cond_29

    .line 781
    .line 782
    if-eqz v2, :cond_29

    .line 783
    .line 784
    instance-of v4, v2, Ljava/lang/Integer;

    .line 785
    .line 786
    if-nez v4, :cond_29

    .line 787
    .line 788
    iget-object v3, v3, La5/g;->c:Ljava/lang/Object;

    .line 789
    .line 790
    instance-of v3, v3, Ljava/lang/Integer;

    .line 791
    .line 792
    if-nez v3, :cond_29

    .line 793
    .line 794
    invoke-virtual/range {p0 .. p0}, La5/a;->t0()V

    .line 795
    .line 796
    .line 797
    :cond_29
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    .line 798
    .line 799
    .line 800
    move-result v3

    .line 801
    if-lez v3, :cond_2a

    .line 802
    .line 803
    iget-object v2, v1, La5/a;->c:La5/h;

    .line 804
    .line 805
    invoke-static {v0, v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    const/4 v2, 0x0

    .line 810
    invoke-virtual {v1, v2}, La5/a;->D0(I)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1, v0}, La5/a;->s0(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 817
    .line 818
    .line 819
    return-object v0

    .line 820
    :cond_2a
    :try_start_7
    iget-object v0, v1, La5/a;->c:La5/h;

    .line 821
    .line 822
    invoke-virtual {v0, v8}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    const-class v4, Lb5/o;

    .line 831
    .line 832
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 833
    .line 834
    .line 835
    move-result v4

    .line 836
    if-eqz v4, :cond_2b

    .line 837
    .line 838
    const-class v4, Lb5/o;

    .line 839
    .line 840
    if-eq v3, v4, :cond_2b

    .line 841
    .line 842
    const-class v4, Lb5/k3;

    .line 843
    .line 844
    if-eq v3, v4, :cond_2b

    .line 845
    .line 846
    const/4 v3, 0x0

    .line 847
    invoke-virtual {v1, v3}, La5/a;->D0(I)V

    .line 848
    .line 849
    .line 850
    goto :goto_13

    .line 851
    :cond_2b
    instance-of v3, v0, Lb5/z1;

    .line 852
    .line 853
    if-eqz v3, :cond_2c

    .line 854
    .line 855
    const/4 v9, 0x0

    .line 856
    invoke-virtual {v1, v9}, La5/a;->D0(I)V

    .line 857
    .line 858
    .line 859
    :cond_2c
    :goto_13
    invoke-interface {v0, v1, v8, v2}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 863
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 864
    .line 865
    .line 866
    return-object v0

    .line 867
    :cond_2d
    const/4 v13, 0x0

    .line 868
    :try_start_8
    const-string v9, "$ref"

    .line 869
    .line 870
    if-ne v15, v9, :cond_2e

    .line 871
    .line 872
    if-eqz v6, :cond_2e

    .line 873
    .line 874
    if-eqz v0, :cond_2f

    .line 875
    .line 876
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    .line 877
    .line 878
    .line 879
    move-result v9

    .line 880
    if-nez v9, :cond_2e

    .line 881
    .line 882
    goto :goto_14

    .line 883
    :cond_2e
    const/4 v9, 0x4

    .line 884
    const/16 v16, 0x1

    .line 885
    .line 886
    goto/16 :goto_1a

    .line 887
    .line 888
    :cond_2f
    :goto_14
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 889
    .line 890
    invoke-interface {v5, v9}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 891
    .line 892
    .line 893
    move-result v9

    .line 894
    if-nez v9, :cond_2e

    .line 895
    .line 896
    const/4 v9, 0x4

    .line 897
    invoke-interface {v5, v9}, La5/b;->f0(I)V

    .line 898
    .line 899
    .line 900
    invoke-interface {v5}, La5/b;->t0()I

    .line 901
    .line 902
    .line 903
    move-result v7

    .line 904
    if-ne v7, v9, :cond_3c

    .line 905
    .line 906
    invoke-interface {v5}, La5/b;->o0()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v7

    .line 910
    const/16 v8, 0xd

    .line 911
    .line 912
    invoke-interface {v5, v8}, La5/b;->f0(I)V

    .line 913
    .line 914
    .line 915
    invoke-interface {v5}, La5/b;->t0()I

    .line 916
    .line 917
    .line 918
    move-result v8

    .line 919
    const/16 v11, 0x10

    .line 920
    .line 921
    if-ne v8, v11, :cond_30

    .line 922
    .line 923
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    :goto_15
    move-object v8, v13

    .line 927
    const/16 v7, 0xd

    .line 928
    .line 929
    const/16 v11, 0x10

    .line 930
    .line 931
    goto/16 :goto_2

    .line 932
    .line 933
    :cond_30
    const-string v0, "@"

    .line 934
    .line 935
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    if-eqz v0, :cond_33

    .line 940
    .line 941
    iget-object v0, v1, La5/a;->g:La5/g;

    .line 942
    .line 943
    if-eqz v0, :cond_39

    .line 944
    .line 945
    iget-object v2, v0, La5/g;->a:Ljava/lang/Object;

    .line 946
    .line 947
    instance-of v3, v2, [Ljava/lang/Object;

    .line 948
    .line 949
    if-nez v3, :cond_32

    .line 950
    .line 951
    instance-of v3, v2, Ljava/util/Collection;

    .line 952
    .line 953
    if-eqz v3, :cond_31

    .line 954
    .line 955
    goto :goto_16

    .line 956
    :cond_31
    iget-object v0, v0, La5/g;->b:La5/g;

    .line 957
    .line 958
    if-eqz v0, :cond_39

    .line 959
    .line 960
    iget-object v8, v0, La5/g;->a:Ljava/lang/Object;

    .line 961
    .line 962
    goto/16 :goto_19

    .line 963
    .line 964
    :cond_32
    :goto_16
    move-object v8, v2

    .line 965
    goto :goto_19

    .line 966
    :cond_33
    const-string v0, ".."

    .line 967
    .line 968
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    if-eqz v0, :cond_35

    .line 973
    .line 974
    iget-object v0, v6, La5/g;->a:Ljava/lang/Object;

    .line 975
    .line 976
    if-eqz v0, :cond_34

    .line 977
    .line 978
    move-object v8, v0

    .line 979
    goto :goto_19

    .line 980
    :cond_34
    new-instance v0, La5/a$a;

    .line 981
    .line 982
    invoke-direct {v0, v6, v7}, La5/a$a;-><init>(La5/g;Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v1, v0}, La5/a;->h(La5/a$a;)V

    .line 986
    .line 987
    .line 988
    const/4 v0, 0x1

    .line 989
    invoke-virtual {v1, v0}, La5/a;->D0(I)V

    .line 990
    .line 991
    .line 992
    goto :goto_18

    .line 993
    :cond_35
    const-string v0, "$"

    .line 994
    .line 995
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    move-result v0

    .line 999
    if-eqz v0, :cond_38

    .line 1000
    .line 1001
    move-object v0, v6

    .line 1002
    :goto_17
    iget-object v2, v0, La5/g;->b:La5/g;

    .line 1003
    .line 1004
    if-eqz v2, :cond_36

    .line 1005
    .line 1006
    move-object v0, v2

    .line 1007
    goto :goto_17

    .line 1008
    :cond_36
    iget-object v2, v0, La5/g;->a:Ljava/lang/Object;

    .line 1009
    .line 1010
    if-eqz v2, :cond_37

    .line 1011
    .line 1012
    goto :goto_16

    .line 1013
    :cond_37
    new-instance v2, La5/a$a;

    .line 1014
    .line 1015
    invoke-direct {v2, v0, v7}, La5/a$a;-><init>(La5/g;Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v1, v2}, La5/a;->h(La5/a$a;)V

    .line 1019
    .line 1020
    .line 1021
    const/4 v0, 0x1

    .line 1022
    invoke-virtual {v1, v0}, La5/a;->D0(I)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_18

    .line 1026
    :cond_38
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath;->n()Z

    .line 1031
    .line 1032
    .line 1033
    move-result v0

    .line 1034
    if-eqz v0, :cond_3a

    .line 1035
    .line 1036
    new-instance v0, La5/a$a;

    .line 1037
    .line 1038
    invoke-direct {v0, v6, v7}, La5/a$a;-><init>(La5/g;Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1, v0}, La5/a;->h(La5/a$a;)V

    .line 1042
    .line 1043
    .line 1044
    const/4 v0, 0x1

    .line 1045
    invoke-virtual {v1, v0}, La5/a;->D0(I)V

    .line 1046
    .line 1047
    .line 1048
    :cond_39
    :goto_18
    move-object v8, v13

    .line 1049
    goto :goto_19

    .line 1050
    :cond_3a
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1051
    .line 1052
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1053
    .line 1054
    .line 1055
    const-string v2, "$ref"

    .line 1056
    .line 1057
    invoke-virtual {v0, v2, v7}, Lcom/alibaba/fastjson/JSONObject;->fluentPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v8

    .line 1061
    :goto_19
    invoke-interface {v5}, La5/b;->t0()I

    .line 1062
    .line 1063
    .line 1064
    move-result v0

    .line 1065
    const/16 v2, 0xd

    .line 1066
    .line 1067
    if-ne v0, v2, :cond_3b

    .line 1068
    .line 1069
    const/16 v0, 0x10

    .line 1070
    .line 1071
    invoke-interface {v5, v0}, La5/b;->f0(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 1075
    .line 1076
    .line 1077
    return-object v8

    .line 1078
    :cond_3b
    :try_start_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1079
    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1083
    .line 1084
    .line 1085
    const-string v3, "syntax error, "

    .line 1086
    .line 1087
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-interface {v5}, La5/b;->k()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    throw v0

    .line 1105
    :cond_3c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1106
    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    .line 1111
    .line 1112
    const-string v3, "illegal ref, "

    .line 1113
    .line 1114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    invoke-interface {v5}, La5/b;->t0()I

    .line 1118
    .line 1119
    .line 1120
    move-result v3

    .line 1121
    invoke-static {v3}, La5/f;->a(I)Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v3

    .line 1125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v2

    .line 1132
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    throw v0

    .line 1136
    :goto_1a
    if-nez v14, :cond_3f

    .line 1137
    .line 1138
    iget-object v9, v1, La5/a;->g:La5/g;

    .line 1139
    .line 1140
    if-eqz v9, :cond_3d

    .line 1141
    .line 1142
    iget-object v13, v9, La5/g;->c:Ljava/lang/Object;

    .line 1143
    .line 1144
    if-ne v2, v13, :cond_3d

    .line 1145
    .line 1146
    iget-object v13, v9, La5/g;->a:Ljava/lang/Object;

    .line 1147
    .line 1148
    if-ne v0, v13, :cond_3d

    .line 1149
    .line 1150
    move-object v6, v9

    .line 1151
    goto :goto_1b

    .line 1152
    :cond_3d
    invoke-virtual/range {p0 .. p2}, La5/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v9

    .line 1156
    if-nez v6, :cond_3e

    .line 1157
    .line 1158
    move-object v6, v9

    .line 1159
    :cond_3e
    move/from16 v14, v16

    .line 1160
    .line 1161
    :cond_3f
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v9

    .line 1165
    const-class v13, Lcom/alibaba/fastjson/JSONObject;

    .line 1166
    .line 1167
    if-ne v9, v13, :cond_40

    .line 1168
    .line 1169
    if-nez v15, :cond_40

    .line 1170
    .line 1171
    const-string v15, "null"

    .line 1172
    .line 1173
    :cond_40
    const/16 v9, 0x22

    .line 1174
    .line 1175
    if-ne v7, v9, :cond_43

    .line 1176
    .line 1177
    invoke-interface {v5}, La5/b;->e0()V

    .line 1178
    .line 1179
    .line 1180
    invoke-interface {v5}, La5/b;->o0()Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v7

    .line 1184
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 1185
    .line 1186
    invoke-interface {v5, v8}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 1187
    .line 1188
    .line 1189
    move-result v8

    .line 1190
    if-eqz v8, :cond_42

    .line 1191
    .line 1192
    new-instance v8, La5/e;

    .line 1193
    .line 1194
    invoke-direct {v8, v7}, La5/e;-><init>(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v8}, La5/e;->w1()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v9

    .line 1201
    if-eqz v9, :cond_41

    .line 1202
    .line 1203
    invoke-virtual {v8}, La5/c;->J0()Ljava/util/Calendar;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v7

    .line 1207
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v7

    .line 1211
    :cond_41
    invoke-virtual {v8}, La5/c;->close()V

    .line 1212
    .line 1213
    .line 1214
    :cond_42
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    goto :goto_1d

    .line 1218
    :cond_43
    const/16 v9, 0x30

    .line 1219
    .line 1220
    if-lt v7, v9, :cond_44

    .line 1221
    .line 1222
    const/16 v9, 0x39

    .line 1223
    .line 1224
    if-le v7, v9, :cond_45

    .line 1225
    .line 1226
    :cond_44
    const/16 v9, 0x2d

    .line 1227
    .line 1228
    if-ne v7, v9, :cond_49

    .line 1229
    .line 1230
    :cond_45
    invoke-interface {v5}, La5/b;->q()V

    .line 1231
    .line 1232
    .line 1233
    invoke-interface {v5}, La5/b;->t0()I

    .line 1234
    .line 1235
    .line 1236
    move-result v7

    .line 1237
    const/4 v8, 0x2

    .line 1238
    if-ne v7, v8, :cond_46

    .line 1239
    .line 1240
    invoke-interface {v5}, La5/b;->r0()Ljava/lang/Number;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v7

    .line 1244
    goto :goto_1c

    .line 1245
    :cond_46
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 1246
    .line 1247
    invoke-interface {v5, v7}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v7

    .line 1251
    invoke-interface {v5, v7}, La5/b;->B0(Z)Ljava/lang/Number;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v7

    .line 1255
    :goto_1c
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    :goto_1d
    invoke-interface {v5}, La5/b;->x0()V

    .line 1259
    .line 1260
    .line 1261
    invoke-interface {v5}, La5/b;->d()C

    .line 1262
    .line 1263
    .line 1264
    move-result v8

    .line 1265
    const/16 v9, 0x2c

    .line 1266
    .line 1267
    if-ne v8, v9, :cond_47

    .line 1268
    .line 1269
    invoke-interface {v5}, La5/b;->next()C

    .line 1270
    .line 1271
    .line 1272
    :goto_1e
    const/16 v8, 0xd

    .line 1273
    .line 1274
    const/16 v9, 0x10

    .line 1275
    .line 1276
    goto/16 :goto_22

    .line 1277
    .line 1278
    :cond_47
    const/16 v2, 0x7d

    .line 1279
    .line 1280
    if-ne v8, v2, :cond_48

    .line 1281
    .line 1282
    invoke-interface {v5}, La5/b;->next()C

    .line 1283
    .line 1284
    .line 1285
    invoke-interface {v5}, La5/b;->y0()V

    .line 1286
    .line 1287
    .line 1288
    invoke-interface {v5}, La5/b;->d0()V

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v1, v7, v15}, La5/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)La5/g;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 1295
    .line 1296
    .line 1297
    return-object v0

    .line 1298
    :cond_48
    :try_start_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1299
    .line 1300
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1303
    .line 1304
    .line 1305
    const-string v3, "syntax error, position at "

    .line 1306
    .line 1307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    invoke-interface {v5}, La5/b;->h()I

    .line 1311
    .line 1312
    .line 1313
    move-result v3

    .line 1314
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v2

    .line 1327
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1328
    .line 1329
    .line 1330
    throw v0

    .line 1331
    :cond_49
    const/16 v9, 0x5b

    .line 1332
    .line 1333
    if-ne v7, v9, :cond_4f

    .line 1334
    .line 1335
    invoke-interface {v5}, La5/b;->d0()V

    .line 1336
    .line 1337
    .line 1338
    new-instance v7, Lcom/alibaba/fastjson/JSONArray;

    .line 1339
    .line 1340
    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1341
    .line 1342
    .line 1343
    if-eqz v2, :cond_4a

    .line 1344
    .line 1345
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v9

    .line 1349
    const-class v11, Ljava/lang/Integer;

    .line 1350
    .line 1351
    :cond_4a
    if-nez v2, :cond_4b

    .line 1352
    .line 1353
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 1354
    .line 1355
    .line 1356
    :cond_4b
    invoke-virtual {v1, v7, v15}, La5/a;->e0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1357
    .line 1358
    .line 1359
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    .line 1360
    .line 1361
    invoke-interface {v5, v9}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v9

    .line 1365
    if-eqz v9, :cond_4c

    .line 1366
    .line 1367
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v7

    .line 1371
    :cond_4c
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    invoke-interface {v5}, La5/b;->t0()I

    .line 1375
    .line 1376
    .line 1377
    move-result v7

    .line 1378
    const/16 v9, 0xd

    .line 1379
    .line 1380
    if-ne v7, v9, :cond_4d

    .line 1381
    .line 1382
    invoke-interface {v5}, La5/b;->d0()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 1386
    .line 1387
    .line 1388
    return-object v0

    .line 1389
    :cond_4d
    :try_start_b
    invoke-interface {v5}, La5/b;->t0()I

    .line 1390
    .line 1391
    .line 1392
    move-result v7

    .line 1393
    const/16 v9, 0x10

    .line 1394
    .line 1395
    if-ne v7, v9, :cond_4e

    .line 1396
    .line 1397
    const/16 v8, 0xd

    .line 1398
    .line 1399
    goto/16 :goto_22

    .line 1400
    .line 1401
    :cond_4e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1402
    .line 1403
    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    throw v0

    .line 1407
    :cond_4f
    const/16 v8, 0x7b

    .line 1408
    .line 1409
    if-ne v7, v8, :cond_5a

    .line 1410
    .line 1411
    invoke-interface {v5}, La5/b;->d0()V

    .line 1412
    .line 1413
    .line 1414
    if-eqz v2, :cond_50

    .line 1415
    .line 1416
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v7

    .line 1420
    const-class v8, Ljava/lang/Integer;

    .line 1421
    .line 1422
    if-ne v7, v8, :cond_50

    .line 1423
    .line 1424
    move/from16 v9, v16

    .line 1425
    .line 1426
    goto :goto_1f

    .line 1427
    :cond_50
    const/4 v9, 0x0

    .line 1428
    :goto_1f
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->CustomMapDeserializer:Lcom/alibaba/fastjson/parser/Feature;

    .line 1429
    .line 1430
    invoke-interface {v5, v7}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v7

    .line 1434
    if-eqz v7, :cond_52

    .line 1435
    .line 1436
    iget-object v7, v1, La5/a;->c:La5/h;

    .line 1437
    .line 1438
    invoke-virtual {v7, v4}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v7

    .line 1442
    check-cast v7, Lb5/z1;

    .line 1443
    .line 1444
    invoke-interface {v5}, La5/b;->s()I

    .line 1445
    .line 1446
    .line 1447
    move-result v8

    .line 1448
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 1449
    .line 1450
    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1451
    .line 1452
    and-int/2addr v8, v11

    .line 1453
    if-eqz v8, :cond_51

    .line 1454
    .line 1455
    invoke-interface {v5}, La5/b;->s()I

    .line 1456
    .line 1457
    .line 1458
    move-result v8

    .line 1459
    invoke-virtual {v7, v4, v8}, Lb5/z1;->g(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v7

    .line 1463
    goto :goto_20

    .line 1464
    :cond_51
    invoke-virtual {v7, v4}, Lb5/z1;->f(Ljava/lang/reflect/Type;)Ljava/util/Map;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v7

    .line 1468
    goto :goto_20

    .line 1469
    :cond_52
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    .line 1470
    .line 1471
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 1472
    .line 1473
    invoke-interface {v5, v8}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v8

    .line 1477
    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1478
    .line 1479
    .line 1480
    :goto_20
    if-nez v9, :cond_53

    .line 1481
    .line 1482
    iget-object v8, v1, La5/a;->g:La5/g;

    .line 1483
    .line 1484
    invoke-virtual {v1, v8, v7, v15}, La5/a;->x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v8

    .line 1488
    goto :goto_21

    .line 1489
    :cond_53
    const/4 v8, 0x0

    .line 1490
    :goto_21
    invoke-virtual {v1, v7, v15}, La5/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v11

    .line 1494
    if-eqz v8, :cond_54

    .line 1495
    .line 1496
    if-eq v7, v11, :cond_54

    .line 1497
    .line 1498
    iput-object v0, v8, La5/g;->a:Ljava/lang/Object;

    .line 1499
    .line 1500
    :cond_54
    if-eqz v15, :cond_55

    .line 1501
    .line 1502
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v7

    .line 1506
    invoke-virtual {v1, v0, v7}, La5/a;->k(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1507
    .line 1508
    .line 1509
    :cond_55
    invoke-interface {v12, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    .line 1511
    .line 1512
    if-eqz v9, :cond_56

    .line 1513
    .line 1514
    invoke-virtual {v1, v11, v15}, La5/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 1515
    .line 1516
    .line 1517
    :cond_56
    invoke-interface {v5}, La5/b;->t0()I

    .line 1518
    .line 1519
    .line 1520
    move-result v7

    .line 1521
    const/16 v8, 0xd

    .line 1522
    .line 1523
    if-ne v7, v8, :cond_57

    .line 1524
    .line 1525
    invoke-interface {v5}, La5/b;->d0()V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 1532
    .line 1533
    .line 1534
    return-object v0

    .line 1535
    :cond_57
    :try_start_c
    invoke-interface {v5}, La5/b;->t0()I

    .line 1536
    .line 1537
    .line 1538
    move-result v7

    .line 1539
    const/16 v8, 0x10

    .line 1540
    .line 1541
    if-ne v7, v8, :cond_59

    .line 1542
    .line 1543
    if-eqz v9, :cond_58

    .line 1544
    .line 1545
    invoke-virtual/range {p0 .. p0}, La5/a;->t0()V

    .line 1546
    .line 1547
    .line 1548
    goto/16 :goto_1e

    .line 1549
    .line 1550
    :cond_58
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 1551
    .line 1552
    .line 1553
    goto/16 :goto_1e

    .line 1554
    .line 1555
    :cond_59
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1556
    .line 1557
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1558
    .line 1559
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1560
    .line 1561
    .line 1562
    const-string v3, "syntax error, "

    .line 1563
    .line 1564
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    invoke-interface {v5}, La5/b;->x()Ljava/lang/String;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v3

    .line 1571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v2

    .line 1578
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1579
    .line 1580
    .line 1581
    throw v0

    .line 1582
    :cond_5a
    invoke-interface {v5}, La5/b;->d0()V

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual/range {p0 .. p0}, La5/a;->x()Ljava/lang/Object;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v7

    .line 1589
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    invoke-interface {v5}, La5/b;->t0()I

    .line 1593
    .line 1594
    .line 1595
    move-result v7

    .line 1596
    const/16 v8, 0xd

    .line 1597
    .line 1598
    if-ne v7, v8, :cond_5b

    .line 1599
    .line 1600
    invoke-interface {v5}, La5/b;->d0()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 1604
    .line 1605
    .line 1606
    return-object v0

    .line 1607
    :cond_5b
    :try_start_d
    invoke-interface {v5}, La5/b;->t0()I

    .line 1608
    .line 1609
    .line 1610
    move-result v7

    .line 1611
    const/16 v9, 0x10

    .line 1612
    .line 1613
    if-ne v7, v9, :cond_5c

    .line 1614
    .line 1615
    :goto_22
    move v7, v8

    .line 1616
    move v11, v9

    .line 1617
    const/4 v8, 0x0

    .line 1618
    const/4 v9, 0x4

    .line 1619
    goto/16 :goto_2

    .line 1620
    .line 1621
    :cond_5c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1622
    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1626
    .line 1627
    .line 1628
    const-string v3, "syntax error, position at "

    .line 1629
    .line 1630
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    .line 1632
    .line 1633
    invoke-interface {v5}, La5/b;->h()I

    .line 1634
    .line 1635
    .line 1636
    move-result v3

    .line 1637
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    .line 1642
    .line 1643
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v2

    .line 1650
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1651
    .line 1652
    .line 1653
    throw v0

    .line 1654
    :cond_5d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1655
    .line 1656
    const-string v2, "object key level > 512"

    .line 1657
    .line 1658
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1659
    .line 1660
    .line 1661
    throw v0

    .line 1662
    :cond_5e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1663
    .line 1664
    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1665
    .line 1666
    .line 1667
    throw v0

    .line 1668
    :cond_5f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 1669
    .line 1670
    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 1671
    .line 1672
    .line 1673
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1674
    :goto_23
    invoke-virtual {v1, v6}, La5/a;->A0(La5/g;)V

    .line 1675
    .line 1676
    .line 1677
    throw v0
.end method

.method public s(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, La5/a;->i:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, La5/a;->h:[La5/g;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    invoke-virtual {v1}, La5/g;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, La5/a;->h:[La5/g;

    .line 21
    .line 22
    aget-object p1, p1, v0

    .line 23
    .line 24
    iget-object p1, p1, La5/g;->a:Ljava/lang/Object;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public s0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, La5/a;->c:La5/h;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Lb5/o;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    check-cast v1, Lb5/o;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v3

    .line 20
    :goto_0
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 21
    .line 22
    invoke-interface {v2}, La5/b;->t0()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v4, 0xc

    .line 27
    .line 28
    const/16 v5, 0x10

    .line 29
    .line 30
    if-eq v2, v4, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 33
    .line 34
    invoke-interface {v2}, La5/b;->t0()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v2, v5, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "syntax error, expect {, actual "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 54
    .line 55
    invoke-interface {v1}, La5/b;->x()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    :goto_1
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 71
    .line 72
    iget-object v4, p0, La5/a;->b:La5/i;

    .line 73
    .line 74
    invoke-interface {v2, v4}, La5/b;->h0(La5/i;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/16 v4, 0xd

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    iget-object v6, p0, La5/a;->f:La5/b;

    .line 83
    .line 84
    invoke-interface {v6}, La5/b;->t0()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-ne v6, v4, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, La5/a;->f:La5/b;

    .line 91
    .line 92
    invoke-interface {p1, v5}, La5/b;->f0(I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    iget-object v6, p0, La5/a;->f:La5/b;

    .line 97
    .line 98
    invoke-interface {v6}, La5/b;->t0()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-ne v6, v5, :cond_4

    .line 103
    .line 104
    iget-object v6, p0, La5/a;->f:La5/b;

    .line 105
    .line 106
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 107
    .line 108
    invoke-interface {v6, v7}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    if-eqz v1, :cond_5

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lb5/o;->j(Ljava/lang/String;)Lb5/l;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move-object v6, v3

    .line 123
    :goto_2
    if-nez v6, :cond_7

    .line 124
    .line 125
    iget-object v6, p0, La5/a;->f:La5/b;

    .line 126
    .line 127
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 128
    .line 129
    invoke-interface {v6, v7}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_6

    .line 134
    .line 135
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 136
    .line 137
    invoke-interface {v2}, La5/b;->v()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, La5/a;->x()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 144
    .line 145
    invoke-interface {v2}, La5/b;->t0()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-ne v2, v4, :cond_2

    .line 150
    .line 151
    iget-object p1, p0, La5/a;->f:La5/b;

    .line 152
    .line 153
    invoke-interface {p1}, La5/b;->d0()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v3, "setter not found, class "

    .line 165
    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, ", property "

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_7
    iget-object v2, v6, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 193
    .line 194
    iget-object v7, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 195
    .line 196
    iget-object v2, v2, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 197
    .line 198
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 199
    .line 200
    const/4 v9, 0x2

    .line 201
    if-ne v7, v8, :cond_8

    .line 202
    .line 203
    iget-object v7, p0, La5/a;->f:La5/b;

    .line 204
    .line 205
    invoke-interface {v7, v9}, La5/b;->r(I)V

    .line 206
    .line 207
    .line 208
    sget-object v7, Lc5/j0;->a:Lc5/j0;

    .line 209
    .line 210
    invoke-virtual {v7, p0, v2, v3}, Lc5/j0;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    goto :goto_3

    .line 215
    :cond_8
    const-class v8, Ljava/lang/String;

    .line 216
    .line 217
    if-ne v7, v8, :cond_9

    .line 218
    .line 219
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 220
    .line 221
    const/4 v7, 0x4

    .line 222
    invoke-interface {v2, v7}, La5/b;->r(I)V

    .line 223
    .line 224
    .line 225
    invoke-static {p0}, Lc5/k1;->e(La5/a;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    goto :goto_3

    .line 230
    :cond_9
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 231
    .line 232
    if-ne v7, v8, :cond_a

    .line 233
    .line 234
    iget-object v7, p0, La5/a;->f:La5/b;

    .line 235
    .line 236
    invoke-interface {v7, v9}, La5/b;->r(I)V

    .line 237
    .line 238
    .line 239
    sget-object v7, Lc5/u0;->a:Lc5/u0;

    .line 240
    .line 241
    invoke-virtual {v7, p0, v2, v3}, Lc5/u0;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    goto :goto_3

    .line 246
    :cond_a
    iget-object v8, p0, La5/a;->c:La5/h;

    .line 247
    .line 248
    invoke-virtual {v8, v7, v2}, La5/h;->o(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lb5/b2;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    iget-object v8, p0, La5/a;->f:La5/b;

    .line 253
    .line 254
    invoke-interface {v7}, Lb5/b2;->b()I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    invoke-interface {v8, v9}, La5/b;->r(I)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v7, p0, v2, v3}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    :goto_3
    invoke-virtual {v6, p1, v2}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 269
    .line 270
    invoke-interface {v2}, La5/b;->t0()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-ne v2, v5, :cond_b

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_b
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 279
    .line 280
    invoke-interface {v2}, La5/b;->t0()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-ne v2, v4, :cond_2

    .line 285
    .line 286
    iget-object p1, p0, La5/a;->f:La5/b;

    .line 287
    .line 288
    invoke-interface {p1, v5}, La5/b;->f0(I)V

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, La5/a;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public t0()V
    .locals 3

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 4
    .line 5
    invoke-interface {v0, v1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, La5/a;->g:La5/g;

    .line 13
    .line 14
    iget-object v0, v0, La5/g;->b:La5/g;

    .line 15
    .line 16
    iput-object v0, p0, La5/a;->g:La5/g;

    .line 17
    .line 18
    iget v0, p0, La5/a;->i:I

    .line 19
    .line 20
    if-gtz v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    iput v0, p0, La5/a;->i:I

    .line 26
    .line 27
    iget-object v1, p0, La5/a;->h:[La5/g;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v2, v1, v0

    .line 31
    .line 32
    return-void
.end method

.method public u()La5/i;
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->b:La5/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public u0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, La5/a;->h:[La5/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, La5/a;->h:[La5/g;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v0, v3, :cond_2

    .line 12
    .line 13
    iget v3, p0, La5/a;->i:I

    .line 14
    .line 15
    if-ge v0, v3, :cond_2

    .line 16
    .line 17
    aget-object v2, v2, v0

    .line 18
    .line 19
    invoke-virtual {v2}, La5/g;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object p1, v2, La5/g;->a:Ljava/lang/Object;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-object v1
.end method

.method public v(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, La5/a;->j:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_8

    .line 13
    .line 14
    iget-object v3, p0, La5/a;->j:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, La5/a$a;

    .line 21
    .line 22
    iget-object v4, v3, La5/a$a;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, v3, La5/a$a;->d:La5/g;

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    iget-object v5, v5, La5/g;->a:Ljava/lang/Object;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v5, 0x0

    .line 32
    :goto_1
    const-string v6, "$"

    .line 33
    .line 34
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, v4}, La5/a;->s(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-nez v6, :cond_3

    .line 45
    .line 46
    :try_start_0
    new-instance v7, Lcom/alibaba/fastjson/JSONPath;

    .line 47
    .line 48
    invoke-static {}, Lc5/g1;->g()Lc5/g1;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget-object v9, p0, La5/a;->c:La5/h;

    .line 53
    .line 54
    const/4 v10, 0x1

    .line 55
    invoke-direct {v7, v4, v8, v9, v10}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lc5/g1;La5/h;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONPath;->n()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_3

    .line 63
    .line 64
    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson/JSONPath;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    iget-object v6, v3, La5/a$a;->a:La5/g;

    .line 70
    .line 71
    iget-object v6, v6, La5/g;->a:Ljava/lang/Object;

    .line 72
    .line 73
    :catch_0
    :cond_3
    :goto_2
    iget-object v7, v3, La5/a$a;->c:Lb5/l;

    .line 74
    .line 75
    if-eqz v7, :cond_7

    .line 76
    .line 77
    if-eqz v6, :cond_4

    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const-class v9, Lcom/alibaba/fastjson/JSONObject;

    .line 84
    .line 85
    if-ne v8, v9, :cond_4

    .line 86
    .line 87
    iget-object v8, v7, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 88
    .line 89
    if-eqz v8, :cond_4

    .line 90
    .line 91
    const-class v9, Ljava/util/Map;

    .line 92
    .line 93
    iget-object v8, v8, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 94
    .line 95
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-nez v8, :cond_4

    .line 100
    .line 101
    iget-object v8, p0, La5/a;->h:[La5/g;

    .line 102
    .line 103
    aget-object v8, v8, v1

    .line 104
    .line 105
    iget-object v8, v8, La5/g;->a:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONPath;->n()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/JSONPath;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    :cond_4
    invoke-virtual {v7}, Lb5/l;->c()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    if-eqz v4, :cond_6

    .line 126
    .line 127
    invoke-virtual {v7}, Lb5/l;->c()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_6

    .line 136
    .line 137
    iget-object v3, v3, La5/a$a;->d:La5/g;

    .line 138
    .line 139
    iget-object v3, v3, La5/g;->b:La5/g;

    .line 140
    .line 141
    if-eqz v3, :cond_6

    .line 142
    .line 143
    :goto_3
    if-eqz v3, :cond_6

    .line 144
    .line 145
    invoke-virtual {v7}, Lb5/l;->c()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-object v8, v3, La5/g;->a:Ljava/lang/Object;

    .line 150
    .line 151
    invoke-virtual {v4, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_5

    .line 156
    .line 157
    iget-object v5, v3, La5/g;->a:Ljava/lang/Object;

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_5
    iget-object v3, v3, La5/g;->b:La5/g;

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    :goto_4
    invoke-virtual {v7, v5, v6}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_8
    return-void
.end method

.method public w(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public x()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, La5/a;->S(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;
    .locals 2

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 4
    .line 5
    invoke-interface {v0, v1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance v0, La5/g;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3}, La5/g;-><init>(La5/g;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, La5/a;->g:La5/g;

    .line 19
    .line 20
    invoke-direct {p0, v0}, La5/a;->f(La5/g;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, La5/a;->g:La5/g;

    .line 24
    .line 25
    return-object p1
.end method

.method public y(Lb5/f3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "syntax error, expect {, actual "

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 23
    .line 24
    invoke-interface {v0}, La5/b;->x()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    instance-of v0, p2, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ", fieldName "

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, ", "

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, La5/a;->f:La5/b;

    .line 97
    .line 98
    invoke-interface {p1}, La5/b;->k()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    .line 110
    .line 111
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0, p2}, La5/a;->e0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    const/4 v1, 0x1

    .line 122
    if-ne p2, v1, :cond_1

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    .line 129
    .line 130
    if-eqz v0, :cond_1

    .line 131
    .line 132
    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    .line 133
    .line 134
    return-object p2

    .line 135
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 136
    .line 137
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p2

    .line 141
    :cond_2
    iget-object v0, p0, La5/a;->g:La5/g;

    .line 142
    .line 143
    :goto_0
    :try_start_0
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 144
    .line 145
    invoke-interface {v1}, La5/b;->x0()V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 149
    .line 150
    invoke-interface {v1}, La5/b;->d()C

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 155
    .line 156
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 157
    .line 158
    invoke-interface {v3, v4}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_3

    .line 163
    .line 164
    :goto_1
    const/16 v3, 0x2c

    .line 165
    .line 166
    if-ne v1, v3, :cond_3

    .line 167
    .line 168
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 169
    .line 170
    invoke-interface {v1}, La5/b;->next()C

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 174
    .line 175
    invoke-interface {v1}, La5/b;->x0()V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 179
    .line 180
    invoke-interface {v1}, La5/b;->d()C

    .line 181
    .line 182
    .line 183
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    goto :goto_1

    .line 185
    :catchall_0
    move-exception p1

    .line 186
    goto/16 :goto_5

    .line 187
    .line 188
    :cond_3
    const-string v3, "expect \':\' at "

    .line 189
    .line 190
    const/16 v4, 0x3a

    .line 191
    .line 192
    const/16 v5, 0x22

    .line 193
    .line 194
    const/16 v6, 0x10

    .line 195
    .line 196
    if-ne v1, v5, :cond_5

    .line 197
    .line 198
    :try_start_1
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 199
    .line 200
    iget-object v7, p0, La5/a;->b:La5/i;

    .line 201
    .line 202
    invoke-interface {v1, v7, v5}, La5/b;->w(La5/i;C)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget-object v7, p0, La5/a;->f:La5/b;

    .line 207
    .line 208
    invoke-interface {v7}, La5/b;->x0()V

    .line 209
    .line 210
    .line 211
    iget-object v7, p0, La5/a;->f:La5/b;

    .line 212
    .line 213
    invoke-interface {v7}, La5/b;->d()C

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-ne v7, v4, :cond_4

    .line 218
    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 222
    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 232
    .line 233
    invoke-interface {v1}, La5/b;->h()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p1

    .line 248
    :cond_5
    const/16 v7, 0x7d

    .line 249
    .line 250
    if-ne v1, v7, :cond_6

    .line 251
    .line 252
    iget-object p2, p0, La5/a;->f:La5/b;

    .line 253
    .line 254
    invoke-interface {p2}, La5/b;->next()C

    .line 255
    .line 256
    .line 257
    iget-object p2, p0, La5/a;->f:La5/b;

    .line 258
    .line 259
    invoke-interface {p2}, La5/b;->y0()V

    .line 260
    .line 261
    .line 262
    iget-object p2, p0, La5/a;->f:La5/b;

    .line 263
    .line 264
    invoke-interface {p2, v6}, La5/b;->f0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v0}, La5/a;->A0(La5/g;)V

    .line 268
    .line 269
    .line 270
    return-object p1

    .line 271
    :cond_6
    const-string v7, "syntax error"

    .line 272
    .line 273
    const/16 v8, 0x27

    .line 274
    .line 275
    if-ne v1, v8, :cond_9

    .line 276
    .line 277
    :try_start_2
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 278
    .line 279
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 280
    .line 281
    invoke-interface {v1, v9}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_8

    .line 286
    .line 287
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 288
    .line 289
    iget-object v7, p0, La5/a;->b:La5/i;

    .line 290
    .line 291
    invoke-interface {v1, v7, v8}, La5/b;->w(La5/i;C)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iget-object v7, p0, La5/a;->f:La5/b;

    .line 296
    .line 297
    invoke-interface {v7}, La5/b;->x0()V

    .line 298
    .line 299
    .line 300
    iget-object v7, p0, La5/a;->f:La5/b;

    .line 301
    .line 302
    invoke-interface {v7}, La5/b;->d()C

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-ne v7, v4, :cond_7

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 310
    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 320
    .line 321
    invoke-interface {v1}, La5/b;->h()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw p1

    .line 336
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 337
    .line 338
    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw p1

    .line 342
    :cond_9
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 343
    .line 344
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 345
    .line 346
    invoke-interface {v1, v8}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_13

    .line 351
    .line 352
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 353
    .line 354
    iget-object v7, p0, La5/a;->b:La5/i;

    .line 355
    .line 356
    invoke-interface {v1, v7}, La5/b;->T(La5/i;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    iget-object v7, p0, La5/a;->f:La5/b;

    .line 361
    .line 362
    invoke-interface {v7}, La5/b;->x0()V

    .line 363
    .line 364
    .line 365
    iget-object v7, p0, La5/a;->f:La5/b;

    .line 366
    .line 367
    invoke-interface {v7}, La5/b;->d()C

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-ne v7, v4, :cond_12

    .line 372
    .line 373
    :goto_2
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 374
    .line 375
    invoke-interface {v3}, La5/b;->next()C

    .line 376
    .line 377
    .line 378
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 379
    .line 380
    invoke-interface {v3}, La5/b;->x0()V

    .line 381
    .line 382
    .line 383
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 384
    .line 385
    invoke-interface {v3}, La5/b;->d()C

    .line 386
    .line 387
    .line 388
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 389
    .line 390
    invoke-interface {v3}, La5/b;->y0()V

    .line 391
    .line 392
    .line 393
    sget-object v3, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 394
    .line 395
    const/16 v4, 0xd

    .line 396
    .line 397
    const/4 v7, 0x0

    .line 398
    if-ne v1, v3, :cond_c

    .line 399
    .line 400
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 401
    .line 402
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 403
    .line 404
    invoke-interface {v3, v8}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-nez v3, :cond_c

    .line 409
    .line 410
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 411
    .line 412
    iget-object v3, p0, La5/a;->b:La5/i;

    .line 413
    .line 414
    invoke-interface {v1, v3, v5}, La5/b;->w(La5/i;C)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    iget-object v3, p0, La5/a;->c:La5/h;

    .line 419
    .line 420
    iget-object v5, p0, La5/a;->f:La5/b;

    .line 421
    .line 422
    invoke-interface {v5}, La5/b;->s()I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    invoke-virtual {v3, v1, v7, v5}, La5/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    const-class v3, Ljava/util/Map;

    .line 431
    .line 432
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-eqz v3, :cond_a

    .line 437
    .line 438
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 439
    .line 440
    invoke-interface {v1, v6}, La5/b;->f0(I)V

    .line 441
    .line 442
    .line 443
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 444
    .line 445
    invoke-interface {v1}, La5/b;->t0()I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-ne v1, v4, :cond_10

    .line 450
    .line 451
    iget-object p2, p0, La5/a;->f:La5/b;

    .line 452
    .line 453
    invoke-interface {p2, v6}, La5/b;->f0(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0, v0}, La5/a;->A0(La5/g;)V

    .line 457
    .line 458
    .line 459
    return-object p1

    .line 460
    :cond_a
    :try_start_3
    iget-object p1, p0, La5/a;->c:La5/h;

    .line 461
    .line 462
    invoke-virtual {p1, v1}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    iget-object v2, p0, La5/a;->f:La5/b;

    .line 467
    .line 468
    invoke-interface {v2, v6}, La5/b;->f0(I)V

    .line 469
    .line 470
    .line 471
    const/4 v2, 0x2

    .line 472
    invoke-virtual {p0, v2}, La5/a;->D0(I)V

    .line 473
    .line 474
    .line 475
    if-eqz v0, :cond_b

    .line 476
    .line 477
    instance-of v2, p2, Ljava/lang/Integer;

    .line 478
    .line 479
    if-nez v2, :cond_b

    .line 480
    .line 481
    invoke-virtual {p0}, La5/a;->t0()V

    .line 482
    .line 483
    .line 484
    :cond_b
    invoke-interface {p1, p0, v1, p2}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    check-cast p1, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    .line 490
    invoke-virtual {p0, v0}, La5/a;->A0(La5/g;)V

    .line 491
    .line 492
    .line 493
    return-object p1

    .line 494
    :cond_c
    :try_start_4
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 495
    .line 496
    invoke-interface {v3}, La5/b;->d0()V

    .line 497
    .line 498
    .line 499
    if-eqz v2, :cond_d

    .line 500
    .line 501
    invoke-virtual {p0, v0}, La5/a;->A0(La5/g;)V

    .line 502
    .line 503
    .line 504
    :cond_d
    invoke-interface {p1, v1}, Lb5/f3;->b(Ljava/lang/String;)Ljava/lang/reflect/Type;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    iget-object v5, p0, La5/a;->f:La5/b;

    .line 509
    .line 510
    invoke-interface {v5}, La5/b;->t0()I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    const/16 v6, 0x8

    .line 515
    .line 516
    if-ne v5, v6, :cond_e

    .line 517
    .line 518
    iget-object v3, p0, La5/a;->f:La5/b;

    .line 519
    .line 520
    invoke-interface {v3}, La5/b;->d0()V

    .line 521
    .line 522
    .line 523
    goto :goto_3

    .line 524
    :cond_e
    invoke-virtual {p0, v3, v1}, La5/a;->o0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    :goto_3
    invoke-interface {p1, v1, v7}, Lb5/f3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p0, v0, v7, v1}, La5/a;->x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 532
    .line 533
    .line 534
    invoke-virtual {p0, v0}, La5/a;->A0(La5/g;)V

    .line 535
    .line 536
    .line 537
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 538
    .line 539
    invoke-interface {v1}, La5/b;->t0()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    const/16 v3, 0x14

    .line 544
    .line 545
    if-eq v1, v3, :cond_11

    .line 546
    .line 547
    const/16 v3, 0xf

    .line 548
    .line 549
    if-ne v1, v3, :cond_f

    .line 550
    .line 551
    goto :goto_4

    .line 552
    :cond_f
    if-ne v1, v4, :cond_10

    .line 553
    .line 554
    iget-object p2, p0, La5/a;->f:La5/b;

    .line 555
    .line 556
    invoke-interface {p2}, La5/b;->d0()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0, v0}, La5/a;->A0(La5/g;)V

    .line 560
    .line 561
    .line 562
    return-object p1

    .line 563
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 564
    .line 565
    goto/16 :goto_0

    .line 566
    .line 567
    :cond_11
    :goto_4
    invoke-virtual {p0, v0}, La5/a;->A0(La5/g;)V

    .line 568
    .line 569
    .line 570
    return-object p1

    .line 571
    :cond_12
    :try_start_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 572
    .line 573
    new-instance p2, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    iget-object v1, p0, La5/a;->f:La5/b;

    .line 582
    .line 583
    invoke-interface {v1}, La5/b;->h()I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v1, ", actual "

    .line 591
    .line 592
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p2

    .line 602
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    throw p1

    .line 606
    :cond_13
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 607
    .line 608
    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 612
    :goto_5
    invoke-virtual {p0, v0}, La5/a;->A0(La5/g;)V

    .line 613
    .line 614
    .line 615
    throw p1
.end method

.method public y0(Ljava/lang/Object;Ljava/lang/Object;)La5/g;
    .locals 2

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 4
    .line 5
    invoke-interface {v0, v1}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, La5/a;->g:La5/g;

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1, p2}, La5/a;->x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
