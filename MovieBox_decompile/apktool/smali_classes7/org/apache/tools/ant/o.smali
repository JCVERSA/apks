.class public final Lorg/apache/tools/ant/o;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/o$b;,
        Lorg/apache/tools/ant/o$a;,
        Lorg/apache/tools/ant/o$c;,
        Lorg/apache/tools/ant/o$e;,
        Lorg/apache/tools/ant/o$d;
    }
.end annotation


# static fields
.field static synthetic A:Ljava/lang/Class;

.field static synthetic B:Ljava/lang/Class;

.field private static final h:Ljava/util/Map;

.field private static final i:Ljava/util/Map;

.field static synthetic j:Ljava/lang/Class;

.field static synthetic k:Ljava/lang/Class;

.field static synthetic l:Ljava/lang/Class;

.field static synthetic m:Ljava/lang/Class;

.field static synthetic n:Ljava/lang/Class;

.field static synthetic o:Ljava/lang/Class;

.field static synthetic p:Ljava/lang/Class;

.field static synthetic q:Ljava/lang/Class;

.field static synthetic r:Ljava/lang/Class;

.field static synthetic s:Ljava/lang/Class;

.field static synthetic t:Ljava/lang/Class;

.field static synthetic u:Ljava/lang/Class;

.field static synthetic v:Ljava/lang/Class;

.field static synthetic w:Ljava/lang/Class;

.field static synthetic x:Ljava/lang/Class;

.field static synthetic y:Ljava/lang/Class;

.field static synthetic z:Ljava/lang/Class;


# instance fields
.field private a:Ljava/util/Hashtable;

.field private b:Ljava/util/Hashtable;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/util/Hashtable;

