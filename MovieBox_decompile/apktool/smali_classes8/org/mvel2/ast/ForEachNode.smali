.class public Lorg/mvel2/ast/ForEachNode;
.super Lorg/mvel2/ast/BlockNode;
.source "source.java"


# static fields
.field private static final ARRAY:I = 0x1

.field private static final CHARSEQUENCE:I = 0x2

.field private static final INTEGER:I = 0x3

.field private static final ITERABLE:I


# instance fields
.field protected condition:Lorg/mvel2/compiler/ExecutableStatement;

.field protected item:Ljava/lang/String;

.field protected itemType:Ljava/lang/Class;

.field private type:I


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 6

    .line 1
    invoke-direct {p0, p7}, Lorg/mvel2/ast/BlockNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/mvel2/ast/ForEachNode;->type:I

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
    iput p6, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move v4, p6

    .line 20
    move-object v5, p7

    .line 21
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/ast/ForEachNode;->handleCond([CIIILorg/mvel2/ParserContext;)V

    .line 22
    .line 23
    .line 24
    iput p4, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 25
    .line 26
    iput p5, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 27
    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->createSubcontext()Lorg/mvel2/ParserContext;

    .line 43
    .line 44
    .line 45
    move-result-object p7

    .line 46
    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p3, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    .line 49
    .line 50
    invoke-virtual {p7, p2, p3}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->pushVariableScope()V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p7, p2}, Lorg/mvel2/ParserContext;->makeVisible(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p4, p5, p7}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 66
    .line 67
    iput-object p1, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 68
    .line 69
    invoke-virtual {p7}, Lorg/mvel2/ParserContext;->popVariableScope()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method private determineIterType(Ljava/lang/Class;)V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-class v0, Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    iput p1, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const-class v0, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    iput p1, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_3
    new-instance v0, Lorg/mvel2/CompileException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "non-iterable type: "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 71
    .line 72
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 73
    .line 74
    invoke-direct {v0, p1, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method private enforceTypeSafety(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p2, p1}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lorg/mvel2/CompileException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "type mismatch in foreach: expected: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "; but found: "

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 50
    .line 51
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 52
    .line 53
    invoke-direct {v0, p1, p2, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method private handleCond([CIIILorg/mvel2/ParserContext;)V
    .locals 6

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    move v1, p2

    .line 4
    :goto_0
    const/16 v2, 0x3a

    .line 5
    .line 6
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    aget-char v3, p1, v1

    .line 9
    .line 10
    if-eq v3, v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eq v1, v0, :cond_4

    .line 16
    .line 17
    aget-char v0, p1, v1

    .line 18
    .line 19
    if-ne v0, v2, :cond_4

    .line 20
    .line 21
    sub-int v0, v1, p2

    .line 22
    .line 23
    invoke-static {p1, p2, v0}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

    .line 28
    .line 29
    const/16 v3, 0x20

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, -0x1

    .line 36
    if-eq v2, v3, :cond_1

    .line 37
    .line 38
    new-instance v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v3, p1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x0

    .line 48
    :try_start_0
    invoke-static {v4, v3, p5}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iput-object v4, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    .line 53
    .line 54
    new-instance v4, Ljava/lang/String;

    .line 55
    .line 56
    add-int v5, p2, v2

    .line 57
    .line 58
    sub-int v2, v0, v2

    .line 59
    .line 60
    invoke-direct {v4, p1, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iput-object v2, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    new-instance p3, Lorg/mvel2/CompileException;

    .line 71
    .line 72
    new-instance p4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string p5, "cannot resolve identifier: "

    .line 78
    .line 79
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-direct {p3, p4, p1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 90
    .line 91
    .line 92
    throw p3

    .line 93
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    iput v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 96
    .line 97
    sub-int/2addr p3, v0

    .line 98
    add-int/lit8 p3, p3, -0x1

    .line 99
    .line 100
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 101
    .line 102
    and-int/lit8 p1, p4, 0x10

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 107
    .line 108
    invoke-static {p1, v1, p3, p5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 113
    .line 114
    iput-object p1, p0, Lorg/mvel2/ast/ForEachNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 115
    .line 116
    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    .line 121
    .line 122
    if-eqz p2, :cond_2

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_2

    .line 129
    .line 130
    iget-object p1, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    .line 131
    .line 132
    iget-object p2, p0, Lorg/mvel2/ast/ForEachNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 133
    .line 134
    invoke-interface {p2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-static {p2}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-direct {p0, p1, p2}, Lorg/mvel2/ast/ForEachNode;->enforceTypeSafety(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {p5}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_3

    .line 151
    .line 152
    invoke-direct {p0, p1}, Lorg/mvel2/ast/ForEachNode;->determineIterType(Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_2
    return-void

    .line 156
    :cond_4
    new-instance p2, Lorg/mvel2/CompileException;

    .line 157
    .line 158
    const-string p3, "expected : in foreach"

    .line 159
    .line 160
    invoke-direct {p2, p3, p1, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 161
    .line 162
    .line 163
    throw p2
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 19
    .line 20
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 21
    .line 22
    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 23
    .line 24
    invoke-static {v2, v3, v4, p2, p3}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iget-object v2, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lorg/mvel2/ast/ForEachNode;->itemType:Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Lorg/mvel2/util/m;->I(Ljava/lang/Class;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-direct {p0, v2, v3}, Lorg/mvel2/ast/ForEachNode;->enforceTypeSafety(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 52
    .line 53
    iget v3, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 54
    .line 55
    iget v4, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 56
    .line 57
    iget-object v5, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 58
    .line 59
    invoke-static {v2, v3, v4, v5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 64
    .line 65
    iput-object v2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 66
    .line 67
    instance-of v2, p3, Ljava/lang/Iterable;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    check-cast p3, Ljava/lang/Iterable;

    .line 72
    .line 73
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_8

    .line 82
    .line 83
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 91
    .line 92
    invoke-interface {v2, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    return-object v2

    .line 103
    :cond_2
    const/4 v2, 0x0

    .line 104
    if-eqz p3, :cond_4

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    :goto_0
    if-ge v2, v3, :cond_8

    .line 121
    .line 122
    invoke-static {p3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v0, v4}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 130
    .line 131
    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_3

    .line 140
    .line 141
    return-object v4

    .line 142
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    instance-of v3, p3, Ljava/lang/CharSequence;

    .line 146
    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    array-length v3, p3

    .line 158
    :goto_1
    if-ge v2, v3, :cond_8

    .line 159
    .line 160
    aget-char v4, p3, v2

    .line 161
    .line 162
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v0, v4}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v4, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 170
    .line 171
    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_5

    .line 180
    .line 181
    return-object v4

    .line 182
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    instance-of v2, p3, Ljava/lang/Integer;

    .line 186
    .line 187
    if-eqz v2, :cond_9

    .line 188
    .line 189
    check-cast p3, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    const/4 v2, 0x1

    .line 196
    add-int/2addr p3, v2

    .line 197
    :goto_2
    if-eq v2, p3, :cond_8

    .line 198
    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v0, v3}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    iget-object v3, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 207
    .line 208
    invoke-interface {v3, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_7

    .line 217
    .line 218
    return-object v3

    .line 219
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_8
    const/4 p1, 0x0

    .line 223
    return-object p1

    .line 224
    :cond_9
    new-instance p1, Lorg/mvel2/CompileException;

    .line 225
    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v0, "non-iterable type: "

    .line 232
    .line 233
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    if-eqz p3, :cond_a

    .line 237
    .line 238
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p3

    .line 246
    goto :goto_3

    .line 247
    :cond_a
    const-string p3, "null"

    .line 248
    .line 249
    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 257
    .line 258
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 259
    .line 260
    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 261
    .line 262
    .line 263
    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/ForEachNode;->item:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/mvel2/ast/ForEachNode;->condition:Lorg/mvel2/compiler/ExecutableStatement;

    .line 19
    .line 20
    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    iget v2, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {p0, v2}, Lorg/mvel2/ast/ForEachNode;->determineIterType(Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget v2, p0, Lorg/mvel2/ast/ForEachNode;->type:I

    .line 37
    .line 38
    if-eqz v2, :cond_7

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x1

    .line 42
    if-eq v2, v4, :cond_5

    .line 43
    .line 44
    const/4 v5, 0x2

    .line 45
    if-eq v2, v5, :cond_3

    .line 46
    .line 47
    const/4 v3, 0x3

    .line 48
    if-eq v2, v3, :cond_1

    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    add-int/2addr p3, v4

    .line 59
    :goto_0
    if-eq v4, p3, :cond_9

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 69
    .line 70
    invoke-interface {v2, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    array-length v2, p3

    .line 93
    :goto_1
    if-ge v3, v2, :cond_9

    .line 94
    .line 95
    aget-char v4, p3, v3

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v0, v4}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v4, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 105
    .line 106
    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_4

    .line 115
    .line 116
    return-object v4

    .line 117
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    :goto_2
    if-ge v3, v2, :cond_9

    .line 125
    .line 126
    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v0, v4}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v4, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 134
    .line 135
    invoke-interface {v4, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_6

    .line 144
    .line 145
    return-object v4

    .line 146
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    check-cast p3, Ljava/lang/Iterable;

    .line 150
    .line 151
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v2}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lorg/mvel2/ast/BlockNode;->compiledBlock:Lorg/mvel2/compiler/ExecutableStatement;

    .line 169
    .line 170
    invoke-interface {v2, p1, p2, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v1}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->tiltFlag()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_8

    .line 179
    .line 180
    return-object v2

    .line 181
    :cond_9
    :goto_3
    const/4 p1, 0x0

    .line 182
    return-object p1
.end method
