.class public Lorg/mvel2/templates/res/CompiledForEachNode;
.super Lorg/mvel2/templates/res/Node;
.source "source.java"


# instance fields
.field private cSepExpr:Ljava/io/Serializable;

.field private ce:[Ljava/io/Serializable;

.field private context:Lorg/mvel2/ParserContext;

.field private item:[Ljava/lang/String;

.field public nestedNode:Lorg/mvel2/templates/res/Node;

.field private sepExpr:[C


# direct methods
.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/mvel2/templates/res/Node;-><init>(ILjava/lang/String;[CII)V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->context:Lorg/mvel2/ParserContext;

    .line 5
    .line 6
    invoke-direct {p0}, Lorg/mvel2/templates/res/CompiledForEachNode;->configure()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private configure()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 12
    .line 13
    move v3, v2

    .line 14
    :goto_0
    iget v4, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 15
    .line 16
    if-ge v2, v4, :cond_4

    .line 17
    .line 18
    iget-object v4, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 19
    .line 20
    aget-char v5, v4, v2

    .line 21
    .line 22
    const/16 v6, 0x22

    .line 23
    .line 24
    if-eq v5, v6, :cond_3

    .line 25
    .line 26
    const/16 v6, 0x2c

    .line 27
    .line 28
    if-eq v5, v6, :cond_1

    .line 29
    .line 30
    const/16 v6, 0x3a

    .line 31
    .line 32
    if-eq v5, v6, :cond_0

    .line 33
    .line 34
    const/16 v6, 0x5b

    .line 35
    .line 36
    if-eq v5, v6, :cond_3

    .line 37
    .line 38
    const/16 v6, 0x7b

    .line 39
    .line 40
    if-eq v5, v6, :cond_3

    .line 41
    .line 42
    const/16 v6, 0x27

    .line 43
    .line 44
    if-eq v5, v6, :cond_3

    .line 45
    .line 46
    const/16 v6, 0x28

    .line 47
    .line 48
    if-eq v5, v6, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    sub-int v5, v2, v3

    .line 52
    .line 53
    invoke-static {v4, v3, v5}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    add-int/lit8 v5, v5, -0x1

    .line 72
    .line 73
    if-ne v4, v5, :cond_2

    .line 74
    .line 75
    iget-object v4, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 76
    .line 77
    sub-int v5, v2, v3

    .line 78
    .line 79
    invoke-static {v4, v3, v5}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    new-instance v0, Lorg/mvel2/CompileException;

    .line 88
    .line 89
    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 90
    .line 91
    iget v3, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    .line 92
    .line 93
    add-int/2addr v3, v2

    .line 94
    const-string v2, "unexpected character \',\' in foreach tag"

    .line 95
    .line 96
    invoke-direct {v0, v2, v1, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_3
    invoke-static {v4, v2, v5}, Lorg/mvel2/util/m;->c([CIC)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    if-ge v3, v4, :cond_6

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    add-int/lit8 v4, v4, -0x1

    .line 118
    .line 119
    if-ne v2, v4, :cond_5

    .line 120
    .line 121
    iget-object v2, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 122
    .line 123
    iget v4, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 124
    .line 125
    sub-int/2addr v4, v3

    .line 126
    invoke-static {v2, v3, v4}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    new-instance v0, Lorg/mvel2/CompileException;

    .line 135
    .line 136
    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    .line 137
    .line 138
    iget v2, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    .line 139
    .line 140
    const-string v3, "expected character \':\' in foreach tag"

    .line 141
    .line 142
    invoke-direct {v0, v3, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    new-array v2, v2, [Ljava/lang/String;

    .line 151
    .line 152
    iput-object v2, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->item:[Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/4 v2, 0x0

    .line 159
    move v3, v2

    .line 160
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_7

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Ljava/lang/String;

    .line 171
    .line 172
    iget-object v5, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->item:[Ljava/lang/String;

    .line 173
    .line 174
    add-int/lit8 v6, v3, 0x1

    .line 175
    .line 176
    aput-object v4, v5, v3

    .line 177
    .line 178
    move v3, v6

    .line 179
    goto :goto_4

    .line 180
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    new-array v3, v0, [Ljava/lang/String;

    .line 185
    .line 186
    new-array v0, v0, [Ljava/io/Serializable;

    .line 187
    .line 188
    iput-object v0, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->ce:[Ljava/io/Serializable;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_8

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Ljava/lang/String;

    .line 205
    .line 206
    iget-object v4, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->ce:[Ljava/io/Serializable;

    .line 207
    .line 208
    add-int/lit8 v5, v2, 0x1

    .line 209
    .line 210
    aput-object v1, v3, v2

    .line 211
    .line 212
    iget-object v6, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->context:Lorg/mvel2/ParserContext;

    .line 213
    .line 214
    invoke-static {v1, v6}, Lorg/mvel2/d;->d(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    aput-object v1, v4, v2

    .line 219
    .line 220
    move v2, v5

    .line 221
    goto :goto_5

    .line 222
    :cond_8
    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 4
    .line 5
    iget-object p2, p0, Lorg/mvel2/templates/res/Node;->terminus:Lorg/mvel2/templates/res/Node;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/mvel2/templates/res/Node;->getContents()[C

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->sepExpr:[C

    .line 14
    .line 15
    array-length p2, p1

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->sepExpr:[C

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->context:Lorg/mvel2/ParserContext;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lorg/mvel2/d;->f([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->cSepExpr:Ljava/io/Serializable;

    .line 29
    .line 30
    :goto_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->item:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v1, v0, [Ljava/util/Iterator;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v0, :cond_3

    .line 9
    .line 10
    iget-object v4, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->ce:[Ljava/io/Serializable;

    .line 11
    .line 12
    aget-object v4, v4, v3

    .line 13
    .line 14
    invoke-static {v4, p3, p4}, Lorg/mvel2/d;->r(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    instance-of v5, v4, Ljava/lang/Iterable;

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    check-cast v4, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v1, v3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    instance-of v5, v4, [Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    new-instance v5, Lg00/a;

    .line 36
    .line 37
    check-cast v4, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {v5, v4}, Lg00/a;-><init>([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    aput-object v5, v1, v3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    new-instance v5, Lg00/b;

    .line 50
    .line 51
    check-cast v4, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-direct {v5, v4}, Lg00/b;-><init>(I)V

    .line 58
    .line 59
    .line 60
    aput-object v5, v1, v3

    .line 61
    .line 62
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p1, Lorg/mvel2/templates/TemplateRuntimeError;

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string p3, "cannot iterate object type: "

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p1, p2}, Lorg/mvel2/templates/TemplateRuntimeError;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v4, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 102
    .line 103
    invoke-direct {v4, v3, p4}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 104
    .line 105
    .line 106
    move v5, v0

    .line 107
    :cond_4
    :goto_2
    move v6, v2

    .line 108
    :goto_3
    if-ge v6, v0, :cond_6

    .line 109
    .line 110
    aget-object v7, v1, v6

    .line 111
    .line 112
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-nez v7, :cond_5

    .line 117
    .line 118
    add-int/lit8 v5, v5, -0x1

    .line 119
    .line 120
    iget-object v7, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->item:[Ljava/lang/String;

    .line 121
    .line 122
    aget-object v7, v7, v6

    .line 123
    .line 124
    const-string v8, ""

    .line 125
    .line 126
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    iget-object v7, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->item:[Ljava/lang/String;

    .line 131
    .line 132
    aget-object v7, v7, v6

    .line 133
    .line 134
    aget-object v8, v1, v6

    .line 135
    .line 136
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    if-eqz v5, :cond_8

    .line 147
    .line 148
    iget-object v6, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 149
    .line 150
    invoke-virtual {v6, p1, p2, p3, v4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    iget-object v6, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->sepExpr:[C

    .line 154
    .line 155
    if-eqz v6, :cond_4

    .line 156
    .line 157
    move v6, v2

    .line 158
    :goto_5
    if-ge v6, v0, :cond_4

    .line 159
    .line 160
    aget-object v7, v1, v6

    .line 161
    .line 162
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_7

    .line 167
    .line 168
    iget-object v6, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->cSepExpr:Ljava/io/Serializable;

    .line 169
    .line 170
    invoke-static {v6, p3, p4}, Lorg/mvel2/d;->r(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-interface {p2, v6}, Lg00/c;->append(Ljava/lang/CharSequence;)Lg00/c;

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_8
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 186
    .line 187
    if-eqz v0, :cond_9

    .line 188
    .line 189
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    goto :goto_6

    .line 194
    :cond_9
    const/4 p1, 0x0

    .line 195
    :goto_6
    return-object p1
.end method

.method public getNestedNode()Lorg/mvel2/templates/res/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public setNestedNode(Lorg/mvel2/templates/res/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/templates/res/CompiledForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-void
.end method
