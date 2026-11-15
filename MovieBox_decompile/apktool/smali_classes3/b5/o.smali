.class public Lb5/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lb5/b2;


# instance fields
.field private final a:[Lb5/l;

.field protected final b:[Lb5/l;

.field protected final c:Ljava/lang/Class;

.field public final d:Lcom/alibaba/fastjson/util/h;

.field private e:Ljava/util/concurrent/ConcurrentMap;

.field private final f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private transient h:[J

.field private transient i:[S


# direct methods
.method public constructor <init>(La5/h;Lcom/alibaba/fastjson/util/h;)V
    .locals 9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->a:Ljava/lang/Class;

    iput-object v0, p0, Lb5/o;->c:Ljava/lang/Class;

    .line 6
    iput-object p2, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 7
    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->k:Lz4/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz4/d;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    const-class v1, La5/h$c;

    if-eq v0, v1, :cond_0

    .line 8
    :try_start_0
    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->k:Lz4/d;

    invoke-interface {v0}, Lz4/d;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    :cond_0
    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->i:[Lcom/alibaba/fastjson/util/d;

    array-length v1, v0

    new-array v1, v1, [Lb5/l;

    iput-object v1, p0, Lb5/o;->b:[Lb5/l;

    .line 10
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    .line 11
    iget-object v4, p2, Lcom/alibaba/fastjson/util/h;->i:[Lcom/alibaba/fastjson/util/d;

    aget-object v4, v4, v3

    .line 12
    invoke-virtual {p1, p1, p2, v4}, La5/h;->k(La5/h;Lcom/alibaba/fastjson/util/h;Lcom/alibaba/fastjson/util/d;)Lb5/l;

    move-result-object v5

    .line 13
    iget-object v6, p0, Lb5/o;->b:[Lb5/l;

    aput-object v5, v6, v3

    const/16 v6, 0x80

    if-le v0, v6, :cond_2

    .line 14
    iget-object v6, p0, Lb5/o;->g:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 15
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lb5/o;->g:Ljava/util/Map;

    .line 16
    :cond_1
    iget-object v6, p0, Lb5/o;->g:Ljava/util/Map;

    iget-object v7, v4, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_2
    iget-object v4, v4, Lcom/alibaba/fastjson/util/d;->u:[Ljava/lang/String;

    array-length v6, v4

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    if-nez v2, :cond_3

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 19
    :cond_3
    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_5
    iput-object v2, p0, Lb5/o;->f:Ljava/util/Map;

    .line 21
    iget-object p1, p2, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v0, p1

    new-array v0, v0, [Lb5/l;

    iput-object v0, p0, Lb5/o;->a:[Lb5/l;

    .line 22
    array-length p1, p1

    :goto_2
    if-ge v1, p1, :cond_6

    .line 23
    iget-object v0, p2, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    aget-object v0, v0, v1

    .line 24
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb5/o;->j(Ljava/lang/String;)Lb5/l;

    move-result-object v0

    .line 25
    iget-object v2, p0, Lb5/o;->a:[Lb5/l;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public constructor <init>(La5/h;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 6

    .line 1
    iget-object v2, p1, La5/h;->f:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v3, p1, La5/h;->m:Z

    iget-boolean v4, p1, La5/h;->o:Z

    .line 2
    invoke-virtual {p1}, La5/h;->v()Z

    move-result v5

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/h;->c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/h;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2}, Lb5/o;-><init>(La5/h;Lcom/alibaba/fastjson/util/h;)V

    return-void
.end method

.method private c(La5/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p2, v1, v2

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method protected static l(La5/h;Lcom/alibaba/fastjson/util/h;Ljava/lang/String;)Lb5/o;
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->k:Lz4/d;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {p1}, Lz4/d;->seeAlso()[Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_3

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    invoke-virtual {p0, v3}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    instance-of v4, v3, Lb5/o;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    check-cast v3, Lb5/o;

    .line 26
    .line 27
    iget-object v4, v3, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 28
    .line 29
    iget-object v5, v4, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    return-object v3

    .line 38
    :cond_1
    invoke-static {p0, v4, p2}, Lb5/o;->l(La5/h;Lcom/alibaba/fastjson/util/h;Ljava/lang/String;)Lb5/o;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    return-object v3

    .line 45
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-object v0
.end method

.method static m(I[I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    div-int/lit8 v1, p0, 0x20

    .line 6
    .line 7
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget p1, p1, v1

    .line 11
    .line 12
    rem-int/lit8 p0, p0, 0x20

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    shl-int p0, v1, p0

    .line 16
    .line 17
    and-int/2addr p0, p1

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    move v0, v1

    .line 21
    :cond_1
    return v0
.end method


# virtual methods
.method protected a(La5/b;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, La5/b;->t0()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 9
    .line 10
    const-string p2, "syntax error"

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    return v0
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lb5/o;->g(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public e(La5/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "create instance error, class "

    .line 4
    .line 5
    instance-of v3, p2, Ljava/lang/Class;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lb5/o;->c:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 30
    .line 31
    .line 32
    new-array v1, v1, [Ljava/lang/Class;

    .line 33
    .line 34
    aput-object p2, v1, v0

    .line 35
    .line 36
    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    iget-object v3, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 42
    .line 43
    iget-object v4, v3, Lcom/alibaba/fastjson/util/h;->c:Ljava/lang/reflect/Constructor;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    iget-object v6, v3, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    return-object v5

    .line 53
    :cond_1
    iget-object v6, v3, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    iget v7, v3, Lcom/alibaba/fastjson/util/h;->g:I

    .line 58
    .line 59
    if-lez v7, :cond_2

    .line 60
    .line 61
    return-object v5

    .line 62
    :cond_2
    :try_start_0
    iget v3, v3, Lcom/alibaba/fastjson/util/h;->g:I

    .line 63
    .line 64
    if-nez v3, :cond_4

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :catch_1
    move-exception p1

    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_3
    invoke-virtual {v6, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_4
    invoke-virtual {p1}, La5/a;->m()La5/g;

    .line 87
    .line 88
    .line 89
    move-result-object v3
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const-string v6, "can\'t create non-static inner class instance."

    .line 91
    .line 92
    if-eqz v3, :cond_e

    .line 93
    .line 94
    :try_start_1
    iget-object v7, v3, La5/g;->a:Ljava/lang/Object;

    .line 95
    .line 96
    if-eqz v7, :cond_e

    .line 97
    .line 98
    instance-of v7, p2, Ljava/lang/Class;

    .line 99
    .line 100
    if-eqz v7, :cond_d

    .line 101
    .line 102
    check-cast p2, Ljava/lang/Class;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const/16 v7, 0x24

    .line 109
    .line 110
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-virtual {p2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object v7, v3, La5/g;->a:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-nez v9, :cond_8

    .line 133
    .line 134
    iget-object v3, v3, La5/g;->b:La5/g;

    .line 135
    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    iget-object v9, v3, La5/g;->a:Ljava/lang/Object;

    .line 139
    .line 140
    if-eqz v9, :cond_6

    .line 141
    .line 142
    const-string v9, "java.util.ArrayList"

    .line 143
    .line 144
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-nez v9, :cond_5

    .line 149
    .line 150
    const-string v9, "java.util.List"

    .line 151
    .line 152
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_5

    .line 157
    .line 158
    const-string v9, "java.util.Collection"

    .line 159
    .line 160
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-nez v9, :cond_5

    .line 165
    .line 166
    const-string v9, "java.util.Map"

    .line 167
    .line 168
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-nez v9, :cond_5

    .line 173
    .line 174
    const-string v9, "java.util.HashMap"

    .line 175
    .line 176
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_6

    .line 181
    .line 182
    :cond_5
    iget-object v7, v3, La5/g;->a:Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_7

    .line 197
    .line 198
    iget-object v5, v3, La5/g;->a:Ljava/lang/Object;

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_6
    move-object v5, v7

    .line 202
    :cond_7
    :goto_0
    move-object v7, v5

    .line 203
    :cond_8
    if-eqz v7, :cond_c

    .line 204
    .line 205
    instance-of p2, v7, Ljava/util/Collection;

    .line 206
    .line 207
    if-eqz p2, :cond_9

    .line 208
    .line 209
    move-object p2, v7

    .line 210
    check-cast p2, Ljava/util/Collection;

    .line 211
    .line 212
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-nez p2, :cond_c

    .line 217
    .line 218
    :cond_9
    new-array p2, v1, [Ljava/lang/Object;

    .line 219
    .line 220
    aput-object v7, p2, v0

    .line 221
    .line 222
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    :goto_1
    if-eqz p1, :cond_b

    .line 227
    .line 228
    iget-object p1, p1, La5/a;->f:La5/b;

    .line 229
    .line 230
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 231
    .line 232
    invoke-interface {p1, v3}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_b

    .line 237
    .line 238
    iget-object p1, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 239
    .line 240
    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 241
    .line 242
    array-length v3, p1

    .line 243
    :goto_2
    if-ge v0, v3, :cond_b

    .line 244
    .line 245
    aget-object v4, p1, v0

    .line 246
    .line 247
    iget-object v5, v4, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 248
    .line 249
    const-class v6, Ljava/lang/String;

    .line 250
    .line 251
    if-ne v5, v6, :cond_a

    .line 252
    .line 253
    :try_start_2
    const-string v5, ""

    .line 254
    .line 255
    invoke-virtual {v4, p2, v5}, Lcom/alibaba/fastjson/util/d;->o(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :catch_2
    move-exception p1

    .line 260
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 261
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v1, p0, Lb5/o;->c:Ljava/lang/Class;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    throw p2

    .line 287
    :cond_a
    :goto_3
    add-int/2addr v0, v1

    .line 288
    goto :goto_2

    .line 289
    :cond_b
    return-object p2

    .line 290
    :cond_c
    :try_start_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 291
    .line 292
    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 297
    .line 298
    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p1

    .line 302
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 303
    .line 304
    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw p1
    :try_end_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 308
    :goto_4
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 309
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v1, p0, Lb5/o;->c:Ljava/lang/Class;

    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    throw p2

    .line 335
    :goto_5
    throw p1
.end method

.method public f(Ljava/util/Map;La5/h;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v1, :cond_14

    .line 9
    .line 10
    iget-object v1, v0, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    if-nez v1, :cond_14

    .line 13
    .line 14
    iget-object v0, p0, Lb5/o;->c:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-virtual {p0, v4, v0}, Lb5/o;->e(La5/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_12

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v5}, Lb5/o;->q(Ljava/lang/String;)Lb5/l;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v6, v5, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 58
    .line 59
    iget-object v7, v6, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 60
    .line 61
    iget-object v8, v6, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 62
    .line 63
    iget-object v9, v6, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/d;->e()Lz4/b;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    iget-object v11, v6, Lcom/alibaba/fastjson/util/d;->g:Ljava/lang/Class;

    .line 70
    .line 71
    if-eqz v11, :cond_3

    .line 72
    .line 73
    invoke-virtual {v9, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_1

    .line 78
    .line 79
    if-eqz v10, :cond_3

    .line 80
    .line 81
    invoke-interface {v10}, Lz4/b;->deserializeUsing()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const-class v10, Ljava/lang/Void;

    .line 86
    .line 87
    if-eq v9, v10, :cond_3

    .line 88
    .line 89
    :cond_1
    instance-of v6, v1, Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v6, :cond_2

    .line 92
    .line 93
    move-object v6, v1

    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONValidator;->m(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONValidator;->q()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    :goto_1
    new-instance v1, La5/a;

    .line 112
    .line 113
    invoke-direct {v1, v6}, La5/a;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v1, v0, v8, v4}, Lb5/l;->d(La5/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    if-eqz v7, :cond_e

    .line 121
    .line 122
    iget-object v9, v6, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 123
    .line 124
    if-nez v9, :cond_e

    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 131
    .line 132
    if-ne v9, v10, :cond_5

    .line 133
    .line 134
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 135
    .line 136
    if-ne v1, v9, :cond_4

    .line 137
    .line 138
    invoke-virtual {v7, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    .line 144
    if-ne v1, v9, :cond_e

    .line 145
    .line 146
    invoke-virtual {v7, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 151
    .line 152
    if-ne v9, v10, :cond_6

    .line 153
    .line 154
    instance-of v9, v1, Ljava/lang/Number;

    .line 155
    .line 156
    if-eqz v9, :cond_e

    .line 157
    .line 158
    check-cast v1, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_6
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 170
    .line 171
    if-ne v9, v10, :cond_7

    .line 172
    .line 173
    instance-of v9, v1, Ljava/lang/Number;

    .line 174
    .line 175
    if-eqz v9, :cond_e

    .line 176
    .line 177
    check-cast v1, Ljava/lang/Number;

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_7
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 189
    .line 190
    const/16 v11, 0xa

    .line 191
    .line 192
    if-ne v9, v10, :cond_a

    .line 193
    .line 194
    instance-of v9, v1, Ljava/lang/Number;

    .line 195
    .line 196
    if-eqz v9, :cond_8

    .line 197
    .line 198
    check-cast v1, Ljava/lang/Number;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_8
    instance-of v9, v1, Ljava/lang/String;

    .line 210
    .line 211
    if-eqz v9, :cond_e

    .line 212
    .line 213
    check-cast v1, Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-gt v5, v11, :cond_9

    .line 220
    .line 221
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->L0(Ljava/lang/String;)F

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    goto :goto_2

    .line 226
    :cond_9
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    :goto_2
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_a
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 236
    .line 237
    if-ne v9, v10, :cond_d

    .line 238
    .line 239
    instance-of v9, v1, Ljava/lang/Number;

    .line 240
    .line 241
    if-eqz v9, :cond_b

    .line 242
    .line 243
    check-cast v1, Ljava/lang/Number;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 246
    .line 247
    .line 248
    move-result-wide v5

    .line 249
    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_b
    instance-of v9, v1, Ljava/lang/String;

    .line 255
    .line 256
    if-eqz v9, :cond_e

    .line 257
    .line 258
    check-cast v1, Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-gt v5, v11, :cond_c

    .line 265
    .line 266
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->K0(Ljava/lang/String;)D

    .line 267
    .line 268
    .line 269
    move-result-wide v5

    .line 270
    goto :goto_3

    .line 271
    :cond_c
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 272
    .line 273
    .line 274
    move-result-wide v5

    .line 275
    :goto_3
    invoke-virtual {v7, v0, v5, v6}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_d
    if-eqz v1, :cond_e

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    if-ne v8, v9, :cond_e

    .line 287
    .line 288
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_e
    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->t:Ljava/lang/String;

    .line 294
    .line 295
    if-eqz v6, :cond_f

    .line 296
    .line 297
    const-class v7, Ljava/util/Date;

    .line 298
    .line 299
    if-ne v8, v7, :cond_f

    .line 300
    .line 301
    invoke-static {v1, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    goto :goto_4

    .line 306
    :cond_f
    if-eqz v6, :cond_10

    .line 307
    .line 308
    instance-of v7, v8, Ljava/lang/Class;

    .line 309
    .line 310
    if-eqz v7, :cond_10

    .line 311
    .line 312
    move-object v7, v8

    .line 313
    check-cast v7, Ljava/lang/Class;

    .line 314
    .line 315
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    const-string v9, "java.time.LocalDateTime"

    .line 320
    .line 321
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-eqz v7, :cond_10

    .line 326
    .line 327
    invoke-static {v1, v6}, Lb5/y1;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    goto :goto_4

    .line 332
    :cond_10
    instance-of v6, v8, Ljava/lang/reflect/ParameterizedType;

    .line 333
    .line 334
    if-eqz v6, :cond_11

    .line 335
    .line 336
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 337
    .line 338
    invoke-static {v1, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->g(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;La5/h;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    goto :goto_4

    .line 343
    :cond_11
    invoke-static {v1, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;La5/h;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    :goto_4
    invoke-virtual {v5, v0, v1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :cond_12
    iget-object p1, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 353
    .line 354
    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->f:Ljava/lang/reflect/Method;

    .line 355
    .line 356
    if-eqz p1, :cond_13

    .line 357
    .line 358
    :try_start_0
    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-object p1

    .line 363
    :catch_0
    move-exception p1

    .line 364
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 365
    .line 366
    const-string v0, "build object error"

    .line 367
    .line 368
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    throw p2

    .line 372
    :cond_13
    return-object v0

    .line 373
    :cond_14
    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 374
    .line 375
    array-length v1, v0

    .line 376
    new-array v5, v1, [Ljava/lang/Object;

    .line 377
    .line 378
    move v6, v3

    .line 379
    move-object v7, v4

    .line 380
    :goto_5
    if-ge v6, v1, :cond_1f

    .line 381
    .line 382
    aget-object v8, v0, v6

    .line 383
    .line 384
    iget-object v9, v8, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 385
    .line 386
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    if-nez v9, :cond_1e

    .line 391
    .line 392
    iget-object v10, v8, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 393
    .line 394
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 395
    .line 396
    if-ne v10, v11, :cond_15

    .line 397
    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    goto :goto_6

    .line 403
    :cond_15
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 404
    .line 405
    if-ne v10, v11, :cond_16

    .line 406
    .line 407
    const-wide/16 v9, 0x0

    .line 408
    .line 409
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    goto :goto_6

    .line 414
    :cond_16
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 415
    .line 416
    if-ne v10, v11, :cond_17

    .line 417
    .line 418
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    goto :goto_6

    .line 423
    :cond_17
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 424
    .line 425
    if-ne v10, v11, :cond_18

    .line 426
    .line 427
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 428
    .line 429
    .line 430
    move-result-object v9

    .line 431
    goto :goto_6

    .line 432
    :cond_18
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 433
    .line 434
    if-ne v10, v11, :cond_19

    .line 435
    .line 436
    const/4 v9, 0x0

    .line 437
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 438
    .line 439
    .line 440
    move-result-object v9

    .line 441
    goto :goto_6

    .line 442
    :cond_19
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 443
    .line 444
    if-ne v10, v11, :cond_1a

    .line 445
    .line 446
    const-wide/16 v9, 0x0

    .line 447
    .line 448
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    goto :goto_6

    .line 453
    :cond_1a
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 454
    .line 455
    if-ne v10, v11, :cond_1b

    .line 456
    .line 457
    const/16 v9, 0x30

    .line 458
    .line 459
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    goto :goto_6

    .line 464
    :cond_1b
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 465
    .line 466
    if-ne v10, v11, :cond_1c

    .line 467
    .line 468
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 469
    .line 470
    :cond_1c
    :goto_6
    if-nez v7, :cond_1d

    .line 471
    .line 472
    new-instance v7, Ljava/util/HashMap;

    .line 473
    .line 474
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 475
    .line 476
    .line 477
    :cond_1d
    iget-object v8, v8, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 478
    .line 479
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v10

    .line 483
    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    :cond_1e
    aput-object v9, v5, v6

    .line 487
    .line 488
    add-int/2addr v6, v2

    .line 489
    goto :goto_5

    .line 490
    :cond_1f
    if-eqz v7, :cond_21

    .line 491
    .line 492
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    :cond_20
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_21

    .line 505
    .line 506
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Ljava/util/Map$Entry;

    .line 511
    .line 512
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    check-cast v6, Ljava/lang/String;

    .line 517
    .line 518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {p0, v6}, Lb5/o;->q(Ljava/lang/String;)Lb5/l;

    .line 523
    .line 524
    .line 525
    move-result-object v6

    .line 526
    if-eqz v6, :cond_20

    .line 527
    .line 528
    iget-object v6, v6, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 529
    .line 530
    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 531
    .line 532
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v6

    .line 536
    check-cast v6, Ljava/lang/Integer;

    .line 537
    .line 538
    if-eqz v6, :cond_20

    .line 539
    .line 540
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    aput-object v0, v5, v6

    .line 545
    .line 546
    goto :goto_7

    .line 547
    :cond_21
    iget-object p1, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 548
    .line 549
    iget-object v0, p1, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    .line 550
    .line 551
    if-eqz v0, :cond_29

    .line 552
    .line 553
    iget-boolean p1, p1, Lcom/alibaba/fastjson/util/h;->q:Z

    .line 554
    .line 555
    if-eqz p1, :cond_24

    .line 556
    .line 557
    move p1, v3

    .line 558
    move v0, p1

    .line 559
    :goto_8
    if-ge p1, v1, :cond_25

    .line 560
    .line 561
    aget-object v6, v5, p1

    .line 562
    .line 563
    if-nez v6, :cond_22

    .line 564
    .line 565
    iget-object v6, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 566
    .line 567
    iget-object v6, v6, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 568
    .line 569
    if-eqz v6, :cond_23

    .line 570
    .line 571
    array-length v7, v6

    .line 572
    if-ge p1, v7, :cond_23

    .line 573
    .line 574
    aget-object v6, v6, p1

    .line 575
    .line 576
    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 577
    .line 578
    const-class v7, Ljava/lang/String;

    .line 579
    .line 580
    if-ne v6, v7, :cond_23

    .line 581
    .line 582
    move v0, v2

    .line 583
    goto :goto_9

    .line 584
    :cond_22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    move-result-object v7

    .line 588
    iget-object v8, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 589
    .line 590
    iget-object v8, v8, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 591
    .line 592
    aget-object v8, v8, p1

    .line 593
    .line 594
    iget-object v8, v8, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 595
    .line 596
    if-eq v7, v8, :cond_23

    .line 597
    .line 598
    invoke-static {v6, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;La5/h;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    aput-object v6, v5, p1

    .line 603
    .line 604
    :cond_23
    :goto_9
    add-int/2addr p1, v2

    .line 605
    goto :goto_8

    .line 606
    :cond_24
    move v0, v3

    .line 607
    :cond_25
    const-string p1, "create instance error, "

    .line 608
    .line 609
    if-eqz v0, :cond_28

    .line 610
    .line 611
    iget-object p2, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 612
    .line 613
    iget-object p2, p2, Lcom/alibaba/fastjson/util/h;->r:Ljava/lang/reflect/Constructor;

    .line 614
    .line 615
    if-eqz p2, :cond_28

    .line 616
    .line 617
    :try_start_1
    invoke-virtual {p2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object p2

    .line 621
    :goto_a
    if-ge v3, v1, :cond_27

    .line 622
    .line 623
    aget-object v0, v5, v3

    .line 624
    .line 625
    if-eqz v0, :cond_26

    .line 626
    .line 627
    iget-object v4, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 628
    .line 629
    iget-object v4, v4, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 630
    .line 631
    if-eqz v4, :cond_26

    .line 632
    .line 633
    array-length v6, v4

    .line 634
    if-ge v3, v6, :cond_26

    .line 635
    .line 636
    aget-object v4, v4, v3

    .line 637
    .line 638
    invoke-virtual {v4, p2, v0}, Lcom/alibaba/fastjson/util/d;->o(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    .line 640
    .line 641
    goto :goto_b

    .line 642
    :catch_1
    move-exception p2

    .line 643
    goto :goto_c

    .line 644
    :cond_26
    :goto_b
    add-int/2addr v3, v2

    .line 645
    goto :goto_a

    .line 646
    :cond_27
    move-object v4, p2

    .line 647
    goto :goto_d

    .line 648
    :goto_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 649
    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    iget-object p1, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 659
    .line 660
    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    .line 661
    .line 662
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object p1

    .line 666
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 674
    .line 675
    .line 676
    throw v0

    .line 677
    :cond_28
    :try_start_2
    iget-object p2, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 678
    .line 679
    iget-object p2, p2, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    .line 680
    .line 681
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 685
    move-object v4, p1

    .line 686
    goto :goto_d

    .line 687
    :catch_2
    move-exception p2

    .line 688
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 689
    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    iget-object p1, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 699
    .line 700
    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    .line 701
    .line 702
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object p1

    .line 706
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object p1

    .line 713
    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    .line 715
    .line 716
    throw v0

    .line 717
    :cond_29
    iget-object p1, p1, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    .line 718
    .line 719
    if-eqz p1, :cond_2a

    .line 720
    .line 721
    :try_start_3
    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 725
    goto :goto_d

    .line 726
    :catch_3
    move-exception p1

    .line 727
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 728
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 732
    .line 733
    .line 734
    const-string v1, "create factory method error, "

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    iget-object v1, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 740
    .line 741
    iget-object v1, v1, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    .line 742
    .line 743
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 755
    .line 756
    .line 757
    throw p2

    .line 758
    :cond_2a
    :goto_d
    return-object v4
.end method

.method public g(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lb5/o;->h(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method protected h(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    .line 1
    const-class v1, Lcom/alibaba/fastjson/a;

    if-eq v0, v1, :cond_96

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v1, :cond_0

    goto/16 :goto_47

    .line 2
    :cond_0
    iget-object v1, v9, La5/a;->f:La5/b;

    move-object v11, v1

    check-cast v11, La5/c;

    .line 3
    invoke-virtual/range {p1 .. p1}, La5/a;->l()La5/h;

    move-result-object v12

    .line 4
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v1

    const/16 v2, 0x8

    const/16 v13, 0x10

    const/4 v14, 0x0

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v11, v13}, La5/c;->f0(I)V

    return-object v14

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, La5/a;->m()La5/g;

    move-result-object v2

    if-eqz p4, :cond_2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, v2, La5/g;->b:La5/g;

    :cond_2
    move-object v15, v2

    const/16 v7, 0xd

    if-ne v1, v7, :cond_4

    .line 8
    :try_start_0
    invoke-virtual {v11, v13}, La5/c;->f0(I)V

    if-nez p4, :cond_3

    .line 9
    invoke-virtual/range {p0 .. p2}, Lb5/o;->e(La5/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v5, p4

    goto/16 :goto_46

    :cond_3
    move-object/from16 v0, p4

    .line 10
    :goto_0
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v0

    :cond_4
    const/16 v2, 0xe

    if-ne v1, v2, :cond_6

    .line 11
    :try_start_1
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 12
    iget-object v5, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget v5, v5, Lcom/alibaba/fastjson/util/h;->j:I

    and-int/2addr v5, v4

    if-nez v5, :cond_5

    .line 13
    invoke-virtual {v11, v3}, La5/c;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_5

    and-int v3, p5, v4

    if-eqz v3, :cond_6

    .line 14
    :cond_5
    invoke-virtual/range {p0 .. p4}, Lb5/o;->i(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v0

    :cond_6
    const/16 v3, 0xc

    .line 16
    const-class v6, Ljava/lang/Integer;

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x4

    if-eq v1, v3, :cond_f

    if-eq v1, v13, :cond_f

    .line 17
    :try_start_2
    invoke-virtual {v11}, La5/c;->W()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v14

    :cond_7
    if-ne v1, v7, :cond_a

    .line 19
    :try_start_3
    invoke-virtual {v11}, La5/c;->o0()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_8

    .line 21
    :try_start_4
    invoke-virtual {v11}, La5/c;->d0()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v14

    .line 23
    :cond_8
    :try_start_5
    iget-object v3, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/h;->k:Lz4/d;

    if-eqz v3, :cond_a

    .line 24
    invoke-interface {v3}, Lz4/d;->seeAlso()[Ljava/lang/Class;

    move-result-object v3

    array-length v13, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_a

    aget-object v4, v3, v7

    .line 25
    const-class v14, Ljava/lang/Enum;

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v14, :cond_9

    .line 26
    :try_start_6
    invoke-static {v4, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 27
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v5, p4

    const/4 v14, 0x0

    goto/16 :goto_46

    :catch_0
    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x0

    goto :goto_1

    :cond_a
    if-ne v1, v2, :cond_b

    .line 28
    :try_start_7
    invoke-virtual {v11}, La5/c;->d()C

    move-result v0

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_b

    .line 29
    invoke-virtual {v11}, La5/c;->next()C

    .line 30
    invoke-virtual {v11}, La5/c;->d0()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 31
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    const/4 v1, 0x0

    return-object v1

    .line 32
    :cond_b
    :try_start_8
    iget-object v0, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v2, v0, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    array-length v2, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    .line 33
    :try_start_9
    aget-object v0, v0, v2

    .line 34
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    if-ne v0, v6, :cond_c

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 35
    invoke-virtual {v11}, La5/c;->p()I

    move-result v0

    .line 36
    invoke-virtual {v11}, La5/c;->d0()V

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v12, v0}, Lb5/o;->c(La5/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 38
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_c
    if-ne v0, v5, :cond_d

    const/4 v0, 0x4

    if-ne v1, v0, :cond_d

    .line 39
    :try_start_a
    invoke-virtual {v11}, La5/c;->o0()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v11}, La5/c;->d0()V

    .line 41
    invoke-direct {v8, v12, v0}, Lb5/o;->c(La5/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 42
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v0

    .line 43
    :goto_2
    :try_start_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 44
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v11}, La5/c;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pos "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v11}, La5/c;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    instance-of v1, v10, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 50
    const-string v1, ", fieldName "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    :cond_e
    const-string v1, ", fastjson-version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.83"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 55
    :cond_f
    :try_start_c
    iget v1, v9, La5/a;->k:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    const/4 v4, 0x0

    .line 56
    :try_start_d
    iput v4, v9, La5/a;->k:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    :cond_10
    const/4 v4, 0x0

    .line 57
    :goto_3
    :try_start_e
    iget-object v1, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v14, v1, Lcom/alibaba/fastjson/util/h;->m:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move v3, v4

    move v7, v3

    const/4 v4, 0x0

    const/16 v17, 0x0

    .line 58
    :goto_4
    :try_start_f
    iget-object v13, v8, Lb5/o;->b:[Lb5/l;

    array-length v0, v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    if-ge v7, v0, :cond_13

    const/16 v0, 0x10

    if-ge v3, v0, :cond_13

    .line 59
    :try_start_10
    aget-object v0, v13, v7

    .line 60
    iget-object v13, v0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    move/from16 p4, v7

    .line 61
    iget-object v7, v13, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 62
    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/d;->e()Lz4/b;

    move-result-object v21

    if-eqz v21, :cond_11

    move-object/from16 p6, v7

    .line 63
    instance-of v7, v0, Lb5/f;

    if-eqz v7, :cond_12

    .line 64
    move-object v7, v0

    check-cast v7, Lb5/f;

    iget-boolean v7, v7, Lb5/f;->d:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :goto_5
    move-object/from16 v32, v2

    move-object/from16 v2, p6

    move-object/from16 p6, v32

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v5, v1

    :goto_6
    move-object v14, v4

    goto/16 :goto_46

    :cond_11
    move-object/from16 p6, v7

    :cond_12
    const/4 v7, 0x0

    goto :goto_5

    :cond_13
    move/from16 p4, v7

    move-object/from16 p6, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v21, 0x0

    :goto_7
    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    if-eqz v0, :cond_3c

    move-object/from16 v27, v1

    .line 65
    :try_start_11
    iget-object v1, v13, Lcom/alibaba/fastjson/util/d;->p:[C

    if-eqz v7, :cond_14

    .line 66
    invoke-virtual {v11, v1}, La5/c;->O0([C)Z

    move-result v7

    if-eqz v7, :cond_14

    move-object/from16 v28, v12

    :goto_8
    const/4 v1, 0x0

    const/4 v7, 0x1

    :goto_9
    const/4 v12, 0x0

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    move-object v14, v4

    move-object/from16 v5, v27

    goto/16 :goto_46

    .line 67
    :cond_14
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v28, v12

    const/4 v12, -0x2

    if-eq v2, v7, :cond_39

    if-ne v2, v6, :cond_15

    goto/16 :goto_16

    .line 68
    :cond_15
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v7, :cond_36

    const-class v7, Ljava/lang/Long;

    if-ne v2, v7, :cond_16

    goto/16 :goto_14

    :cond_16
    if-ne v2, v5, :cond_19

    .line 69
    invoke-virtual {v11, v1}, La5/c;->g1([C)Ljava/lang/String;

    move-result-object v1

    .line 70
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_17

    :goto_a
    const/4 v7, 0x1

    const/4 v12, 0x1

    goto/16 :goto_18

    :cond_17
    if-ne v7, v12, :cond_18

    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, p2

    move/from16 v30, p4

    move/from16 v19, v3

    move-object v13, v5

    move-object/from16 v20, v17

    move-object/from16 v21, v28

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v18, 0x4

    move-object/from16 v17, p6

    move-object/from16 v28, v6

    goto/16 :goto_45

    :cond_18
    :goto_c
    const/4 v7, 0x0

    goto :goto_9

    .line 71
    :cond_19
    const-class v7, Ljava/util/Date;

    if-ne v2, v7, :cond_1b

    iget-object v7, v13, Lcom/alibaba/fastjson/util/d;->t:Ljava/lang/String;

    if-nez v7, :cond_1b

    .line 72
    invoke-virtual {v11, v1}, La5/c;->X0([C)Ljava/util/Date;

    move-result-object v1

    .line 73
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_1a

    goto :goto_a

    :cond_1a
    if-ne v7, v12, :cond_18

    goto :goto_b

    .line 74
    :cond_1b
    const-class v7, Ljava/math/BigDecimal;

    if-ne v2, v7, :cond_1d

    .line 75
    invoke-virtual {v11, v1}, La5/c;->Y0([C)Ljava/math/BigDecimal;

    move-result-object v1

    .line 76
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_1c

    goto :goto_a

    :cond_1c
    if-ne v7, v12, :cond_18

    goto :goto_b

    .line 77
    :cond_1d
    const-class v7, Ljava/math/BigInteger;

    if-ne v2, v7, :cond_1f

    .line 78
    invoke-virtual {v11, v1}, La5/c;->V0([C)Ljava/math/BigInteger;

    move-result-object v1

    .line 79
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_1e

    goto :goto_a

    :cond_1e
    if-ne v7, v12, :cond_18

    goto :goto_b

    .line 80
    :cond_1f
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v7, :cond_33

    const-class v7, Ljava/lang/Boolean;

    if-ne v2, v7, :cond_20

    goto/16 :goto_12

    .line 81
    :cond_20
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v7, :cond_30

    const-class v7, Ljava/lang/Float;

    if-ne v2, v7, :cond_21

    goto/16 :goto_10

    .line 82
    :cond_21
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v7, :cond_2d

    const-class v7, Ljava/lang/Double;

    if-ne v2, v7, :cond_22

    goto/16 :goto_e

    .line 83
    :cond_22
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 84
    invoke-virtual/range {p1 .. p1}, La5/a;->l()La5/h;

    move-result-object v7

    invoke-virtual {v7, v2}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    move-result-object v7

    instance-of v7, v7, Lb5/h;

    if-eqz v7, :cond_25

    if-eqz v21, :cond_23

    .line 85
    invoke-interface/range {v21 .. v21}, Lz4/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object v7

    const-class v12, Ljava/lang/Void;

    if-ne v7, v12, :cond_25

    .line 86
    :cond_23
    instance-of v7, v0, Lb5/f;

    if-eqz v7, :cond_3d

    .line 87
    move-object v7, v0

    check-cast v7, Lb5/f;

    iget-object v7, v7, Lb5/f;->c:Lb5/b2;

    .line 88
    invoke-virtual {v8, v11, v1, v7}, Lb5/o;->p(La5/c;[CLb5/b2;)Ljava/lang/Enum;

    move-result-object v1

    .line 89
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_24

    goto/16 :goto_a

    :cond_24
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    .line 90
    :cond_25
    const-class v7, [I

    if-ne v2, v7, :cond_27

    .line 91
    invoke-virtual {v11, v1}, La5/c;->e1([C)[I

    move-result-object v1

    .line 92
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_26

    goto/16 :goto_a

    :cond_26
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    .line 93
    :cond_27
    const-class v7, [F

    if-ne v2, v7, :cond_29

    .line 94
    invoke-virtual {v11, v1}, La5/c;->b1([C)[F

    move-result-object v1

    .line 95
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_28

    goto/16 :goto_a

    :cond_28
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    .line 96
    :cond_29
    const-class v7, [[F

    if-ne v2, v7, :cond_2b

    .line 97
    invoke-virtual {v11, v1}, La5/c;->c1([C)[[F

    move-result-object v1

    .line 98
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_2a

    goto/16 :goto_a

    :cond_2a
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    .line 99
    :cond_2b
    invoke-virtual {v11, v1}, La5/c;->O0([C)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto/16 :goto_8

    :cond_2c
    move/from16 v21, v3

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    :goto_d
    move-object/from16 v5, v27

    move-object/from16 v6, v28

    const/16 v1, 0xd

    goto/16 :goto_27

    .line 100
    :cond_2d
    :goto_e
    invoke-virtual {v11, v1}, La5/c;->Z0([C)D

    move-result-wide v30

    cmpl-double v1, v30, v25

    if-nez v1, :cond_2e

    .line 101
    iget v1, v11, La5/c;->n:I

    const/4 v7, 0x5

    if-ne v1, v7, :cond_2e

    const/4 v1, 0x0

    goto :goto_f

    .line 102
    :cond_2e
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 103
    :goto_f
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_2f

    goto/16 :goto_a

    :cond_2f
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    .line 104
    :cond_30
    :goto_10
    invoke-virtual {v11, v1}, La5/c;->a1([C)F

    move-result v1

    cmpl-float v7, v1, v24

    if-nez v7, :cond_31

    .line 105
    iget v7, v11, La5/c;->n:I

    const/4 v12, 0x5

    if-ne v7, v12, :cond_31

    const/4 v1, 0x0

    goto :goto_11

    .line 106
    :cond_31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 107
    :goto_11
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_32

    goto/16 :goto_a

    :cond_32
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    .line 108
    :cond_33
    :goto_12
    invoke-virtual {v11, v1}, La5/c;->W0([C)Z

    move-result v1

    .line 109
    iget v7, v11, La5/c;->n:I

    const/4 v12, 0x5

    if-ne v7, v12, :cond_34

    const/4 v1, 0x0

    goto :goto_13

    .line 110
    :cond_34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 111
    :goto_13
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_35

    goto/16 :goto_a

    :cond_35
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    .line 112
    :cond_36
    :goto_14
    invoke-virtual {v11, v1}, La5/c;->f1([C)J

    move-result-wide v30

    cmp-long v1, v30, v22

    if-nez v1, :cond_37

    .line 113
    iget v1, v11, La5/c;->n:I

    const/4 v7, 0x5

    if-ne v1, v7, :cond_37

    const/4 v1, 0x0

    goto :goto_15

    .line 114
    :cond_37
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 115
    :goto_15
    iget v7, v11, La5/c;->n:I

    if-lez v7, :cond_38

    goto/16 :goto_a

    :cond_38
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    .line 116
    :cond_39
    :goto_16
    invoke-virtual {v11, v1}, La5/c;->d1([C)I

    move-result v1

    if-nez v1, :cond_3a

    .line 117
    iget v7, v11, La5/c;->n:I

    const/4 v12, 0x5

    if-ne v7, v12, :cond_3a

    const/4 v1, 0x0

    goto :goto_17

    .line 118
    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 119
    :goto_17
    iget v7, v11, La5/c;->n:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-lez v7, :cond_3b

    goto/16 :goto_a

    :cond_3b
    const/4 v12, -0x2

    if-ne v7, v12, :cond_18

    goto/16 :goto_b

    :cond_3c
    move-object/from16 v27, v1

    move-object/from16 v28, v12

    :cond_3d
    const/4 v1, 0x0

    goto/16 :goto_c

    :goto_18
    if-nez v7, :cond_5c

    move/from16 v21, v3

    .line 120
    :try_start_12
    iget-object v3, v9, La5/a;->b:La5/i;

    invoke-virtual {v11, v3}, La5/c;->h0(La5/i;)Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-nez v3, :cond_3f

    move-object/from16 v29, v6

    .line 121
    :try_start_13
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v6

    move-object/from16 v30, v5

    const/16 v5, 0xd

    if-ne v6, v5, :cond_3e

    const/16 v5, 0x10

    .line 122
    invoke-virtual {v11, v5}, La5/c;->f0(I)V

    :goto_19
    move-object/from16 v5, v27

    goto/16 :goto_26

    :cond_3e
    const/16 v5, 0x10

    if-ne v6, v5, :cond_40

    .line 123
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v11, v5}, La5/c;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v5, :cond_40

    goto/16 :goto_d

    :cond_3f
    move-object/from16 v30, v5

    move-object/from16 v29, v6

    .line 124
    :cond_40
    :try_start_14
    const-string v5, "$ref"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-ne v5, v3, :cond_4e

    if-eqz v15, :cond_4e

    const/4 v5, 0x4

    .line 125
    :try_start_15
    invoke-virtual {v11, v5}, La5/c;->r(I)V

    .line 126
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v0

    if-ne v0, v5, :cond_4d

    .line 127
    invoke-virtual {v11}, La5/c;->o0()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 129
    iget-object v0, v15, La5/g;->a:Ljava/lang/Object;

    move-object v1, v0

    :goto_1a
    const/16 v0, 0xd

    goto/16 :goto_1f

    .line 130
    :cond_41
    const-string v1, ".."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 131
    iget-object v1, v15, La5/g;->b:La5/g;

    .line 132
    iget-object v2, v1, La5/g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_42

    :goto_1b
    move-object v1, v2

    goto :goto_1a

    .line 133
    :cond_42
    new-instance v2, La5/a$a;

    invoke-direct {v2, v1, v0}, La5/a$a;-><init>(La5/g;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, La5/a;->h(La5/a$a;)V

    const/4 v0, 0x1

    .line 134
    iput v0, v9, La5/a;->k:I

    goto :goto_1e

    .line 135
    :cond_43
    const-string v1, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    move-object v1, v15

    .line 136
    :goto_1c
    iget-object v2, v1, La5/g;->b:La5/g;

    if-eqz v2, :cond_44

    move-object v1, v2

    goto :goto_1c

    .line 137
    :cond_44
    iget-object v2, v1, La5/g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_45

    goto :goto_1b

    .line 138
    :cond_45
    new-instance v2, La5/a$a;

    invoke-direct {v2, v1, v0}, La5/a$a;-><init>(La5/g;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, La5/a;->h(La5/a$a;)V

    const/4 v0, 0x1

    .line 139
    iput v0, v9, La5/a;->k:I

    goto :goto_1e

    :cond_46
    const/16 v1, 0x5c

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_49

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 142
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_48

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_47

    add-int/lit8 v3, v3, 0x1

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 145
    :cond_47
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_1d

    .line 146
    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_49
    invoke-virtual {v9, v0}, La5/a;->u0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    goto :goto_1a

    .line 148
    :cond_4a
    new-instance v1, La5/a$a;

    invoke-direct {v1, v15, v0}, La5/a$a;-><init>(La5/g;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, La5/a;->h(La5/a$a;)V

    const/4 v0, 0x1

    .line 149
    iput v0, v9, La5/a;->k:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :goto_1e
    move-object/from16 v1, v27

    goto :goto_1a

    .line 150
    :goto_1f
    :try_start_16
    invoke-virtual {v11, v0}, La5/c;->f0(I)V

    .line 151
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v2

    if-ne v2, v0, :cond_4c

    const/16 v0, 0x10

    .line 152
    invoke-virtual {v11, v0}, La5/c;->f0(I)V

    .line 153
    invoke-virtual {v9, v15, v1, v10}, La5/a;->x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-eqz v4, :cond_4b

    .line 154
    iput-object v1, v4, La5/g;->a:Ljava/lang/Object;

    .line 155
    :cond_4b
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v1

    .line 156
    :cond_4c
    :try_start_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 157
    :cond_4d
    :try_start_18
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, La5/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    if-eqz v14, :cond_50

    .line 158
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-nez v5, :cond_4f

    goto :goto_21

    :cond_4f
    :goto_20
    const/4 v0, 0x4

    goto :goto_22

    :cond_50
    :goto_21
    :try_start_19
    sget-object v5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v5, v3, :cond_5b

    goto :goto_20

    .line 159
    :goto_22
    invoke-virtual {v11, v0}, La5/c;->r(I)V

    .line 160
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v1

    if-ne v1, v0, :cond_5a

    .line 161
    invoke-virtual {v11}, La5/c;->o0()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 162
    invoke-virtual {v11, v1}, La5/c;->f0(I)V

    .line 163
    iget-object v1, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/h;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v9, v1}, La5/a;->w(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_51
    move-object/from16 v5, v27

    move-object/from16 v6, v28

    goto/16 :goto_25

    .line 164
    :cond_52
    iget-object v1, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    move-object/from16 v6, v28

    invoke-static {v6, v1, v0}, Lb5/o;->l(La5/h;Lcom/alibaba/fastjson/util/h;Ljava/lang/String;)Lb5/o;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-nez v1, :cond_56

    .line 165
    :try_start_1a
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 166
    const-string v2, "java.util.HashMap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "java.util.LinkedHashMap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_23

    .line 167
    :cond_53
    invoke-virtual {v11}, La5/c;->s()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, La5/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    .line 168
    invoke-virtual/range {p1 .. p1}, La5/a;->l()La5/h;

    move-result-object v2

    invoke-virtual {v2, v1}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    move-result-object v2

    move-object/from16 v32, v2

    move-object v2, v1

    move-object/from16 v1, v32

    goto :goto_24

    .line 169
    :cond_54
    :goto_23
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_55

    .line 170
    invoke-virtual {v11}, La5/c;->d0()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto/16 :goto_19

    :cond_55
    move-object/from16 v5, v27

    goto :goto_27

    :cond_56
    const/4 v2, 0x0

    .line 171
    :goto_24
    :try_start_1b
    invoke-interface {v1, v9, v2, v10}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    instance-of v3, v1, Lb5/o;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-eqz v3, :cond_57

    .line 173
    :try_start_1c
    check-cast v1, Lb5/o;

    if-eqz v14, :cond_57

    .line 174
    invoke-virtual {v1, v14}, Lb5/o;->j(Ljava/lang/String;)Lb5/l;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 175
    invoke-virtual {v1, v2, v0}, Lb5/l;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :cond_57
    if-eqz v4, :cond_58

    move-object/from16 v5, v27

    .line 176
    iput-object v5, v4, La5/g;->a:Ljava/lang/Object;

    .line 177
    :cond_58
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v2

    :catchall_4
    move-exception v0

    move-object/from16 v5, v27

    goto/16 :goto_6

    .line 178
    :goto_25
    :try_start_1d
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_59

    .line 179
    invoke-virtual {v11}, La5/c;->d0()V

    :goto_26
    move-object/from16 v12, p2

    move-object/from16 v29, v5

    move-object/from16 v0, v17

    move-object/from16 v13, v30

    const/16 p6, 0x0

    goto/16 :goto_36

    :catchall_5
    move-exception v0

    goto/16 :goto_6

    :cond_59
    :goto_27
    move-object/from16 v12, p2

    move v0, v1

    move-object/from16 v27, v5

    move-object/from16 v20, v17

    move/from16 v19, v21

    move-object/from16 v28, v29

    move-object/from16 v13, v30

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v18, 0x4

    move/from16 v30, p4

    move-object/from16 v17, p6

    move-object/from16 v21, v6

    goto/16 :goto_45

    :cond_5a
    move-object/from16 v5, v27

    .line 180
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :cond_5b
    move-object/from16 v5, v27

    move-object/from16 v6, v28

    const/16 v16, 0xd

    goto :goto_28

    :cond_5c
    move/from16 v21, v3

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    const/16 v16, 0xd

    const/4 v3, 0x0

    :goto_28
    if-nez v5, :cond_5f

    if-nez v17, :cond_5f

    .line 181
    :try_start_1e
    invoke-virtual/range {p0 .. p2}, Lb5/o;->e(La5/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    if-nez v5, :cond_5d

    move-object/from16 v27, v4

    .line 182
    :try_start_1f
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v28, v6

    iget-object v6, v8, Lb5/o;->a:[Lb5/l;

    array-length v6, v6

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v17, v4

    goto :goto_2a

    :catchall_6
    move-exception v0

    :goto_29
    move-object/from16 v14, v27

    goto/16 :goto_46

    :cond_5d
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    .line 183
    :goto_2a
    invoke-virtual {v9, v15, v5, v10}, La5/a;->x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-nez p6, :cond_5e

    .line 184
    :try_start_20
    iget-object v6, v8, Lb5/o;->a:[Lb5/l;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x20

    const/16 v20, 0x1

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    move-object/from16 v27, v4

    move-object/from16 v32, v6

    move-object v6, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v32

    goto :goto_2d

    :cond_5e
    move-object/from16 v27, v4

    :goto_2b
    move-object v6, v5

    move-object/from16 v5, v17

    move-object/from16 v17, p6

    goto :goto_2d

    :catchall_7
    move-exception v0

    :goto_2c
    move-object/from16 v27, v4

    goto :goto_29

    :cond_5f
    move-object/from16 v27, v4

    move-object/from16 v28, v6

    goto :goto_2b

    :goto_2d
    if-eqz v7, :cond_68

    if-nez v12, :cond_60

    move-object/from16 v12, p2

    .line 185
    :try_start_21
    invoke-virtual {v0, v9, v6, v12, v5}, Lb5/l;->d(La5/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move-object/from16 v20, v5

    move/from16 v0, v16

    move/from16 v19, v21

    move-object/from16 v21, v28

    move-object/from16 v28, v29

    move-object/from16 v13, v30

    const/16 p6, 0x0

    const/16 v18, 0x4

    move/from16 v30, p4

    move-object/from16 v29, v6

    goto/16 :goto_34

    :catchall_8
    move-exception v0

    move-object v5, v6

    goto :goto_29

    :cond_60
    move-object/from16 v12, p2

    if-nez v6, :cond_62

    .line 186
    iget-object v0, v13, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    :goto_2e
    move-object/from16 v7, v30

    goto :goto_2f

    :cond_62
    if-nez v1, :cond_63

    .line 187
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_61

    .line 188
    invoke-virtual {v0, v6, v1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_63
    move-object/from16 v7, v30

    if-ne v2, v7, :cond_65

    .line 189
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int v3, p5, v2

    if-nez v3, :cond_64

    iget-object v3, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget v3, v3, Lcom/alibaba/fastjson/util/h;->j:I

    and-int/2addr v3, v2

    if-nez v3, :cond_64

    iget v3, v13, Lcom/alibaba/fastjson/util/d;->j:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_65

    .line 190
    :cond_64
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_65
    invoke-virtual {v0, v6, v1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2f
    if-eqz v17, :cond_66

    .line 192
    div-int/lit8 v0, p4, 0x20

    .line 193
    rem-int/lit8 v1, p4, 0x20

    .line 194
    aget v2, v17, v0

    const/4 v4, 0x1

    shl-int v1, v4, v1

    or-int/2addr v1, v2

    aput v1, v17, v0

    goto :goto_30

    :cond_66
    const/4 v4, 0x1

    .line 195
    :goto_30
    iget v0, v11, La5/c;->n:I

    const/4 v13, 0x4

    if-ne v0, v13, :cond_67

    move-object/from16 v20, v5

    move-object/from16 v29, v6

    move-object v13, v7

    const/16 p6, 0x0

    goto/16 :goto_35

    :cond_67
    move/from16 v30, p4

    move-object/from16 v20, v5

    move/from16 v18, v13

    move/from16 v0, v16

    move/from16 v19, v21

    move-object/from16 v21, v28

    move-object/from16 v28, v29

    const/16 p6, 0x0

    move-object/from16 v29, v6

    move-object v13, v7

    goto :goto_34

    :cond_68
    move-object/from16 v12, p2

    move-object/from16 v7, v30

    const/4 v4, 0x1

    const/4 v13, 0x4

    if-nez v5, :cond_69

    .line 196
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, v8, Lb5/o;->a:[Lb5/l;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    goto :goto_31

    :cond_69
    move-object v0, v5

    :goto_31
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v19, v21

    move v13, v4

    const/16 p6, 0x0

    move-object v4, v6

    move-object/from16 v20, v5

    move-object/from16 v5, p2

    move-object/from16 v21, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v6

    move-object v6, v0

    move/from16 v30, p4

    move-object v13, v7

    move/from16 v0, v16

    const/16 v18, 0x4

    move-object/from16 v7, v17

    :try_start_22
    invoke-virtual/range {v1 .. v7}, Lb5/o;->n(La5/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 197
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v1

    if-ne v1, v0, :cond_6a

    .line 198
    invoke-virtual {v11}, La5/c;->d0()V

    goto :goto_35

    :catchall_9
    move-exception v0

    move-object/from16 v14, v27

    :goto_32
    move-object/from16 v5, v29

    goto/16 :goto_46

    :cond_6a
    move/from16 v1, p6

    const/16 v2, 0x10

    :goto_33
    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_44

    .line 199
    :cond_6b
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_94

    .line 200
    :goto_34
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6c

    move/from16 v1, p6

    goto :goto_33

    .line 201
    :cond_6c
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v1

    if-ne v1, v0, :cond_92

    .line 202
    invoke-virtual {v11, v2}, La5/c;->f0(I)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :goto_35
    move-object/from16 v0, v20

    move-object/from16 v4, v27

    :goto_36
    if-nez v29, :cond_8d

    if-nez v0, :cond_6f

    .line 203
    :try_start_23
    invoke-virtual/range {p0 .. p2}, Lb5/o;->e(La5/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    if-nez v4, :cond_6d

    .line 204
    :try_start_24
    invoke-virtual {v9, v15, v1, v10}, La5/a;->x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    move-result-object v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    :cond_6d
    if-eqz v4, :cond_6e

    .line 205
    iput-object v1, v4, La5/g;->a:Ljava/lang/Object;

    .line 206
    :cond_6e
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v1

    :catchall_a
    move-exception v0

    move-object v14, v4

    goto :goto_32

    .line 207
    :cond_6f
    :try_start_25
    iget-object v1, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v2, v1, Lcom/alibaba/fastjson/util/h;->p:[Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 208
    const-string v3, ""

    if-eqz v2, :cond_7a

    .line 209
    :try_start_26
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    move/from16 v5, p6

    .line 210
    :goto_37
    array-length v6, v2

    if-ge v5, v6, :cond_84

    .line 211
    aget-object v6, v2, v5

    .line 212
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_78

    .line 213
    iget-object v7, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v10, v7, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    aget-object v10, v10, v5

    .line 214
    iget-object v7, v7, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    aget-object v7, v7, v5

    .line 215
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_70

    .line 216
    invoke-static/range {p6 .. p6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    goto :goto_38

    .line 217
    :cond_70
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_71

    .line 218
    invoke-static/range {p6 .. p6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto :goto_38

    .line 219
    :cond_71
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_72

    .line 220
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_38

    .line 221
    :cond_72
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_73

    .line 222
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_38

    .line 223
    :cond_73
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_74

    .line 224
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_38

    .line 225
    :cond_74
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_75

    .line 226
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_38

    .line 227
    :cond_75
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_76

    .line 228
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_38

    :cond_76
    if-ne v10, v13, :cond_77

    .line 229
    iget v7, v7, Lcom/alibaba/fastjson/util/d;->j:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_77

    move-object v6, v3

    :cond_77
    :goto_38
    move/from16 v11, p6

    goto :goto_39

    .line 230
    :cond_78
    iget-object v7, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/h;->o:[Ljava/lang/reflect/Type;

    if-eqz v7, :cond_77

    array-length v10, v7

    if-ge v5, v10, :cond_77

    .line 231
    aget-object v7, v7, v5

    .line 232
    instance-of v10, v7, Ljava/lang/Class;

    if-eqz v10, :cond_77

    .line 233
    check-cast v7, Ljava/lang/Class;

    .line 234
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_77

    .line 235
    instance-of v10, v6, Ljava/util/List;

    if-eqz v10, :cond_77

    .line 236
    move-object v10, v6

    check-cast v10, Ljava/util/List;

    .line 237
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_77

    move/from16 v11, p6

    .line 238
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 239
    invoke-virtual {v7, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 240
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 241
    :cond_79
    :goto_39
    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 p6, v11

    goto/16 :goto_37

    :cond_7a
    move/from16 v11, p6

    .line 242
    iget-object v1, v1, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    .line 243
    array-length v5, v1

    .line 244
    new-array v6, v5, [Ljava/lang/Object;

    move v7, v11

    :goto_3a
    if-ge v7, v5, :cond_83

    .line 245
    aget-object v10, v1, v7

    .line 246
    iget-object v12, v10, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_82

    .line 247
    iget-object v14, v10, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 248
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7b

    const/4 v11, 0x0

    .line 249
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    goto :goto_3b

    .line 250
    :cond_7b
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7c

    const/4 v11, 0x0

    .line 251
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    goto :goto_3b

    .line 252
    :cond_7c
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7d

    const/4 v11, 0x0

    .line 253
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_3b

    .line 254
    :cond_7d
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7e

    .line 255
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_3b

    .line 256
    :cond_7e
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_7f

    .line 257
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    goto :goto_3b

    .line 258
    :cond_7f
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_80

    .line 259
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_3b

    .line 260
    :cond_80
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v11, :cond_81

    .line 261
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3b

    :cond_81
    if-ne v14, v13, :cond_82

    .line 262
    iget v10, v10, Lcom/alibaba/fastjson/util/d;->j:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_82

    move-object v12, v3

    .line 263
    :cond_82
    :goto_3b
    aput-object v12, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x0

    goto :goto_3a

    :cond_83
    move-object v1, v6

    .line 264
    :cond_84
    iget-object v3, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v5, v3, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_8a

    .line 265
    iget-boolean v3, v3, Lcom/alibaba/fastjson/util/h;->q:Z

    if-eqz v3, :cond_88

    const/4 v3, 0x0

    .line 266
    :goto_3c
    array-length v5, v1

    if-ge v3, v5, :cond_88

    .line 267
    aget-object v5, v1, v3

    if-nez v5, :cond_87

    iget-object v5, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v6, v5, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    if-eqz v6, :cond_87

    array-length v7, v6

    if-ge v3, v7, :cond_87

    .line 268
    aget-object v3, v6, v3

    .line 269
    iget-object v3, v3, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    if-ne v3, v13, :cond_88

    .line 270
    :try_start_27
    iget-object v3, v5, Lcom/alibaba/fastjson/util/h;->r:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_88

    const/4 v5, 0x0

    .line 271
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    const/4 v5, 0x0

    .line 272
    :goto_3d
    :try_start_28
    array-length v6, v1

    if-ge v5, v6, :cond_86

    .line 273
    aget-object v6, v1, v5

    if-eqz v6, :cond_85

    .line 274
    iget-object v7, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/h;->h:[Lcom/alibaba/fastjson/util/d;

    if-eqz v7, :cond_85

    array-length v10, v7

    if-ge v5, v10, :cond_85

    .line 275
    aget-object v7, v7, v5

    .line 276
    invoke-virtual {v7, v3, v6}, Lcom/alibaba/fastjson/util/d;->o(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    goto :goto_3e

    :catchall_b
    move-exception v0

    move-object v5, v3

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto :goto_41

    :cond_85
    :goto_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_86
    move-object v1, v3

    goto :goto_3f

    :catch_3
    move-exception v0

    move-object/from16 v3, v29

    goto :goto_41

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 277
    :cond_88
    :try_start_29
    iget-object v3, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    :goto_3f
    if-eqz v2, :cond_8c

    .line 278
    :try_start_2a
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_89
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Lb5/o;->j(Ljava/lang/String;)Lb5/l;

    move-result-object v3

    if-eqz v3, :cond_89

    .line 280
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    goto :goto_40

    .line 281
    :goto_41
    :try_start_2b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instance error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/h;->d:Ljava/lang/reflect/Constructor;

    .line 282
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    .line 283
    :cond_8a
    :try_start_2c
    iget-object v0, v3, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    if-eqz v0, :cond_8b

    const/4 v2, 0x0

    .line 284
    :try_start_2d
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_4
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    move-object v1, v0

    goto :goto_42

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 285
    :try_start_2e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create factory method error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/h;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    :cond_8b
    move-object/from16 v1, v29

    :cond_8c
    :goto_42
    if-eqz v4, :cond_8e

    .line 286
    :try_start_2f
    iput-object v1, v4, La5/g;->a:Ljava/lang/Object;

    goto :goto_43

    :cond_8d
    move-object/from16 v1, v29

    .line 287
    :cond_8e
    :goto_43
    iget-object v0, v8, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/h;->f:Ljava/lang/reflect/Method;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    if-nez v0, :cond_90

    if-eqz v4, :cond_8f

    .line 288
    iput-object v1, v4, La5/g;->a:Ljava/lang/Object;

    .line 289
    :cond_8f
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v1

    :cond_90
    const/4 v3, 0x0

    .line 290
    :try_start_30
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_5
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    if-eqz v4, :cond_91

    .line 291
    iput-object v1, v4, La5/g;->a:Ljava/lang/Object;

    .line 292
    :cond_91
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    return-object v0

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 293
    :try_start_31
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "build object error"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2

    :cond_92
    move/from16 v1, p6

    const/4 v3, 0x0

    .line 294
    :try_start_32
    invoke-virtual {v11}, La5/c;->t0()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_93

    invoke-virtual {v11}, La5/c;->t0()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_93

    :goto_44
    move-object/from16 v4, v27

    move-object/from16 v27, v29

    :goto_45
    add-int/lit8 v7, v30, 0x1

    move-object v0, v12

    move-object v5, v13

    move-object/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v17, v20

    move-object/from16 v12, v21

    move-object/from16 v1, v27

    move-object/from16 v6, v28

    goto/16 :goto_4

    .line 295
    :cond_93
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, unexpect token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, La5/c;->t0()I

    move-result v2

    invoke-static {v2}, La5/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_94
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_9

    :catchall_c
    move-exception v0

    move-object v5, v1

    goto/16 :goto_2c

    :catchall_d
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v5, p4

    move-object v14, v3

    :goto_46
    if-eqz v14, :cond_95

    .line 297
    iput-object v5, v14, La5/g;->a:Ljava/lang/Object;

    .line 298
    :cond_95
    invoke-virtual {v9, v15}, La5/a;->A0(La5/g;)V

    .line 299
    throw v0

    .line 300
    :cond_96
    :goto_47
    invoke-virtual/range {p1 .. p1}, La5/a;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p1, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0xe

    .line 8
    .line 9
    if-ne v1, v2, :cond_12

    .line 10
    .line 11
    iget-object v1, p1, La5/a;->b:La5/i;

    .line 12
    .line 13
    invoke-interface {v0, v1}, La5/b;->n(La5/i;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, La5/a;->l()La5/h;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 24
    .line 25
    invoke-static {v3, v4, v1}, Lb5/o;->l(La5/h;Lcom/alibaba/fastjson/util/h;Ljava/lang/String;)Lb5/o;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->Q(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1}, La5/a;->l()La5/h;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v0}, La5/b;->s()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v4, v1, v3, v5}, La5/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, La5/a;->l()La5/h;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, v1}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :cond_0
    instance-of v1, v3, Lb5/o;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    check-cast v3, Lb5/o;

    .line 60
    .line 61
    invoke-virtual {v3, p1, p2, p3, p4}, Lb5/o;->i(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_1
    invoke-virtual {p0, p1, p2}, Lb5/o;->e(La5/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-object p3, p0, Lb5/o;->b:[Lb5/l;

    .line 71
    .line 72
    array-length p3, p3

    .line 73
    const/4 p4, 0x0

    .line 74
    :goto_0
    const/16 v1, 0x10

    .line 75
    .line 76
    if-ge p4, p3, :cond_11

    .line 77
    .line 78
    add-int/lit8 v3, p3, -0x1

    .line 79
    .line 80
    const/16 v4, 0x5d

    .line 81
    .line 82
    if-ne p4, v3, :cond_2

    .line 83
    .line 84
    move v3, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/16 v3, 0x2c

    .line 87
    .line 88
    :goto_1
    iget-object v5, p0, Lb5/o;->b:[Lb5/l;

    .line 89
    .line 90
    aget-object v5, v5, p4

    .line 91
    .line 92
    iget-object v6, v5, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 93
    .line 94
    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 95
    .line 96
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    if-ne v6, v7, :cond_3

    .line 99
    .line 100
    invoke-interface {v0, v3}, La5/b;->j0(C)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v5, p2, v1}, Lb5/l;->f(Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_3
    const-class v7, Ljava/lang/String;

    .line 110
    .line 111
    if-ne v6, v7, :cond_4

    .line 112
    .line 113
    invoke-interface {v0, v3}, La5/b;->u0(C)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v5, p2, v1}, Lb5/l;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 123
    .line 124
    if-ne v6, v7, :cond_5

    .line 125
    .line 126
    invoke-interface {v0, v3}, La5/b;->A0(C)J

    .line 127
    .line 128
    .line 129
    move-result-wide v3

    .line 130
    invoke-virtual {v5, p2, v3, v4}, Lb5/l;->g(Ljava/lang/Object;J)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_9

    .line 140
    .line 141
    invoke-interface {v0}, La5/b;->d()C

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    const/16 v4, 0x22

    .line 146
    .line 147
    if-eq v1, v4, :cond_8

    .line 148
    .line 149
    const/16 v4, 0x6e

    .line 150
    .line 151
    if-ne v1, v4, :cond_6

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    const/16 v4, 0x30

    .line 155
    .line 156
    if-lt v1, v4, :cond_7

    .line 157
    .line 158
    const/16 v4, 0x39

    .line 159
    .line 160
    if-gt v1, v4, :cond_7

    .line 161
    .line 162
    invoke-interface {v0, v3}, La5/b;->j0(C)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    move-object v3, v5

    .line 167
    check-cast v3, Lb5/f;

    .line 168
    .line 169
    invoke-virtual {p1}, La5/a;->l()La5/h;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v3, v4}, Lb5/f;->k(La5/h;)Lb5/b2;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Lb5/h;

    .line 178
    .line 179
    invoke-virtual {v3, v1}, Lb5/h;->c(I)Ljava/lang/Enum;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {p0, v0, v3}, Lb5/o;->o(La5/b;C)Ljava/lang/Enum;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    goto :goto_3

    .line 189
    :cond_8
    :goto_2
    invoke-virtual {p1}, La5/a;->u()La5/i;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-interface {v0, v6, v1, v3}, La5/b;->S(Ljava/lang/Class;La5/i;C)Ljava/lang/Enum;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :goto_3
    invoke-virtual {v5, p2, v1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_4

    .line 201
    .line 202
    :cond_9
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 203
    .line 204
    if-ne v6, v7, :cond_a

    .line 205
    .line 206
    invoke-interface {v0, v3}, La5/b;->X(C)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-virtual {v5, p2, v1}, Lb5/l;->j(Ljava/lang/Object;Z)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 215
    .line 216
    if-ne v6, v7, :cond_b

    .line 217
    .line 218
    invoke-interface {v0, v3}, La5/b;->m(C)F

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v5, p2, v1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_b
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 231
    .line 232
    if-ne v6, v7, :cond_c

    .line 233
    .line 234
    invoke-interface {v0, v3}, La5/b;->t(C)D

    .line 235
    .line 236
    .line 237
    move-result-wide v3

    .line 238
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v5, p2, v1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_c
    const-class v7, Ljava/util/Date;

    .line 247
    .line 248
    if-ne v6, v7, :cond_d

    .line 249
    .line 250
    invoke-interface {v0}, La5/b;->d()C

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    const/16 v8, 0x31

    .line 255
    .line 256
    if-ne v7, v8, :cond_d

    .line 257
    .line 258
    invoke-interface {v0, v3}, La5/b;->A0(C)J

    .line 259
    .line 260
    .line 261
    move-result-wide v3

    .line 262
    new-instance v1, Ljava/util/Date;

    .line 263
    .line 264
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, p2, v1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_d
    const-class v7, Ljava/math/BigDecimal;

    .line 272
    .line 273
    if-ne v6, v7, :cond_e

    .line 274
    .line 275
    invoke-interface {v0, v3}, La5/b;->u(C)Ljava/math/BigDecimal;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v5, p2, v1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_e
    invoke-interface {v0, v2}, La5/b;->f0(I)V

    .line 284
    .line 285
    .line 286
    iget-object v6, v5, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 287
    .line 288
    iget-object v7, v6, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 289
    .line 290
    iget-object v6, v6, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {p1, v7, v6}, La5/a;->o0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v5, p2, v6}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-interface {v0}, La5/b;->t0()I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    const/16 v6, 0xf

    .line 304
    .line 305
    if-ne v5, v6, :cond_f

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_f
    if-ne v3, v4, :cond_10

    .line 309
    .line 310
    move v1, v6

    .line 311
    :cond_10
    invoke-virtual {p0, v0, v1}, Lb5/o;->a(La5/b;I)V

    .line 312
    .line 313
    .line 314
    :goto_4
    add-int/lit8 p4, p4, 0x1

    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_11
    :goto_5
    invoke-interface {v0, v1}, La5/b;->f0(I)V

    .line 319
    .line 320
    .line 321
    return-object p2

    .line 322
    :cond_12
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 323
    .line 324
    const-string p2, "error"

    .line 325
    .line 326
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw p1
.end method

.method public j(Ljava/lang/String;)Lb5/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lb5/o;->k(Ljava/lang/String;[I)Lb5/l;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public k(Ljava/lang/String;[I)Lb5/l;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lb5/o;->g:Ljava/util/Map;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lb5/l;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    iget-object v1, p0, Lb5/o;->b:[Lb5/l;

    .line 19
    .line 20
    array-length v1, v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-gt v2, v1, :cond_5

    .line 25
    .line 26
    add-int v3, v2, v1

    .line 27
    .line 28
    ushr-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    iget-object v4, p0, Lb5/o;->b:[Lb5/l;

    .line 31
    .line 32
    aget-object v4, v4, v3

    .line 33
    .line 34
    iget-object v4, v4, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 35
    .line 36
    iget-object v4, v4, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-gez v4, :cond_2

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    move v2, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-lez v4, :cond_3

    .line 49
    .line 50
    add-int/lit8 v3, v3, -0x1

    .line 51
    .line 52
    move v1, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-static {v3, p2}, Lb5/o;->m(I[I)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_4
    iget-object p1, p0, Lb5/o;->b:[Lb5/l;

    .line 62
    .line 63
    aget-object p1, p1, v3

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_5
    iget-object p2, p0, Lb5/o;->f:Ljava/util/Map;

    .line 67
    .line 68
    if-eqz p2, :cond_6

    .line 69
    .line 70
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lb5/l;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_6
    return-object v0
.end method

.method public n(La5/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v12, p3

    .line 8
    .line 9
    move-object/from16 v13, p4

    .line 10
    .line 11
    move-object/from16 v14, p5

    .line 12
    .line 13
    move-object/from16 v15, p6

    .line 14
    .line 15
    const/16 v16, 0x0

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    iget-object v8, v0, La5/a;->f:La5/b;

    .line 19
    .line 20
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 21
    .line 22
    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 23
    .line 24
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 25
    .line 26
    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 27
    .line 28
    invoke-interface {v8, v2}, La5/b;->isEnabled(I)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_3

    .line 33
    .line 34
    iget-object v4, v1, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 35
    .line 36
    iget v4, v4, Lcom/alibaba/fastjson/util/h;->j:I

    .line 37
    .line 38
    and-int/2addr v2, v4

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {v8, v3}, La5/b;->isEnabled(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    iget-object v2, v1, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 49
    .line 50
    iget v2, v2, Lcom/alibaba/fastjson/util/h;->j:I

    .line 51
    .line 52
    and-int/2addr v2, v3

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1, v11, v15}, Lb5/o;->r(Ljava/lang/String;[I)Lb5/l;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_0
    invoke-virtual {v1, v11}, Lb5/o;->q(Ljava/lang/String;)Lb5/l;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    invoke-virtual {v1, v11}, Lb5/o;->j(Ljava/lang/String;)Lb5/l;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_2
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    .line 71
    .line 72
    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 73
    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    invoke-interface {v8, v3}, La5/b;->isEnabled(I)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_5

    .line 81
    .line 82
    iget-object v4, v1, Lb5/o;->d:Lcom/alibaba/fastjson/util/h;

    .line 83
    .line 84
    iget v4, v4, Lcom/alibaba/fastjson/util/h;->j:I

    .line 85
    .line 86
    and-int/2addr v3, v4

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move-object/from16 v18, v2

    .line 91
    .line 92
    move-object/from16 v20, v8

    .line 93
    .line 94
    move/from16 v19, v9

    .line 95
    .line 96
    goto/16 :goto_b

    .line 97
    .line 98
    :cond_5
    :goto_3
    iget-object v3, v1, Lb5/o;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 99
    .line 100
    if-nez v3, :cond_d

    .line 101
    .line 102
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    .line 104
    const/high16 v4, 0x3f400000    # 0.75f

    .line 105
    .line 106
    invoke-direct {v3, v9, v4, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 107
    .line 108
    .line 109
    iget-object v4, v1, Lb5/o;->c:Ljava/lang/Class;

    .line 110
    .line 111
    :goto_4
    if-eqz v4, :cond_c

    .line 112
    .line 113
    const-class v5, Ljava/lang/Object;

    .line 114
    .line 115
    if-eq v4, v5, :cond_c

    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    array-length v6, v5

    .line 122
    move/from16 v7, v16

    .line 123
    .line 124
    :goto_5
    if-ge v7, v6, :cond_b

    .line 125
    .line 126
    aget-object v10, v5, v7

    .line 127
    .line 128
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v1, v9}, Lb5/o;->j(Ljava/lang/String;)Lb5/l;

    .line 133
    .line 134
    .line 135
    move-result-object v18

    .line 136
    if-eqz v18, :cond_7

    .line 137
    .line 138
    :cond_6
    :goto_6
    move-object/from16 v18, v2

    .line 139
    .line 140
    move-object/from16 v19, v5

    .line 141
    .line 142
    :goto_7
    const/4 v2, 0x1

    .line 143
    goto :goto_9

    .line 144
    :cond_7
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 145
    .line 146
    .line 147
    move-result v18

    .line 148
    and-int/lit8 v19, v18, 0x10

    .line 149
    .line 150
    if-nez v19, :cond_6

    .line 151
    .line 152
    and-int/lit8 v18, v18, 0x8

    .line 153
    .line 154
    if-eqz v18, :cond_8

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    move-object/from16 v18, v2

    .line 158
    .line 159
    const-class v2, Lz4/b;

    .line 160
    .line 161
    invoke-static {v10, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->O(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Lz4/b;

    .line 166
    .line 167
    if-eqz v2, :cond_9

    .line 168
    .line 169
    invoke-interface {v2}, Lz4/b;->name()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    move-object/from16 v19, v5

    .line 174
    .line 175
    const-string v5, ""

    .line 176
    .line 177
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v5, :cond_a

    .line 182
    .line 183
    move-object v9, v2

    .line 184
    goto :goto_8

    .line 185
    :cond_9
    move-object/from16 v19, v5

    .line 186
    .line 187
    :cond_a
    :goto_8
    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    goto :goto_7

    .line 191
    :goto_9
    add-int/2addr v7, v2

    .line 192
    move v9, v2

    .line 193
    move-object/from16 v2, v18

    .line 194
    .line 195
    move-object/from16 v5, v19

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_b
    move-object/from16 v18, v2

    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    const/4 v9, 0x1

    .line 205
    goto :goto_4

    .line 206
    :cond_c
    move-object/from16 v18, v2

    .line 207
    .line 208
    iput-object v3, v1, Lb5/o;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_d
    move-object/from16 v18, v2

    .line 212
    .line 213
    :goto_a
    iget-object v2, v1, Lb5/o;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 214
    .line 215
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    if-eqz v2, :cond_f

    .line 220
    .line 221
    instance-of v3, v2, Lb5/l;

    .line 222
    .line 223
    if-eqz v3, :cond_e

    .line 224
    .line 225
    check-cast v2, Lb5/l;

    .line 226
    .line 227
    move-object/from16 v20, v8

    .line 228
    .line 229
    const/16 v19, 0x1

    .line 230
    .line 231
    goto :goto_c

    .line 232
    :cond_e
    move-object v7, v2

    .line 233
    check-cast v7, Ljava/lang/reflect/Field;

    .line 234
    .line 235
    const/4 v9, 0x1

    .line 236
    invoke-virtual {v7, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 237
    .line 238
    .line 239
    new-instance v10, Lcom/alibaba/fastjson/util/d;

    .line 240
    .line 241
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    const/16 v17, 0x0

    .line 254
    .line 255
    const/16 v18, 0x0

    .line 256
    .line 257
    const/16 v19, 0x0

    .line 258
    .line 259
    move-object v2, v10

    .line 260
    move-object/from16 v3, p2

    .line 261
    .line 262
    move-object/from16 v20, v8

    .line 263
    .line 264
    move/from16 v8, v19

    .line 265
    .line 266
    move/from16 v19, v9

    .line 267
    .line 268
    move/from16 v9, v17

    .line 269
    .line 270
    move-object v15, v10

    .line 271
    move/from16 v10, v18

    .line 272
    .line 273
    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson/util/d;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 274
    .line 275
    .line 276
    new-instance v2, Lb5/f;

    .line 277
    .line 278
    invoke-virtual/range {p1 .. p1}, La5/a;->l()La5/h;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    iget-object v4, v1, Lb5/o;->c:Ljava/lang/Class;

    .line 283
    .line 284
    invoke-direct {v2, v3, v4, v15}, Lb5/f;-><init>(La5/h;Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    .line 285
    .line 286
    .line 287
    iget-object v3, v1, Lb5/o;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 288
    .line 289
    invoke-interface {v3, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto :goto_c

    .line 293
    :cond_f
    move-object/from16 v20, v8

    .line 294
    .line 295
    const/16 v19, 0x1

    .line 296
    .line 297
    :goto_b
    move-object/from16 v2, v18

    .line 298
    .line 299
    :goto_c
    const/4 v3, -0x1

    .line 300
    if-nez v2, :cond_1a

    .line 301
    .line 302
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 303
    .line 304
    move-object/from16 v4, v20

    .line 305
    .line 306
    invoke-interface {v4, v2}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_19

    .line 311
    .line 312
    move v5, v3

    .line 313
    move/from16 v2, v16

    .line 314
    .line 315
    :goto_d
    iget-object v6, v1, Lb5/o;->b:[Lb5/l;

    .line 316
    .line 317
    array-length v7, v6

    .line 318
    if-ge v2, v7, :cond_16

    .line 319
    .line 320
    aget-object v6, v6, v2

    .line 321
    .line 322
    iget-object v7, v6, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 323
    .line 324
    iget-boolean v8, v7, Lcom/alibaba/fastjson/util/d;->s:Z

    .line 325
    .line 326
    if-eqz v8, :cond_13

    .line 327
    .line 328
    instance-of v8, v6, Lb5/f;

    .line 329
    .line 330
    if-eqz v8, :cond_13

    .line 331
    .line 332
    iget-object v8, v7, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 333
    .line 334
    const-string v9, "parse unwrapped field error."

    .line 335
    .line 336
    if-eqz v8, :cond_14

    .line 337
    .line 338
    move-object v8, v6

    .line 339
    check-cast v8, Lb5/f;

    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, La5/a;->l()La5/h;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    invoke-virtual {v8, v10}, Lb5/f;->k(La5/h;)Lb5/b2;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    instance-of v15, v10, Lb5/o;

    .line 350
    .line 351
    if-eqz v15, :cond_11

    .line 352
    .line 353
    move-object v15, v10

    .line 354
    check-cast v15, Lb5/o;

    .line 355
    .line 356
    invoke-virtual {v15, v11}, Lb5/o;->j(Ljava/lang/String;)Lb5/l;

    .line 357
    .line 358
    .line 359
    move-result-object v15

    .line 360
    if-eqz v15, :cond_13

    .line 361
    .line 362
    :try_start_0
    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 363
    .line 364
    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    if-nez v5, :cond_10

    .line 369
    .line 370
    check-cast v10, Lb5/o;

    .line 371
    .line 372
    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 373
    .line 374
    invoke-virtual {v10, v0, v5}, Lb5/o;->e(La5/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {v6, v12, v5}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    goto :goto_e

    .line 382
    :catch_0
    move-exception v0

    .line 383
    goto :goto_f

    .line 384
    :cond_10
    :goto_e
    invoke-virtual {v8}, Lb5/f;->b()I

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    invoke-interface {v4, v6}, La5/b;->r(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v15, v0, v5, v13, v14}, Lb5/l;->d(La5/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .line 393
    .line 394
    goto :goto_11

    .line 395
    :goto_f
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    .line 396
    .line 397
    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    .line 399
    .line 400
    throw v2

    .line 401
    :cond_11
    instance-of v8, v10, Lb5/z1;

    .line 402
    .line 403
    if-eqz v8, :cond_13

    .line 404
    .line 405
    check-cast v10, Lb5/z1;

    .line 406
    .line 407
    :try_start_1
    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 408
    .line 409
    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Ljava/util/Map;

    .line 414
    .line 415
    if-nez v5, :cond_12

    .line 416
    .line 417
    iget-object v5, v7, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    .line 418
    .line 419
    invoke-virtual {v10, v5}, Lb5/z1;->f(Ljava/lang/reflect/Type;)Ljava/util/Map;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    invoke-virtual {v6, v12, v5}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    goto :goto_10

    .line 427
    :catch_1
    move-exception v0

    .line 428
    goto :goto_12

    .line 429
    :cond_12
    :goto_10
    invoke-interface {v4}, La5/b;->v()V

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {p1 .. p2}, La5/a;->S(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    invoke-interface {v5, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    .line 438
    .line 439
    :goto_11
    move v5, v2

    .line 440
    goto :goto_13

    .line 441
    :goto_12
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    .line 442
    .line 443
    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    .line 445
    .line 446
    throw v2

    .line 447
    :cond_13
    :goto_13
    const/4 v8, 0x2

    .line 448
    goto :goto_14

    .line 449
    :cond_14
    iget-object v6, v7, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 450
    .line 451
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    array-length v6, v6

    .line 456
    const/4 v8, 0x2

    .line 457
    if-ne v6, v8, :cond_15

    .line 458
    .line 459
    invoke-interface {v4}, La5/b;->v()V

    .line 460
    .line 461
    .line 462
    invoke-virtual/range {p1 .. p2}, La5/a;->S(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    :try_start_2
    iget-object v6, v7, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    .line 467
    .line 468
    new-array v7, v8, [Ljava/lang/Object;

    .line 469
    .line 470
    aput-object v11, v7, v16

    .line 471
    .line 472
    aput-object v5, v7, v19

    .line 473
    .line 474
    invoke-virtual {v6, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 475
    .line 476
    .line 477
    move v5, v2

    .line 478
    goto :goto_14

    .line 479
    :catch_2
    move-exception v0

    .line 480
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    .line 481
    .line 482
    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    .line 484
    .line 485
    throw v2

    .line 486
    :cond_15
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 487
    .line 488
    goto/16 :goto_d

    .line 489
    .line 490
    :cond_16
    if-eq v5, v3, :cond_18

    .line 491
    .line 492
    move-object/from16 v6, p6

    .line 493
    .line 494
    if-eqz v6, :cond_17

    .line 495
    .line 496
    div-int/lit8 v0, v5, 0x20

    .line 497
    .line 498
    rem-int/lit8 v5, v5, 0x20

    .line 499
    .line 500
    aget v2, v6, v0

    .line 501
    .line 502
    shl-int v3, v19, v5

    .line 503
    .line 504
    or-int/2addr v2, v3

    .line 505
    aput v2, v6, v0

    .line 506
    .line 507
    :cond_17
    return v19

    .line 508
    :cond_18
    invoke-virtual {v0, v12, v11}, La5/a;->g0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    return v16

    .line 512
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 513
    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    const-string v3, "setter not found, class "

    .line 520
    .line 521
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    iget-object v3, v1, Lb5/o;->c:Ljava/lang/Class;

    .line 525
    .line 526
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v3, ", property "

    .line 534
    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    throw v0

    .line 549
    :cond_1a
    move-object/from16 v6, p6

    .line 550
    .line 551
    move-object/from16 v4, v20

    .line 552
    .line 553
    move/from16 v5, v16

    .line 554
    .line 555
    :goto_15
    iget-object v7, v1, Lb5/o;->b:[Lb5/l;

    .line 556
    .line 557
    array-length v8, v7

    .line 558
    if-ge v5, v8, :cond_1c

    .line 559
    .line 560
    aget-object v7, v7, v5

    .line 561
    .line 562
    if-ne v7, v2, :cond_1b

    .line 563
    .line 564
    goto :goto_16

    .line 565
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    .line 566
    .line 567
    goto :goto_15

    .line 568
    :cond_1c
    move v5, v3

    .line 569
    :goto_16
    if-eq v5, v3, :cond_1d

    .line 570
    .line 571
    if-eqz v6, :cond_1d

    .line 572
    .line 573
    const-string v3, "_"

    .line 574
    .line 575
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-eqz v3, :cond_1d

    .line 580
    .line 581
    invoke-static {v5, v6}, Lb5/o;->m(I[I)Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-eqz v3, :cond_1d

    .line 586
    .line 587
    invoke-virtual {v0, v12, v11}, La5/a;->g0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    return v16

    .line 591
    :cond_1d
    invoke-virtual {v2}, Lb5/l;->b()I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    invoke-interface {v4, v3}, La5/b;->r(I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v2, v0, v12, v13, v14}, Lb5/l;->d(La5/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 599
    .line 600
    .line 601
    if-eqz v6, :cond_1e

    .line 602
    .line 603
    div-int/lit8 v0, v5, 0x20

    .line 604
    .line 605
    rem-int/lit8 v5, v5, 0x20

    .line 606
    .line 607
    aget v2, v6, v0

    .line 608
    .line 609
    shl-int v3, v19, v5

    .line 610
    .line 611
    or-int/2addr v2, v3

    .line 612
    aput v2, v6, v0

    .line 613
    .line 614
    :cond_1e
    return v19
.end method

.method protected o(La5/b;C)Ljava/lang/Enum;
    .locals 2

    .line 1
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "illegal enum. "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, La5/b;->k()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method

.method protected p(La5/c;[CLb5/b2;)Ljava/lang/Enum;
    .locals 6

    .line 1
    instance-of v0, p3, Lb5/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p3, Lb5/h;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p3, v1

    .line 10
    :goto_0
    if-nez p3, :cond_1

    .line 11
    .line 12
    const/4 p2, -0x1

    .line 13
    iput p2, p1, La5/c;->n:I

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p1, p2}, La5/c;->T0([C)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget p2, p1, La5/c;->n:I

    .line 21
    .line 22
    if-lez p2, :cond_5

    .line 23
    .line 24
    invoke-virtual {p3, v2, v3}, Lb5/h;->a(J)Ljava/lang/Enum;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-nez p2, :cond_4

    .line 29
    .line 30
    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmp-long v0, v2, v4

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, La5/c;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v0, "not match enum value, "

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object p3, p3, Lb5/h;->a:Ljava/lang/Class;

    .line 62
    .line 63
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_4
    :goto_1
    return-object p2

    .line 75
    :cond_5
    return-object v1
.end method

.method public q(Ljava/lang/String;)Lb5/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lb5/o;->r(Ljava/lang/String;[I)Lb5/l;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public r(Ljava/lang/String;[I)Lb5/l;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lb5/o;->k(Ljava/lang/String;[I)Lb5/l;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    iget-object v2, p0, Lb5/o;->h:[J

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lb5/o;->b:[Lb5/l;

    .line 17
    .line 18
    array-length v2, v2

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    move v4, v3

    .line 22
    :goto_0
    iget-object v5, p0, Lb5/o;->b:[Lb5/l;

    .line 23
    .line 24
    array-length v6, v5

    .line 25
    if-ge v4, v6, :cond_1

    .line 26
    .line 27
    aget-object v5, v5, v4

    .line 28
    .line 29
    iget-object v5, v5, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 30
    .line 31
    iget-wide v5, v5, Lcom/alibaba/fastjson/util/d;->v:J

    .line 32
    .line 33
    aput-wide v5, v2, v4

    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lb5/o;->h:[J

    .line 42
    .line 43
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->L(Ljava/lang/String;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    iget-object v2, p0, Lb5/o;->h:[J

    .line 48
    .line 49
    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-gez v2, :cond_3

    .line 54
    .line 55
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->K(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    iget-object v2, p0, Lb5/o;->h:[J

    .line 60
    .line 61
    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    :cond_3
    if-gez v2, :cond_4

    .line 66
    .line 67
    const-string v4, "is"

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->K(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    iget-object p1, p0, Lb5/o;->h:[J

    .line 85
    .line 86
    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v4, v3

    .line 92
    :cond_5
    :goto_1
    if-ltz v2, :cond_9

    .line 93
    .line 94
    iget-object p1, p0, Lb5/o;->i:[S

    .line 95
    .line 96
    const/4 v5, -0x1

    .line 97
    if-nez p1, :cond_8

    .line 98
    .line 99
    iget-object p1, p0, Lb5/o;->h:[J

    .line 100
    .line 101
    array-length p1, p1

    .line 102
    new-array p1, p1, [S

    .line 103
    .line 104
    invoke-static {p1, v5}, Ljava/util/Arrays;->fill([SS)V

    .line 105
    .line 106
    .line 107
    :goto_2
    iget-object v6, p0, Lb5/o;->b:[Lb5/l;

    .line 108
    .line 109
    array-length v7, v6

    .line 110
    if-ge v3, v7, :cond_7

    .line 111
    .line 112
    iget-object v7, p0, Lb5/o;->h:[J

    .line 113
    .line 114
    aget-object v6, v6, v3

    .line 115
    .line 116
    iget-object v6, v6, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 117
    .line 118
    iget-wide v8, v6, Lcom/alibaba/fastjson/util/d;->v:J

    .line 119
    .line 120
    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-ltz v6, :cond_6

    .line 125
    .line 126
    int-to-short v7, v3

    .line 127
    aput-short v7, p1, v6

    .line 128
    .line 129
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    iput-object p1, p0, Lb5/o;->i:[S

    .line 133
    .line 134
    :cond_8
    iget-object p1, p0, Lb5/o;->i:[S

    .line 135
    .line 136
    aget-short p1, p1, v2

    .line 137
    .line 138
    if-eq p1, v5, :cond_9

    .line 139
    .line 140
    invoke-static {p1, p2}, Lb5/o;->m(I[I)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-nez p2, :cond_9

    .line 145
    .line 146
    iget-object p2, p0, Lb5/o;->b:[Lb5/l;

    .line 147
    .line 148
    aget-object v1, p2, p1

    .line 149
    .line 150
    :cond_9
    if-eqz v1, :cond_b

    .line 151
    .line 152
    iget-object p1, v1, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 153
    .line 154
    iget p2, p1, Lcom/alibaba/fastjson/util/d;->j:I

    .line 155
    .line 156
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    .line 157
    .line 158
    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 159
    .line 160
    and-int/2addr p2, v2

    .line 161
    if-eqz p2, :cond_a

    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_a
    iget-object p1, p1, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 165
    .line 166
    if-eqz v4, :cond_b

    .line 167
    .line 168
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 169
    .line 170
    if-eq p1, p2, :cond_b

    .line 171
    .line 172
    const-class p2, Ljava/lang/Boolean;

    .line 173
    .line 174
    if-eq p1, p2, :cond_b

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_b
    move-object v0, v1

    .line 178
    :goto_3
    return-object v0
.end method
