.class public Lorg/mvel2/ast/ForNode;
.super Lorg/mvel2/ast/BlockNode;
.source "source.java"


# instance fields
.field protected after:Lorg/mvel2/compiler/ExecutableStatement;

.field protected condition:Lorg/mvel2/compiler/ExecutableStatement;

.field protected indexAlloc:Z

.field protected initializer:Lorg/mvel2/compiler/ExecutableStatement;

.field protected item:Ljava/lang/String;


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    invoke-direct {p0, p7}, Lorg/mvel2/ast/BlockNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/ast/ForNode;->indexAlloc:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 8
    .line 9
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 10
    .line 11
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 12
    .line 13
    iput p4, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 14
    .line 15
    iput p5, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 16
    .line 17
    invoke-direct/range {p0 .. p7}, Lorg/mvel2/ast/ForNode;->buildForEach([CIIIIILorg/mvel2/ParserContext;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p7, :cond_0

    .line 22
    .line 23
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->isIndexAllocation()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_0
    iput-boolean v0, p0, Lorg/mvel2/ast/ForNode;->indexAlloc:Z

    .line 31
    .line 32
    and-int/lit8 p2, p6, 0x10

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 37
    .line 38
    invoke-interface {p2}, Lorg/mvel2/compiler/ExecutableStatement;->isEmptyStatement()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Lorg/mvel2/ast/RedundantCodeException;

    .line 48
    .line 49
    invoke-direct {p1}, Lorg/mvel2/ast/RedundantCodeException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    :goto_0
    if-eqz p7, :cond_3

    .line 54
    .line 55
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->popVariableScope()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method private buildForEach([CIIIIILorg/mvel2/ParserContext;)Z
    .locals 7

    .line 1
    add-int/2addr p3, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, p3, v0}, Lorg/mvel2/ast/ForNode;->nextCondPart([CIIZ)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz p7, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->createSubcontext()Lorg/mvel2/ParserContext;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->createColoringSubcontext()Lorg/mvel2/ParserContext;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v2, Lorg/mvel2/ParserContext;

    .line 19
    .line 20
    invoke-direct {v2}, Lorg/mvel2/ParserContext;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_0
    sub-int v3, v1, p2

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    sub-int/2addr v3, v4

    .line 27
    invoke-static {p1, p2, v3, v2}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lorg/mvel2/compiler/ExecutableStatement;

    .line 32
    .line 33
    iput-object v3, p0, Lorg/mvel2/ast/ForNode;->initializer:Lorg/mvel2/compiler/ExecutableStatement;

    .line 34
    .line 35
    if-eqz p7, :cond_1

    .line 36
    .line 37
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->pushVariableScope()V
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 38
    .line 39
    .line 40
    :cond_1
    :try_start_1
    invoke-static {p1, v1, p3, v0}, Lorg/mvel2/ast/ForNode;->nextCondPart([CIIZ)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sub-int v3, p2, v1

    .line 45
    .line 46
    sub-int/2addr v3, v4

    .line 47
    invoke-static {p1, v1, v3, v2}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lorg/mvel2/compiler/ExecutableStatement;

    .line 52
    .line 53
    iput-object v3, p0, Lorg/mvel2/ast/ForNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 54
    .line 55
    const-class v5, Ljava/lang/Boolean;

    .line 56
    .line 57
    and-int/lit8 p6, p6, 0x10

    .line 58
    .line 59
    if-eqz p6, :cond_2

    .line 60
    .line 61
    move v6, v4

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v6, v0

    .line 64
    :goto_1
    invoke-static {p7, v3, v5, v6}, Lorg/mvel2/util/e;->c(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;Ljava/lang/Class;Z)V
    :try_end_1
    .catch Lorg/mvel2/CompileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-static {p1, p2, p3, v4}, Lorg/mvel2/ast/ForNode;->nextCondPart([CIIZ)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    sub-int/2addr p3, p2

    .line 72
    invoke-static {p1, p2, p3, v2}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 77
    .line 78
    iput-object p1, p0, Lorg/mvel2/ast/ForNode;->after:Lorg/mvel2/compiler/ExecutableStatement;

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    if-eqz p6, :cond_4

    .line 83
    .line 84
    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->isVariablesEscape()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    if-eq p7, v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->getVariables()Ljava/util/HashMap;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p7, p1}, Lorg/mvel2/ParserContext;->addVariables(Ljava/util/Map;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    move v0, v4

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    if-eqz v2, :cond_5

    .line 102
    .line 103
    if-eqz p7, :cond_5

    .line 104
    .line 105
    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->getVariables()Ljava/util/HashMap;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p7, p1}, Lorg/mvel2/ParserContext;->addVariables(Ljava/util/Map;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 113
    .line 114
    invoke-static {p1, p4, p5, v2}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 119
    .line 120
    iput-object p1, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 121
    .line 122
    if-eqz p7, :cond_6

    .line 123
    .line 124
    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->getInputs()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p7, p1}, Lorg/mvel2/ParserContext;->setInputs(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    .line 130
    .line 131
    :cond_6
    return v0

    .line 132
    :catch_0
    move p2, v1

    .line 133
    goto :goto_5

    .line 134
    :catch_1
    move-exception p1

    .line 135
    :try_start_3
    invoke-virtual {p1}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    array-length p2, p2

    .line 140
    if-nez p2, :cond_8

    .line 141
    .line 142
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lorg/mvel2/CompileException;->setExpr([C)V
    :try_end_3
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 145
    .line 146
    .line 147
    move p2, v1

    .line 148
    :goto_3
    :try_start_4
    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 149
    .line 150
    array-length p4, p3

    .line 151
    if-ge p2, p4, :cond_7

    .line 152
    .line 153
    aget-char p3, p3, p2

    .line 154
    .line 155
    invoke-static {p3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    if-eqz p3, :cond_7

    .line 160
    .line 161
    add-int/lit8 p2, p2, 0x1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_7
    invoke-virtual {p1, p2}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    move p2, v1

    .line 169
    :goto_4
    throw p1
    :try_end_4
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 170
    :catch_2
    :goto_5
    new-instance p1, Lorg/mvel2/CompileException;

    .line 171
    .line 172
    const-string p3, "wrong syntax; did you mean to use \'foreach\'?"

    .line 173
    .line 174
    iget-object p4, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 175
    .line 176
    invoke-direct {p1, p3, p4, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 177
    .line 178
    .line 179
    throw p1
.end method

.method private static nextCondPart([CIIZ)I
    .locals 2

    .line 1
    :goto_0
    if-ge p1, p2, :cond_1

    .line 2
    .line 3
    aget-char v0, p0, p1

    .line 4
    .line 5
    const/16 v1, 0x3b

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-eqz p3, :cond_2

    .line 16
    .line 17
    return p1

    .line 18
    :cond_2
    new-instance p2, Lorg/mvel2/CompileException;

    .line 19
    .line 20
    const-string p3, "expected ;"

    .line 21
    .line 22
    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 23
    .line 24
    .line 25
    throw p2
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ForNode;->initializer:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    new-instance v1, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 4
    .line 5
    new-instance v2, Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p3, p0, Lorg/mvel2/ast/ForNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 18
    .line 19
    invoke-interface {p3, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    iget-object p3, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 32
    .line 33
    invoke-interface {p3, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-interface {v1}, Lorg/mvel2/integration/VariableResolverFactory;->tiltFlag()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    return-object p3

    .line 44
    :cond_0
    iget-object p3, p0, Lorg/mvel2/ast/ForNode;->after:Lorg/mvel2/compiler/ExecutableStatement;

    .line 45
    .line 46
    invoke-interface {p3, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ast/ForNode;->indexAlloc:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 7
    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 15
    .line 16
    .line 17
    move-object p3, v0

    .line 18
    :goto_0
    iget-object v0, p0, Lorg/mvel2/ast/ForNode;->initializer:Lorg/mvel2/compiler/ExecutableStatement;

    .line 19
    .line 20
    :goto_1
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/mvel2/ast/ForNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 24
    .line 25
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 38
    .line 39
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p3}, Lorg/mvel2/integration/VariableResolverFactory;->tiltFlag()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ast/ForNode;->after:Lorg/mvel2/compiler/ExecutableStatement;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method
