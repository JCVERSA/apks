.class public Lorg/mvel2/templates/res/ForEachNode;
.super Lorg/mvel2/templates/res/Node;
.source "source.java"


# instance fields
.field private expression:[Ljava/lang/String;

.field private item:[Ljava/lang/String;

.field public nestedNode:Lorg/mvel2/templates/res/Node;

.field private sepExpr:[C


# direct methods
.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/mvel2/templates/res/Node;-><init>(ILjava/lang/String;[CII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/mvel2/templates/res/ForEachNode;->configure()V

    .line 5
    .line 6
    .line 7
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
    iput-object v2, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

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
    iget-object v5, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

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
    new-array v0, v0, [Ljava/lang/String;

    .line 185
    .line 186
    iput-object v0, p0, Lorg/mvel2/templates/res/ForEachNode;->expression:[Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Ljava/lang/String;

    .line 203
    .line 204
    iget-object v3, p0, Lorg/mvel2/templates/res/ForEachNode;->expression:[Ljava/lang/String;

    .line 205
    .line 206
    add-int/lit8 v4, v2, 0x1

    .line 207
    .line 208
    aput-object v1, v3, v2

    .line 209
    .line 210
    move v2, v4

    .line 211
    goto :goto_5

    .line 212
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
    iput-object p2, p0, Lorg/mvel2/templates/res/ForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

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
    iput-object p1, p0, Lorg/mvel2/templates/res/ForEachNode;->sepExpr:[C

    .line 14
    .line 15
    array-length p1, p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lorg/mvel2/templates/res/ForEachNode;->sepExpr:[C

    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

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
    if-ge v3, v0, :cond_2

    .line 9
    .line 10
    iget-object v4, p0, Lorg/mvel2/templates/res/ForEachNode;->expression:[Ljava/lang/String;

    .line 11
    .line 12
    aget-object v4, v4, v3

    .line 13
    .line 14
    invoke-static {v4, p3, p4}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

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
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Lorg/mvel2/templates/TemplateRuntimeError;

    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p3, "cannot iterate object type: "

    .line 55
    .line 56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Lorg/mvel2/templates/TemplateRuntimeError;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v4, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 84
    .line 85
    invoke-direct {v4, v3, p4}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 86
    .line 87
    .line 88
    move v5, v0

    .line 89
    :cond_3
    :goto_2
    move v6, v2

    .line 90
    :goto_3
    if-ge v6, v0, :cond_5

    .line 91
    .line 92
    aget-object v7, v1, v6

    .line 93
    .line 94
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_4

    .line 99
    .line 100
    add-int/lit8 v5, v5, -0x1

    .line 101
    .line 102
    iget-object v7, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

    .line 103
    .line 104
    aget-object v7, v7, v6

    .line 105
    .line 106
    const-string v8, ""

    .line 107
    .line 108
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    iget-object v7, p0, Lorg/mvel2/templates/res/ForEachNode;->item:[Ljava/lang/String;

    .line 113
    .line 114
    aget-object v7, v7, v6

    .line 115
    .line 116
    aget-object v8, v1, v6

    .line 117
    .line 118
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    if-eqz v5, :cond_7

    .line 129
    .line 130
    iget-object v6, p0, Lorg/mvel2/templates/res/ForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 131
    .line 132
    invoke-virtual {v6, p1, p2, p3, v4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v6, p0, Lorg/mvel2/templates/res/ForEachNode;->sepExpr:[C

    .line 136
    .line 137
    if-eqz v6, :cond_3

    .line 138
    .line 139
    move v6, v2

    .line 140
    :goto_5
    if-ge v6, v0, :cond_3

    .line 141
    .line 142
    aget-object v7, v1, v6

    .line 143
    .line 144
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_6

    .line 149
    .line 150
    iget-object v6, p0, Lorg/mvel2/templates/res/ForEachNode;->sepExpr:[C

    .line 151
    .line 152
    invoke-static {v6, p3, p4}, Lorg/mvel2/d;->q([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-interface {p2, v6}, Lg00/c;->append(Ljava/lang/CharSequence;)Lg00/c;

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_7
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    .line 168
    .line 169
    if-eqz v0, :cond_8

    .line 170
    .line 171
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lf00/d;Lg00/c;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    goto :goto_6

    .line 176
    :cond_8
    const/4 p1, 0x0

    .line 177
    :goto_6
    return-object p1
.end method

.method public getNestedNode()Lorg/mvel2/templates/res/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/templates/res/ForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public setNestedNode(Lorg/mvel2/templates/res/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/templates/res/ForEachNode;->nestedNode:Lorg/mvel2/templates/res/Node;

    .line 2
    .line 3
    return-void
.end method
