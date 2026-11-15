.class public Lorg/mvel2/ast/Fold;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private constraintEx:Lorg/mvel2/compiler/ExecutableStatement;

.field private dataEx:Lorg/mvel2/compiler/ExecutableStatement;

.field private subEx:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 5

    .line 1
    invoke-direct {p0, p5}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 9
    .line 10
    add-int/2addr p3, p2

    .line 11
    move v0, p2

    .line 12
    :goto_0
    const/16 v1, 0x69

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-ge v0, p3, :cond_2

    .line 16
    .line 17
    aget-char v3, p1, v0

    .line 18
    .line 19
    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    :goto_1
    if-ge v0, p3, :cond_0

    .line 26
    .line 27
    aget-char v3, p1, v0

    .line 28
    .line 29
    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    aget-char v3, p1, v0

    .line 39
    .line 40
    if-ne v3, v1, :cond_1

    .line 41
    .line 42
    add-int/lit8 v3, v0, 0x1

    .line 43
    .line 44
    aget-char v3, p1, v3

    .line 45
    .line 46
    const/16 v4, 0x6e

    .line 47
    .line 48
    if-ne v3, v4, :cond_1

    .line 49
    .line 50
    add-int/lit8 v3, v0, 0x2

    .line 51
    .line 52
    aget-char v3, p1, v3

    .line 53
    .line 54
    invoke-static {v3}, Lorg/mvel2/util/m;->d0(C)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    add-int/2addr v0, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    :goto_2
    sub-int v3, v0, p2

    .line 64
    .line 65
    sub-int/2addr v3, v2

    .line 66
    invoke-static {p1, p2, v3, p5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 71
    .line 72
    iput-object p2, p0, Lorg/mvel2/ast/Fold;->subEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x2

    .line 75
    .line 76
    move p2, v0

    .line 77
    :goto_3
    if-ge p2, p3, :cond_5

    .line 78
    .line 79
    aget-char v3, p1, p2

    .line 80
    .line 81
    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    :goto_4
    if-ge p2, p3, :cond_3

    .line 88
    .line 89
    aget-char v3, p1, p2

    .line 90
    .line 91
    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    add-int/lit8 p2, p2, 0x1

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_3
    aget-char v3, p1, p2

    .line 101
    .line 102
    if-ne v3, v1, :cond_4

    .line 103
    .line 104
    add-int/lit8 v3, p2, 0x1

    .line 105
    .line 106
    aget-char v3, p1, v3

    .line 107
    .line 108
    const/16 v4, 0x66

    .line 109
    .line 110
    if-ne v3, v4, :cond_4

    .line 111
    .line 112
    add-int/lit8 v3, p2, 0x2

    .line 113
    .line 114
    aget-char v4, p1, v3

    .line 115
    .line 116
    invoke-static {v4}, Lorg/mvel2/util/m;->d0(C)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    sub-int/2addr p3, v3

    .line 123
    invoke-static {p1, v3, p3, p5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    check-cast p3, Lorg/mvel2/compiler/ExecutableStatement;

    .line 128
    .line 129
    iput-object p3, p0, Lorg/mvel2/ast/Fold;->constraintEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_4
    add-int/2addr p2, v2

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    :goto_5
    aget-char p3, p1, p2

    .line 135
    .line 136
    invoke-static {p3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    if-eqz p3, :cond_6

    .line 141
    .line 142
    add-int/lit8 p2, p2, -0x1

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_6
    sub-int/2addr p2, v0

    .line 146
    invoke-static {p1, v0, p2, p5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 151
    .line 152
    iput-object p1, p0, Lorg/mvel2/ast/Fold;->dataEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 153
    .line 154
    and-int/lit8 p2, p4, 0x10

    .line 155
    .line 156
    if-eqz p2, :cond_7

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_7
    const/4 v2, 0x0

    .line 160
    :goto_6
    const-class p2, Ljava/util/Collection;

    .line 161
    .line 162
    invoke-static {p5, p1, p2, v2}, Lorg/mvel2/util/e;->c(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;Ljava/lang/Class;Z)V

    .line 163
    .line 164
    .line 165
    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/util/Collection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    .line 2
    .line 3
    const-string v1, "$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/mvel2/integration/impl/ItemResolverFactory;

    .line 9
    .line 10
    new-instance v2, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;

    .line 11
    .line 12
    invoke-direct {v2, p3}, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory;-><init>(Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/mvel2/ast/Fold;->constraintEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 19
    .line 20
    const-string v3, "null"

    .line 21
    .line 22
    const-string v4, "was expecting type: Collection; but found type: "

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Lorg/mvel2/ast/Fold;->dataEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 27
    .line 28
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    instance-of v2, p3, Ljava/util/Collection;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    new-instance p1, Lorg/mvel2/CompileException;

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    if-nez p3, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 65
    .line 66
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 67
    .line 68
    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 73
    .line 74
    check-cast p3, Ljava/util/Collection;

    .line 75
    .line 76
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iput-object v3, v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->value:Ljava/lang/Object;

    .line 98
    .line 99
    iget-object v4, p0, Lorg/mvel2/ast/Fold;->constraintEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 100
    .line 101
    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    iget-object v4, p0, Lorg/mvel2/ast/Fold;->subEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 114
    .line 115
    invoke-interface {v4, v3, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget-object v2, p0, Lorg/mvel2/ast/Fold;->dataEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 124
    .line 125
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    instance-of p3, p1, Ljava/util/Collection;

    .line 130
    .line 131
    if-nez p3, :cond_5

    .line 132
    .line 133
    new-instance p2, Lorg/mvel2/CompileException;

    .line 134
    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    if-nez p1, :cond_4

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    :goto_2
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 162
    .line 163
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 164
    .line 165
    invoke-direct {p2, p1, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 166
    .line 167
    .line 168
    throw p2

    .line 169
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 170
    .line 171
    check-cast p1, Ljava/util/Collection;

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    if-eqz p3, :cond_6

    .line 189
    .line 190
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    iget-object v3, p0, Lorg/mvel2/ast/Fold;->subEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 195
    .line 196
    iput-object p3, v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->value:Ljava/lang/Object;

    .line 197
    .line 198
    invoke-interface {v3, p3, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    return-object v2
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    .line 2
    .line 3
    const-string v1, "$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/mvel2/integration/impl/ItemResolverFactory;

    .line 9
    .line 10
    new-instance v2, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;

    .line 11
    .line 12
    invoke-direct {v2, p3}, Lorg/mvel2/integration/impl/DefaultLocalVariableResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory;-><init>(Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/mvel2/ast/Fold;->constraintEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lorg/mvel2/ast/Fold;->dataEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 23
    .line 24
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Ljava/util/Collection;

    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->value:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v4, p0, Lorg/mvel2/ast/Fold;->constraintEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 56
    .line 57
    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    iget-object v4, p0, Lorg/mvel2/ast/Fold;->subEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 70
    .line 71
    invoke-interface {v4, v3, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v2, p0, Lorg/mvel2/ast/Fold;->dataEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 80
    .line 81
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/util/Collection;

    .line 86
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_2

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    iget-object v3, p0, Lorg/mvel2/ast/Fold;->subEx:Lorg/mvel2/compiler/ExecutableStatement;

    .line 111
    .line 112
    iput-object p3, v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->value:Ljava/lang/Object;

    .line 113
    .line 114
    invoke-interface {v3, p3, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    return-object v2
.end method