.field private e:Ljava/util/List;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tools/ant/o;->h:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/apache/tools/ant/o;->i:Ljava/util/Map;

    .line 16
    .line 17
    new-array v0, v1, [Ljava/lang/Class;

    .line 18
    .line 19
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v0, v3

    .line 23
    .line 24
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aput-object v2, v0, v4

    .line 28
    .line 29
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    aput-object v2, v0, v5

    .line 33
    .line 34
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    const/4 v6, 0x3

    .line 37
    aput-object v2, v0, v6

    .line 38
    .line 39
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    aput-object v2, v0, v7

    .line 43
    .line 44
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    const/4 v8, 0x5

    .line 47
    aput-object v2, v0, v8

    .line 48
    .line 49
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    const/4 v9, 0x6

    .line 52
    aput-object v2, v0, v9

    .line 53
    .line 54
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    const/4 v10, 0x7

    .line 57
    aput-object v2, v0, v10

    .line 58
    .line 59
    sget-object v2, Lorg/apache/tools/ant/o;->j:Ljava/lang/Class;

    .line 60
    .line 61
    if-nez v2, :cond_0

    .line 62
    .line 63
    const-string v2, "java.lang.Boolean"

    .line 64
    .line 65
    invoke-static {v2}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sput-object v2, Lorg/apache/tools/ant/o;->j:Ljava/lang/Class;

    .line 70
    .line 71
    :cond_0
    sget-object v11, Lorg/apache/tools/ant/o;->k:Ljava/lang/Class;

    .line 72
    .line 73
    if-nez v11, :cond_1

    .line 74
    .line 75
    const-string v11, "java.lang.Byte"

    .line 76
    .line 77
    invoke-static {v11}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    sput-object v11, Lorg/apache/tools/ant/o;->k:Ljava/lang/Class;

    .line 82
    .line 83
    :cond_1
    sget-object v12, Lorg/apache/tools/ant/o;->l:Ljava/lang/Class;

    .line 84
    .line 85
    if-nez v12, :cond_2

    .line 86
    .line 87
    const-string v12, "java.lang.Character"

    .line 88
    .line 89
    invoke-static {v12}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    sput-object v12, Lorg/apache/tools/ant/o;->l:Ljava/lang/Class;

    .line 94
    .line 95
    :cond_2
    sget-object v13, Lorg/apache/tools/ant/o;->m:Ljava/lang/Class;

    .line 96
    .line 97
    if-nez v13, :cond_3

    .line 98
    .line 99
    const-string v13, "java.lang.Short"

    .line 100
    .line 101
    invoke-static {v13}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    sput-object v13, Lorg/apache/tools/ant/o;->m:Ljava/lang/Class;

    .line 106
    .line 107
    :cond_3
    sget-object v14, Lorg/apache/tools/ant/o;->n:Ljava/lang/Class;

    .line 108
    .line 109
    if-nez v14, :cond_4

    .line 110
    .line 111
    const-string v14, "java.lang.Integer"

    .line 112
    .line 113
    invoke-static {v14}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    sput-object v14, Lorg/apache/tools/ant/o;->n:Ljava/lang/Class;

    .line 118
    .line 119
    :cond_4
    sget-object v15, Lorg/apache/tools/ant/o;->o:Ljava/lang/Class;

    .line 120
    .line 121
    if-nez v15, :cond_5

    .line 122
    .line 123
    const-string v15, "java.lang.Long"

    .line 124
    .line 125
    invoke-static {v15}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    sput-object v15, Lorg/apache/tools/ant/o;->o:Ljava/lang/Class;

    .line 130
    .line 131
    :cond_5
    sget-object v16, Lorg/apache/tools/ant/o;->p:Ljava/lang/Class;

    .line 132
    .line 133
    if-nez v16, :cond_6

    .line 134
    .line 135
    const-string v16, "java.lang.Float"

    .line 136
    .line 137
    invoke-static/range {v16 .. v16}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object v16

    .line 141
    sput-object v16, Lorg/apache/tools/ant/o;->p:Ljava/lang/Class;

    .line 142
    .line 143
    :cond_6
    sget-object v17, Lorg/apache/tools/ant/o;->q:Ljava/lang/Class;

    .line 144
    .line 145
    if-nez v17, :cond_7

    .line 146
    .line 147
    const-string v17, "java.lang.Double"

    .line 148
    .line 149
    invoke-static/range {v17 .. v17}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v17

    .line 153
    sput-object v17, Lorg/apache/tools/ant/o;->q:Ljava/lang/Class;

    .line 154
    .line 155
    :cond_7
    new-array v10, v1, [Ljava/lang/Class;

    .line 156
    .line 157
    aput-object v2, v10, v3

    .line 158
    .line 159
    aput-object v11, v10, v4

    .line 160
    .line 161
    aput-object v12, v10, v5

    .line 162
    .line 163
    aput-object v13, v10, v6

    .line 164
    .line 165
    aput-object v14, v10, v7

    .line 166
    .line 167
    aput-object v15, v10, v8

    .line 168
    .line 169
    aput-object v16, v10, v9

    .line 170
    .line 171
    const/4 v2, 0x7

    .line 172
    aput-object v17, v10, v2

    .line 173
    .line 174
    :goto_0
    if-ge v3, v1, :cond_8

    .line 175
    .line 176
    sget-object v2, Lorg/apache/tools/ant/o;->i:Ljava/util/Map;

    .line 177
    .line 178
    aget-object v5, v0, v3

    .line 179
    .line 180
    aget-object v6, v10, v3

    .line 181
    .line 182
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    add-int/2addr v3, v4

    .line 186
    goto :goto_0

    .line 187
    :cond_8
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v3, Ljava/util/Hashtable;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v3, v0, Lorg/apache/tools/ant/o;->a:Ljava/util/Hashtable;

    .line 15
    .line 16
    new-instance v3, Ljava/util/Hashtable;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v3, v0, Lorg/apache/tools/ant/o;->b:Ljava/util/Hashtable;

    .line 22
    .line 23
    new-instance v3, Ljava/util/Hashtable;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v3, v0, Lorg/apache/tools/ant/o;->c:Ljava/util/Hashtable;

    .line 29
    .line 30
    new-instance v3, Ljava/util/Hashtable;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v3, v0, Lorg/apache/tools/ant/o;->d:Ljava/util/Hashtable;

    .line 36
    .line 37
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v3, v0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    iput-object v3, v0, Lorg/apache/tools/ant/o;->f:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    iput-object v1, v0, Lorg/apache/tools/ant/o;->g:Ljava/lang/Class;

    .line 48
    .line 49
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x0

    .line 54
    move v6, v5

    .line 55
    :goto_0
    array-length v7, v4

    .line 56
    if-ge v6, v7, :cond_15

    .line 57
    .line 58
    aget-object v7, v4, v6

    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    array-length v11, v10

    .line 73
    const-string v12, "addConfigured"

    .line 74
    .line 75
    const-string v13, "add"

    .line 76
    .line 77
    if-ne v11, v2, :cond_1

    .line 78
    .line 79
    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    if-eqz v11, :cond_1

    .line 86
    .line 87
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-nez v11, :cond_0

    .line 92
    .line 93
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-eqz v11, :cond_1

    .line 98
    .line 99
    :cond_0
    invoke-direct {v0, v7}, Lorg/apache/tools/ant/o;->n(Ljava/lang/reflect/Method;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :cond_1
    sget-object v11, Lorg/apache/tools/ant/o;->r:Ljava/lang/Class;

    .line 105
    .line 106
    if-nez v11, :cond_2

    .line 107
    .line 108
    const-string v11, "org.apache.tools.ant.ProjectComponent"

    .line 109
    .line 110
    invoke-static {v11}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    sput-object v11, Lorg/apache/tools/ant/o;->r:Ljava/lang/Class;

    .line 115
    .line 116
    :cond_2
    invoke-virtual {v11, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-eqz v11, :cond_3

    .line 121
    .line 122
    array-length v11, v10

    .line 123
    if-ne v11, v2, :cond_3

    .line 124
    .line 125
    aget-object v11, v10, v5

    .line 126
    .line 127
    invoke-direct {v0, v8, v11}, Lorg/apache/tools/ant/o;->q(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-eqz v11, :cond_3

    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/o;->o()Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-eqz v11, :cond_5

    .line 140
    .line 141
    array-length v11, v10

    .line 142
    if-ne v11, v2, :cond_5

    .line 143
    .line 144
    const-string v11, "addTask"

    .line 145
    .line 146
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-eqz v11, :cond_5

    .line 151
    .line 152
    sget-object v11, Lorg/apache/tools/ant/o;->s:Ljava/lang/Class;

    .line 153
    .line 154
    if-nez v11, :cond_4

    .line 155
    .line 156
    const-string v11, "org.apache.tools.ant.Task"

    .line 157
    .line 158
    invoke-static {v11}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    sput-object v11, Lorg/apache/tools/ant/o;->s:Ljava/lang/Class;

    .line 163
    .line 164
    :cond_4
    aget-object v14, v10, v5

    .line 165
    .line 166
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_5

    .line 171
    .line 172
    goto/16 :goto_4

    .line 173
    .line 174
    :cond_5
    const-string v11, "addText"

    .line 175
    .line 176
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    const-string v14, "java.lang.String"

    .line 181
    .line 182
    if-eqz v11, :cond_7

    .line 183
    .line 184
    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 185
    .line 186
    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    if-eqz v11, :cond_7

    .line 191
    .line 192
    array-length v11, v10

    .line 193
    if-ne v11, v2, :cond_7

    .line 194
    .line 195
    sget-object v11, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 196
    .line 197
    if-nez v11, :cond_6

    .line 198
    .line 199
    invoke-static {v14}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    sput-object v11, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 204
    .line 205
    :cond_6
    aget-object v15, v10, v5

    .line 206
    .line 207
    invoke-virtual {v11, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-eqz v11, :cond_7

    .line 212
    .line 213
    aget-object v7, v4, v6

    .line 214
    .line 215
    iput-object v7, v0, Lorg/apache/tools/ant/o;->f:Ljava/lang/reflect/Method;

    .line 216
    .line 217
    goto/16 :goto_4

    .line 218
    .line 219
    :cond_7
    const-string v11, "set"

    .line 220
    .line 221
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    if-eqz v15, :cond_a

    .line 226
    .line 227
    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 228
    .line 229
    invoke-virtual {v15, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v15

    .line 233
    if-eqz v15, :cond_a

    .line 234
    .line 235
    array-length v15, v10

    .line 236
    if-ne v15, v2, :cond_a

    .line 237
    .line 238
    aget-object v15, v10, v5

    .line 239
    .line 240
    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    if-nez v15, :cond_a

    .line 245
    .line 246
    invoke-static {v8, v11}, Lorg/apache/tools/ant/o;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    iget-object v9, v0, Lorg/apache/tools/ant/o;->b:Ljava/util/Hashtable;

    .line 251
    .line 252
    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    if-eqz v9, :cond_9

    .line 257
    .line 258
    sget-object v9, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 259
    .line 260
    if-nez v9, :cond_8

    .line 261
    .line 262
    invoke-static {v14}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    sput-object v9, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 267
    .line 268
    :cond_8
    aget-object v11, v10, v5

    .line 269
    .line 270
    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    if-eqz v9, :cond_9

    .line 275
    .line 276
    goto/16 :goto_4

    .line 277
    .line 278
    :cond_9
    aget-object v9, v10, v5

    .line 279
    .line 280
    invoke-direct {v0, v7, v9, v8}, Lorg/apache/tools/ant/o;->f(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/o$b;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    if-eqz v7, :cond_14

    .line 285
    .line 286
    iget-object v9, v0, Lorg/apache/tools/ant/o;->a:Ljava/util/Hashtable;

    .line 287
    .line 288
    aget-object v10, v10, v5

    .line 289
    .line 290
    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    iget-object v9, v0, Lorg/apache/tools/ant/o;->b:Ljava/util/Hashtable;

    .line 294
    .line 295
    invoke-virtual {v9, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_a
    const-string v11, "create"

    .line 301
    .line 302
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    if-eqz v15, :cond_b

    .line 307
    .line 308
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    .line 309
    .line 310
    .line 311
    move-result v15

    .line 312
    if-nez v15, :cond_b

    .line 313
    .line 314
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    .line 315
    .line 316
    .line 317
    move-result v15

    .line 318
    if-nez v15, :cond_b

    .line 319
    .line 320
    array-length v15, v10

    .line 321
    if-nez v15, :cond_b

    .line 322
    .line 323
    invoke-static {v8, v11}, Lorg/apache/tools/ant/o;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    iget-object v10, v0, Lorg/apache/tools/ant/o;->d:Ljava/util/Hashtable;

    .line 328
    .line 329
    invoke-virtual {v10, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    if-nez v10, :cond_14

    .line 334
    .line 335
    iget-object v10, v0, Lorg/apache/tools/ant/o;->c:Ljava/util/Hashtable;

    .line 336
    .line 337
    invoke-virtual {v10, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    iget-object v9, v0, Lorg/apache/tools/ant/o;->d:Ljava/util/Hashtable;

    .line 341
    .line 342
    new-instance v10, Lorg/apache/tools/ant/o$c;

    .line 343
    .line 344
    invoke-direct {v10, v7}, Lorg/apache/tools/ant/o$c;-><init>(Ljava/lang/reflect/Method;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    goto/16 :goto_4

    .line 351
    .line 352
    :cond_b
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v11

    .line 356
    const-string v15, "org.apache.tools.ant.Project"

    .line 357
    .line 358
    if-eqz v11, :cond_f

    .line 359
    .line 360
    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 361
    .line 362
    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    if-eqz v11, :cond_f

    .line 367
    .line 368
    array-length v11, v10

    .line 369
    if-ne v11, v2, :cond_f

    .line 370
    .line 371
    sget-object v11, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 372
    .line 373
    if-nez v11, :cond_c

    .line 374
    .line 375
    invoke-static {v14}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    move-result-object v11

    .line 379
    sput-object v11, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 380
    .line 381
    :cond_c
    aget-object v2, v10, v5

    .line 382
    .line 383
    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-nez v2, :cond_f

    .line 388
    .line 389
    aget-object v2, v10, v5

    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-nez v2, :cond_f

    .line 396
    .line 397
    aget-object v2, v10, v5

    .line 398
    .line 399
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-nez v2, :cond_f

    .line 404
    .line 405
    :try_start_0
    aget-object v2, v10, v5

    .line 406
    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 408
    .line 409
    .line 410
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_1

    .line 412
    :catch_0
    :try_start_1
    aget-object v2, v10, v5

    .line 413
    .line 414
    sget-object v9, Lorg/apache/tools/ant/o;->u:Ljava/lang/Class;

    .line 415
    .line 416
    if-nez v9, :cond_d

    .line 417
    .line 418
    invoke-static {v15}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    sput-object v9, Lorg/apache/tools/ant/o;->u:Ljava/lang/Class;

    .line 423
    .line 424
    :cond_d
    const/4 v11, 0x1

    .line 425
    new-array v13, v11, [Ljava/lang/Class;

    .line 426
    .line 427
    aput-object v9, v13, v5

    .line 428
    .line 429
    invoke-virtual {v2, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    :goto_1
    invoke-static {v8, v12}, Lorg/apache/tools/ant/o;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    iget-object v9, v0, Lorg/apache/tools/ant/o;->c:Ljava/util/Hashtable;

    .line 438
    .line 439
    aget-object v10, v10, v5

    .line 440
    .line 441
    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    iget-object v9, v0, Lorg/apache/tools/ant/o;->d:Ljava/util/Hashtable;

    .line 445
    .line 446
    new-instance v10, Lorg/apache/tools/ant/o$a;

    .line 447
    .line 448
    const/4 v11, 0x2

    .line 449
    invoke-direct {v10, v7, v2, v11}, Lorg/apache/tools/ant/o$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    .line 454
    .line 455
    :catch_1
    :cond_e
    :goto_2
    const/4 v2, 0x1

    .line 456
    goto/16 :goto_4

    .line 457
    .line 458
    :cond_f
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-eqz v2, :cond_e

    .line 463
    .line 464
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 465
    .line 466
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_e

    .line 471
    .line 472
    array-length v2, v10

    .line 473
    const/4 v9, 0x1

    .line 474
    if-ne v2, v9, :cond_13

    .line 475
    .line 476
    sget-object v2, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 477
    .line 478
    if-nez v2, :cond_10

    .line 479
    .line 480
    invoke-static {v14}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    sput-object v2, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 485
    .line 486
    :cond_10
    aget-object v9, v10, v5

    .line 487
    .line 488
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    if-nez v2, :cond_e

    .line 493
    .line 494
    aget-object v2, v10, v5

    .line 495
    .line 496
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    if-nez v2, :cond_e

    .line 501
    .line 502
    aget-object v2, v10, v5

    .line 503
    .line 504
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-nez v2, :cond_e

    .line 509
    .line 510
    :try_start_2
    aget-object v2, v10, v5

    .line 511
    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 513
    .line 514
    .line 515
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 516
    goto :goto_3

    .line 517
    :catch_2
    :try_start_3
    aget-object v2, v10, v5

    .line 518
    .line 519
    sget-object v9, Lorg/apache/tools/ant/o;->u:Ljava/lang/Class;

    .line 520
    .line 521
    if-nez v9, :cond_11

    .line 522
    .line 523
    invoke-static {v15}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    move-result-object v9

    .line 527
    sput-object v9, Lorg/apache/tools/ant/o;->u:Ljava/lang/Class;

    .line 528
    .line 529
    :cond_11
    const/4 v11, 0x1

    .line 530
    new-array v12, v11, [Ljava/lang/Class;

    .line 531
    .line 532
    aput-object v9, v12, v5

    .line 533
    .line 534
    invoke-virtual {v2, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    :goto_3
    invoke-static {v8, v13}, Lorg/apache/tools/ant/o;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v8

    .line 542
    iget-object v9, v0, Lorg/apache/tools/ant/o;->c:Ljava/util/Hashtable;

    .line 543
    .line 544
    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    if-eqz v9, :cond_12

    .line 549
    .line 550
    goto :goto_2

    .line 551
    :cond_12
    iget-object v9, v0, Lorg/apache/tools/ant/o;->c:Ljava/util/Hashtable;

    .line 552
    .line 553
    aget-object v10, v10, v5

    .line 554
    .line 555
    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    iget-object v9, v0, Lorg/apache/tools/ant/o;->d:Ljava/util/Hashtable;

    .line 559
    .line 560
    new-instance v10, Lorg/apache/tools/ant/o$a;

    .line 561
    .line 562
    const/4 v11, 0x1

    .line 563
    invoke-direct {v10, v7, v2, v11}, Lorg/apache/tools/ant/o$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    .line 567
    .line 568
    .line 569
    goto :goto_2

    .line 570
    :cond_13
    move v2, v9

    .line 571
    :cond_14
    :goto_4
    add-int/2addr v6, v2

    .line 572
    goto/16 :goto_0

    .line 573
    .line 574
    :cond_15
    return-void
.end method

.method static synthetic a(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/tools/ant/o;->g(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    sub-int/2addr p1, v1

    .line 22
    const-string v2, "..."

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private e(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/o$e;
    .locals 2

    .line 1
    iget-object p2, p0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->j(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/ComponentHelper;->i(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 23
    .line 24
    invoke-direct {p0, p2, v1}, Lorg/apache/tools/ant/o;->h(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_2
    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/ComponentHelper;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_3
    new-instance p3, Lorg/apache/tools/ant/f;

    .line 39
    .line 40
    invoke-direct {p3, p0, p2, p1, p1}, Lorg/apache/tools/ant/f;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p3
.end method

.method private f(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/o$b;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lorg/apache/tools/ant/o;->i:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/Class;

    .line 16
    .line 17
    :cond_0
    sget-object v2, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 18
    .line 19
    const-string v3, "java.lang.String"

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-static {v3}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sput-object v2, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 28
    .line 29
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    new-instance p2, Lorg/apache/tools/ant/h;

    .line 36
    .line 37
    invoke-direct {p2, p0, p1, p1}, Lorg/apache/tools/ant/h;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 38
    .line 39
    .line 40
    return-object p2

    .line 41
    :cond_2
    sget-object v2, Lorg/apache/tools/ant/o;->l:Ljava/lang/Class;

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    const-string v2, "java.lang.Character"

    .line 46
    .line 47
    invoke-static {v2}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sput-object v2, Lorg/apache/tools/ant/o;->l:Ljava/lang/Class;

    .line 52
    .line 53
    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    new-instance p2, Lorg/apache/tools/ant/i;

    .line 60
    .line 61
    invoke-direct {p2, p0, p1, p3, p1}, Lorg/apache/tools/ant/i;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 62
    .line 63
    .line 64
    return-object p2

    .line 65
    :cond_4
    sget-object p3, Lorg/apache/tools/ant/o;->j:Ljava/lang/Class;

    .line 66
    .line 67
    if-nez p3, :cond_5

    .line 68
    .line 69
    const-string p3, "java.lang.Boolean"

    .line 70
    .line 71
    invoke-static {p3}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    sput-object p3, Lorg/apache/tools/ant/o;->j:Ljava/lang/Class;

    .line 76
    .line 77
    :cond_5
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_6

    .line 82
    .line 83
    new-instance p2, Lorg/apache/tools/ant/j;

    .line 84
    .line 85
    invoke-direct {p2, p0, p1, p1}, Lorg/apache/tools/ant/j;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 86
    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_6
    sget-object p3, Lorg/apache/tools/ant/o;->z:Ljava/lang/Class;

    .line 90
    .line 91
    if-nez p3, :cond_7

    .line 92
    .line 93
    const-string p3, "java.lang.Class"

    .line 94
    .line 95
    invoke-static {p3}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    sput-object p3, Lorg/apache/tools/ant/o;->z:Ljava/lang/Class;

    .line 100
    .line 101
    :cond_7
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-eqz p3, :cond_8

    .line 106
    .line 107
    new-instance p2, Lorg/apache/tools/ant/k;

    .line 108
    .line 109
    invoke-direct {p2, p0, p1, p1}, Lorg/apache/tools/ant/k;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 110
    .line 111
    .line 112
    return-object p2

    .line 113
    :cond_8
    sget-object p3, Lorg/apache/tools/ant/o;->A:Ljava/lang/Class;

    .line 114
    .line 115
    if-nez p3, :cond_9

    .line 116
    .line 117
    const-string p3, "java.io.File"

    .line 118
    .line 119
    invoke-static {p3}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    sput-object p3, Lorg/apache/tools/ant/o;->A:Ljava/lang/Class;

    .line 124
    .line 125
    :cond_9
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-eqz p3, :cond_a

    .line 130
    .line 131
    new-instance p2, Lorg/apache/tools/ant/l;

    .line 132
    .line 133
    invoke-direct {p2, p0, p1, p1}, Lorg/apache/tools/ant/l;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 134
    .line 135
    .line 136
    return-object p2

    .line 137
    :cond_a
    sget-object p3, Lorg/apache/tools/ant/o;->B:Ljava/lang/Class;

    .line 138
    .line 139
    if-nez p3, :cond_b

    .line 140
    .line 141
    const-string p3, "org.apache.tools.ant.types.EnumeratedAttribute"

    .line 142
    .line 143
    invoke-static {p3}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    sput-object p3, Lorg/apache/tools/ant/o;->B:Ljava/lang/Class;

    .line 148
    .line 149
    :cond_b
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    if-eqz p3, :cond_c

    .line 154
    .line 155
    new-instance p3, Lorg/apache/tools/ant/m;

    .line 156
    .line 157
    invoke-direct {p3, p0, p1, p2, p1}, Lorg/apache/tools/ant/m;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 158
    .line 159
    .line 160
    return-object p3

    .line 161
    :cond_c
    const/4 p3, 0x0

    .line 162
    :try_start_0
    const-class v2, Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-object v2, p3

    .line 166
    :goto_0
    if-eqz v2, :cond_d

    .line 167
    .line 168
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_d

    .line 173
    .line 174
    new-instance p3, Lorg/apache/tools/ant/n;

    .line 175
    .line 176
    invoke-direct {p3, p0, p1, p1, p2}, Lorg/apache/tools/ant/n;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 177
    .line 178
    .line 179
    return-object p3

    .line 180
    :cond_d
    sget-object v2, Lorg/apache/tools/ant/o;->o:Ljava/lang/Class;

    .line 181
    .line 182
    if-nez v2, :cond_e

    .line 183
    .line 184
    const-string v2, "java.lang.Long"

    .line 185
    .line 186
    invoke-static {v2}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    sput-object v2, Lorg/apache/tools/ant/o;->o:Ljava/lang/Class;

    .line 191
    .line 192
    :cond_e
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_f

    .line 197
    .line 198
    new-instance p2, Lorg/apache/tools/ant/d;

    .line 199
    .line 200
    invoke-direct {p2, p0, p1, p1}, Lorg/apache/tools/ant/d;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 201
    .line 202
    .line 203
    return-object p2

    .line 204
    :cond_f
    :try_start_1
    sget-object v2, Lorg/apache/tools/ant/o;->u:Ljava/lang/Class;

    .line 205
    .line 206
    if-nez v2, :cond_10

    .line 207
    .line 208
    const-string v2, "org.apache.tools.ant.Project"

    .line 209
    .line 210
    invoke-static {v2}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sput-object v2, Lorg/apache/tools/ant/o;->u:Ljava/lang/Class;

    .line 215
    .line 216
    :cond_10
    sget-object v4, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 217
    .line 218
    if-nez v4, :cond_11

    .line 219
    .line 220
    invoke-static {v3}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    sput-object v4, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 225
    .line 226
    :cond_11
    const/4 v5, 0x2

    .line 227
    new-array v5, v5, [Ljava/lang/Class;

    .line 228
    .line 229
    aput-object v2, v5, v1

    .line 230
    .line 231
    aput-object v4, v5, v0

    .line 232
    .line 233
    invoke-virtual {p2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 234
    .line 235
    .line 236
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    move-object v6, p2

    .line 238
    move v5, v0

    .line 239
    goto :goto_1

    .line 240
    :catch_1
    :try_start_2
    sget-object v2, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 241
    .line 242
    if-nez v2, :cond_12

    .line 243
    .line 244
    invoke-static {v3}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    sput-object v2, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 249
    .line 250
    :cond_12
    new-array v0, v0, [Ljava/lang/Class;

    .line 251
    .line 252
    aput-object v2, v0, v1

    .line 253
    .line 254
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 255
    .line 256
    .line 257
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    move-object v6, p2

    .line 259
    move v5, v1

    .line 260
    :goto_1
    new-instance p2, Lorg/apache/tools/ant/e;

    .line 261
    .line 262
    move-object v2, p2

    .line 263
    move-object v3, p0

    .line 264
    move-object v4, p1

    .line 265
    move-object v7, p1

    .line 266
    invoke-direct/range {v2 .. v7}, Lorg/apache/tools/ant/e;-><init>(Lorg/apache/tools/ant/o;Ljava/lang/reflect/Method;ZLjava/lang/reflect/Constructor;Ljava/lang/reflect/Method;)V

    .line 267
    .line 268
    .line 269
    return-object p2

    .line 270
    :catch_2
    return-object p3
.end method

.method private static g(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lorg/apache/tools/ant/BuildException;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/apache/tools/ant/BuildException;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method private h(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    move v3, v1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-ge v3, v4, :cond_3

    .line 10
    .line 11
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/lang/reflect/Method;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    aget-object v5, v5, v1

    .line 22
    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    move-object v0, v4

    .line 32
    move-object v2, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "ambiguous: types "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    const-string v1, " and "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    const-string v1, " match "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p2

    .line 92
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    return-object v0
.end method

.method private j(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->p(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public static k(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/o;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/tools/ant/o;->h:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/apache/tools/ant/o;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Lorg/apache/tools/ant/o;->g:Ljava/lang/Class;

    .line 16
    .line 17
    if-eq v2, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/o;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Lorg/apache/tools/ant/o;-><init>(Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v1
.end method

.method private l(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/w;)Lorg/apache/tools/ant/o$e;
    .locals 4

    .line 1
    invoke-static {p4}, Lorg/apache/tools/ant/r;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-static {p4}, Lorg/apache/tools/ant/r;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "antlib:org.apache.tools.ant"

    .line 10
    .line 11
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, ""

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move-object p5, v3

    .line 20
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    move-object p2, v3

    .line 27
    :cond_1
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p2, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/apache/tools/ant/o;->d:Ljava/util/Hashtable;

    .line 43
    .line 44
    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {v0, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p5

    .line 50
    invoke-virtual {p2, p5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lorg/apache/tools/ant/o$e;

    .line 55
    .line 56
    :goto_1
    if-nez p2, :cond_4

    .line 57
    .line 58
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/tools/ant/o;->e(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/o$e;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    :cond_4
    if-nez p2, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/tools/ant/o;->t(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_5
    return-object p2
.end method

.method private static m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private n(Ljava/lang/reflect/Method;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_3

    .line 16
    .line 17
    iget-object v3, p0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/reflect/Method;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    aget-object v4, v4, v1

    .line 30
    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "addConfigured"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    aget-object v3, v3, v1

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private q(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const-string v0, "setLocation"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lorg/apache/tools/ant/o;->v:Ljava/lang/Class;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "org.apache.tools.ant.Location"

    .line 15
    .line 16
    invoke-static {v0}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lorg/apache/tools/ant/o;->v:Ljava/lang/Class;

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    const-string v0, "setTaskType"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    sget-object p1, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    const-string p1, "java.lang.String"

    .line 42
    .line 43
    invoke-static {p1}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sput-object p1, Lorg/apache/tools/ant/o;->t:Ljava/lang/Class;

    .line 48
    .line 49
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    return v1

    .line 56
    :cond_3
    const/4 p1, 0x0

    .line 57
    return p1
.end method


# virtual methods
.method public b(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/o;->f:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuffer;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->p(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    const-string p1, " doesn\'t support nested text data (\""

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p3}, Lorg/apache/tools/ant/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    const-string p1, "\")."

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    const/4 p1, 0x1

    .line 56
    :try_start_0
    new-array p1, p1, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    aput-object p3, p1, v1

    .line 60
    .line 61
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :goto_0
    invoke-static {p1}, Lorg/apache/tools/ant/o;->g(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    throw p1

    .line 74
    :goto_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw p2
.end method

.method public i(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/w;)Lorg/apache/tools/ant/o$d;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/tools/ant/o;->l(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/w;)Lorg/apache/tools/ant/o$e;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance p4, Lorg/apache/tools/ant/o$d;

    .line 6
    .line 7
    const/4 p5, 0x0

    .line 8
    invoke-direct {p4, p1, p3, p2, p5}, Lorg/apache/tools/ant/o$d;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/o$e;Lorg/apache/tools/ant/g;)V

    .line 9
    .line 10
    .line 11
    return-object p4
.end method

.method public o()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/tools/ant/o;->y:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.tools.ant.TaskContainer"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/tools/ant/o;->y:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/o;->g:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public p()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/tools/ant/o;->w:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.tools.ant.DynamicElement"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/tools/ant/o;->w:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/o;->g:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    sget-object v0, Lorg/apache/tools/ant/o;->x:Ljava/lang/Class;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "org.apache.tools.ant.DynamicElementNS"

    .line 26
    .line 27
    invoke-static {v0}, Lorg/apache/tools/ant/o;->c(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/apache/tools/ant/o;->x:Ljava/lang/Class;

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/o;->g:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 45
    :goto_1
    return v0
.end method

.method public r(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/o;->b:Ljava/util/Hashtable;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/apache/tools/ant/o$b;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/16 p4, 0x3a

    .line 18
    .line 19
    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    const/4 v0, -0x1

    .line 24
    if-eq p4, v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p4, Ljava/lang/StringBuffer;

    .line 28
    .line 29
    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/o;->j(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    const-string p1, " doesn\'t support the \""

    .line 40
    .line 41
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    const-string p1, "\" attribute."

    .line 48
    .line 49
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Lorg/apache/tools/ant/UnsupportedAttributeException;

    .line 57
    .line 58
    invoke-direct {p2, p1, p3}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2, p4}, Lorg/apache/tools/ant/o$b;->a(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lorg/apache/tools/ant/o;->g(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    throw p1

    .line 72
    :catch_1
    move-exception p1

    .line 73
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p2
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/o;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/tools/ant/o;->e:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p2}, Lorg/apache/tools/ant/r;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lorg/apache/tools/ant/o;->d:Ljava/util/Hashtable;

    .line 22
    .line 23
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :cond_1
    invoke-static {p2}, Lorg/apache/tools/ant/r;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "antlib:org.apache.tools.ant"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const-string v3, ""

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    move-object p2, v3

    .line 52
    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    return v1

    .line 59
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    move-object p1, v3

    .line 66
    :cond_4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_5
    :goto_0
    return v1
.end method

.method public t(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->p(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string p1, " doesn\'t support the nested \""

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    const-string p1, "\" element."

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lorg/apache/tools/ant/UnsupportedElementException;

    .line 31
    .line 32
    invoke-direct {p2, p1, p3}, Lorg/apache/tools/ant/UnsupportedElementException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method
