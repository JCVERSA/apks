.class public Lorg/mvel2/ast/AssignmentNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"

# interfaces
.implements Lorg/mvel2/ast/a;


# instance fields
.field private transient accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

.field private assignmentVar:Ljava/lang/String;

.field private col:Z

.field private index:Ljava/lang/String;

.field private indexTarget:[C

.field private statement:Lorg/mvel2/compiler/ExecutableStatement;

.field private varName:Ljava/lang/String;


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 5

    .line 1
    invoke-direct {p0, p5}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/ast/AssignmentNode;->col:Z

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
    const/16 v1, 0x3d

    .line 14
    .line 15
    invoke-static {p1, p2, p3, v1}, Lorg/mvel2/util/m;->B([CIIC)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_5

    .line 21
    .line 22
    sub-int v2, v1, p2

    .line 23
    .line 24
    invoke-static {p1, p2, v2}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v2, p0, Lorg/mvel2/ast/AssignmentNode;->assignmentVar:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    add-int/2addr v1, v2

    .line 34
    invoke-static {p1, v1}, Lorg/mvel2/util/m;->E0([CI)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 39
    .line 40
    add-int v4, p2, p3

    .line 41
    .line 42
    if-ge v3, v4, :cond_4

    .line 43
    .line 44
    sub-int v1, v3, p2

    .line 45
    .line 46
    sub-int/2addr p3, v1

    .line 47
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 48
    .line 49
    and-int/lit8 v1, p4, 0x10

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-static {p1, v3, p3, p5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    check-cast p3, Lorg/mvel2/compiler/ExecutableStatement;

    .line 58
    .line 59
    iput-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 60
    .line 61
    invoke-interface {p3}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    iput-object p3, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 66
    .line 67
    :cond_0
    iget-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    iget-object v1, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Lorg/mvel2/ast/AssignmentNode;->indexTarget:[C

    .line 80
    .line 81
    const/16 v3, 0x5b

    .line 82
    .line 83
    invoke-static {v3, v0, p3, v1}, Lorg/mvel2/util/b;->a(CII[C)I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    .line 88
    .line 89
    if-lez p3, :cond_1

    .line 90
    .line 91
    move v0, v2

    .line 92
    :cond_1
    iput-boolean v0, p0, Lorg/mvel2/ast/AssignmentNode;->col:Z

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget p3, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 97
    .line 98
    or-int/lit16 p3, p3, 0x100

    .line 99
    .line 100
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 101
    .line 102
    and-int/lit8 p3, p3, 0x10

    .line 103
    .line 104
    if-eqz p3, :cond_2

    .line 105
    .line 106
    iget-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->indexTarget:[C

    .line 107
    .line 108
    invoke-static {p3, p5}, Lorg/mvel2/d;->k([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    check-cast p3, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 113
    .line 114
    iput-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 115
    .line 116
    :cond_2
    new-instance p3, Ljava/lang/String;

    .line 117
    .line 118
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    .line 119
    .line 120
    invoke-direct {p3, p1, p2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 121
    .line 122
    .line 123
    iput-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 124
    .line 125
    new-instance p3, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->indexTarget:[C

    .line 128
    .line 129
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    .line 130
    .line 131
    array-length v2, v0

    .line 132
    sub-int/2addr v2, v1

    .line 133
    invoke-direct {p3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 134
    .line 135
    .line 136
    iput-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->index:Ljava/lang/String;

    .line 137
    .line 138
    :cond_3
    :try_start_0
    iget-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p3}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception p3

    .line 145
    new-instance p4, Lorg/mvel2/CompileException;

    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-direct {p4, p3, p1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 152
    .line 153
    .line 154
    throw p4

    .line 155
    :cond_4
    new-instance p2, Lorg/mvel2/CompileException;

    .line 156
    .line 157
    const-string p3, "unexpected end of statement"

    .line 158
    .line 159
    invoke-direct {p2, p3, p1, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 160
    .line 161
    .line 162
    throw p2

    .line 163
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/String;

    .line 164
    .line 165
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v0}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 174
    .line 175
    iput-object p3, p0, Lorg/mvel2/ast/AssignmentNode;->assignmentVar:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .line 177
    :goto_0
    and-int/lit8 p1, p4, 0x10

    .line 178
    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    iget-object p1, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 182
    .line 183
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 184
    .line 185
    invoke-virtual {p5, p1, p2}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;)V

    .line 186
    .line 187
    .line 188
    :cond_6
    return-void

    .line 189
    :catch_1
    move-exception p3

    .line 190
    new-instance p4, Lorg/mvel2/CompileException;

    .line 191
    .line 192
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-direct {p4, p3, p1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 197
    .line 198
    .line 199
    throw p4
.end method


# virtual methods
.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->assignmentVar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpression()[C
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 4
    .line 5
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lorg/mvel2/util/m;->K0([CII)[C

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p2, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lorg/mvel2/MVELInterpretedRuntime;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 9
    .line 10
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 11
    .line 12
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 13
    .line 14
    iget-object v6, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 15
    .line 16
    move-object v0, p2

    .line 17
    move-object v4, p1

    .line 18
    move-object v5, p3

    .line 19
    invoke-direct/range {v0 .. v6}, Lorg/mvel2/MVELInterpretedRuntime;-><init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lorg/mvel2/ast/AssignmentNode;->col:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->index:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p2}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 43
    .line 44
    invoke-static {p1, p3, v0, p2, v1}, Lorg/mvel2/g;->A(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 45
    .line 46
    .line 47
    return-object p2

    .line 48
    :cond_0
    iget-object p1, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {p3, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->indexTarget:[C

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lorg/mvel2/d;->h([C)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lorg/mvel2/ast/AssignmentNode;->col:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->accExpr:Lorg/mvel2/compiler/CompiledAccExpression;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/mvel2/ast/AssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 24
    .line 25
    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mvel2/compiler/CompiledAccExpression;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_1
    iget-object v0, p0, Lorg/mvel2/ast/AssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 35
    .line 36
    const-string v1, "cannot assign variables; no variable resolver factory available"

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p3, v1, p1}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_2
    new-instance p1, Lorg/mvel2/CompileException;

    .line 58
    .line 59
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 60
    .line 61
    iget p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 62
    .line 63
    invoke-direct {p1, v1, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    if-eqz p3, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lorg/mvel2/ast/AssignmentNode;->varName:Ljava/lang/String;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    invoke-interface {p3, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 73
    .line 74
    .line 75
    return-object p2

    .line 76
    :cond_4
    new-instance p1, Lorg/mvel2/CompileException;

    .line 77
    .line 78
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 79
    .line 80
    iget p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 81
    .line 82
    invoke-direct {p1, v1, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public isNewDeclaration()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/AssignmentNode;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/mvel2/ast/AssignmentNode;->assignmentVar:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 19
    .line 20
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 21
    .line 22
    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 23
    .line 24
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
