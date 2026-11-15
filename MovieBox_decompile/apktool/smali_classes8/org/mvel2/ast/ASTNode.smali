.class public Lorg/mvel2/ast/ASTNode;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ARRAY_TYPE_LITERAL:I = 0x4000000

.field public static final ASSIGN:I = 0x80

.field public static final BLOCK_DO:I = 0x10000

.field public static final BLOCK_DO_UNTIL:I = 0x20000

.field public static final BLOCK_FOR:I = 0x40000

.field public static final BLOCK_FOREACH:I = 0x1000

.field public static final BLOCK_IF:I = 0x800

.field public static final BLOCK_UNTIL:I = 0x4000

.field public static final BLOCK_WHILE:I = 0x8000

.field public static final BLOCK_WITH:I = 0x2000

.field public static final COLLECTION:I = 0x100

.field public static final COMPILE_IMMEDIATE:I = 0x10

.field public static final DEEP_PROPERTY:I = 0x2

.field public static final DEFERRED_TYPE_RES:I = 0x800000

.field public static final DEOP:I = 0x10000000

.field public static final DISCARD:I = 0x20000000

.field public static final FQCN:I = 0x100000

.field public static final IDENTIFIER:I = 0x8

.field public static final INLINE_COLLECTION:I = 0x400

.field public static final INVERT:I = 0x40

.field public static final LITERAL:I = 0x1

.field public static final NOJIT:I = 0x8000000

.field public static final NUMERIC:I = 0x20

.field public static final OPERATOR:I = 0x4

.field public static final OPT_SUBTR:I = 0x80000

.field public static final PCTX_STORED:I = 0x2000000

.field public static final STACKLANG:I = 0x400000

.field public static final STRONG_TYPING:I = 0x1000000

.field public static final THISREF:I = 0x200


# instance fields
.field protected volatile transient accessor:Lorg/mvel2/compiler/a;

.field protected cursorPosition:I

.field protected egressType:Ljava/lang/Class;

.field protected endOfName:I

.field protected expr:[C

.field public fields:I

.field protected firstUnion:I

.field protected literal:Ljava/lang/Object;

.field protected nameCache:Ljava/lang/String;

.field public nextASTNode:Lorg/mvel2/ast/ASTNode;

.field protected offset:I

.field protected pCtx:Lorg/mvel2/ParserContext;

.field protected volatile safeAccessor:Lorg/mvel2/compiler/a;

.field protected start:I


# direct methods
.method protected constructor <init>(Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 3
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 4
    invoke-direct {p0, p5}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 5
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 6
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 7
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 8
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 9
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/ASTNode;->setName([C)V

    return-void
.end method

.method private deop(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/RuntimeException;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/high16 v1, 0x10000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 p4, 0x0

    .line 9
    iput-object p4, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 10
    .line 11
    iget p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 12
    .line 13
    const/high16 v0, 0x18000000

    .line 14
    .line 15
    or-int/2addr p4, v0

    .line 16
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    monitor-exit p0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1

    .line 28
    :cond_0
    throw p4
.end method

.method private getAbsoluteFirstPart()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x100

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    .line 12
    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v0

    .line 17
    :cond_1
    :goto_0
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    and-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    .line 25
    .line 26
    return v0

    .line 27
    :cond_3
    const/4 v0, -0x1

    .line 28
    return v0
.end method

.method private optimize(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v11, p3

    .line 3
    .line 4
    iget v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 5
    .line 6
    const/high16 v2, 0x10000000

    .line 7
    .line 8
    and-int v3, v1, v2

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    xor-int/2addr v1, v2

    .line 13
    iput v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 14
    .line 15
    :cond_0
    iget v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 16
    .line 17
    const/high16 v2, 0x8000000

    .line 18
    .line 19
    and-int/2addr v1, v2

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    if-eqz v11, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v11, v1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {}, Lorg/mvel2/optimizers/b;->c()Lorg/mvel2/optimizers/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    move-object v12, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    sget-object v1, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :goto_2
    iget v1, v0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 49
    .line 50
    const/high16 v2, 0x2000000

    .line 51
    .line 52
    and-int/2addr v1, v2

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-object v1, v0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Lorg/mvel2/ParserContext;

    .line 58
    .line 59
    :goto_3
    move-object v13, v1

    .line 60
    goto :goto_4

    .line 61
    :cond_3
    new-instance v1, Lorg/mvel2/ParserContext;

    .line 62
    .line 63
    new-instance v2, Lorg/mvel2/ParserConfiguration;

    .line 64
    .line 65
    invoke-static/range {p3 .. p3}, Lorg/mvel2/util/e;->e(Lorg/mvel2/integration/VariableResolverFactory;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-direct {v2, v3, v4}, Lorg/mvel2/ParserConfiguration;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2}, Lorg/mvel2/ParserContext;-><init>(Lorg/mvel2/ParserConfiguration;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :goto_4
    :try_start_0
    invoke-virtual {v13}, Lorg/mvel2/ParserContext;->optimizationNotify()V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 81
    .line 82
    iget v4, v0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 83
    .line 84
    iget v5, v0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 85
    .line 86
    iget-object v10, v0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 87
    .line 88
    const/4 v9, 0x1

    .line 89
    move-object v1, v12

    .line 90
    move-object v2, v13

    .line 91
    move-object v6, p1

    .line 92
    move-object/from16 v7, p2

    .line 93
    .line 94
    move-object/from16 v8, p3

    .line 95
    .line 96
    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p0, v1}, Lorg/mvel2/ast/ASTNode;->setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;
    :try_end_0
    .catch Lorg/mvel2/optimizers/OptimizationNotSupported; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :catch_0
    sget-object v1, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    iget-object v3, v0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 111
    .line 112
    iget v4, v0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 113
    .line 114
    iget v5, v0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 115
    .line 116
    const/4 v9, 0x1

    .line 117
    const/4 v10, 0x0

    .line 118
    move-object v1, v12

    .line 119
    move-object v2, v13

    .line 120
    move-object v6, p1

    .line 121
    move-object/from16 v7, p2

    .line 122
    .line 123
    move-object/from16 v8, p3

    .line 124
    .line 125
    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p0, v1}, Lorg/mvel2/ast/ASTNode;->setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;

    .line 130
    .line 131
    .line 132
    :goto_5
    iget-object v1, v0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 133
    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    iget-object v1, v0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 137
    .line 138
    iget v2, v0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 139
    .line 140
    iget v3, v0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 141
    .line 142
    move-object v4, p1

    .line 143
    move-object/from16 v5, p3

    .line 144
    .line 145
    move-object/from16 v6, p2

    .line 146
    .line 147
    move-object v7, v13

    .line 148
    invoke-static/range {v1 .. v7}, Lorg/mvel2/g;->m([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    return-object v1

    .line 153
    :cond_4
    invoke-interface {v12}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v2, v0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 158
    .line 159
    if-nez v2, :cond_5

    .line 160
    .line 161
    invoke-interface {v12}, Lorg/mvel2/optimizers/a;->getEgressType()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iput-object v2, v0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 166
    .line 167
    :cond_5
    return-object v1
.end method


# virtual methods
.method public canSerializeAccessor()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->safeAccessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public discard()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/high16 v1, 0x20000000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 7
    .line 8
    return-void
.end method

.method public getAbsoluteName()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 10
    .line 11
    invoke-direct {p0}, Lorg/mvel2/ast/ASTNode;->getAbsoluteFirstPart()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget v4, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 16
    .line 17
    sub-int/2addr v3, v4

    .line 18
    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method protected getAbsoluteRootElement()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x102

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 10
    .line 11
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/mvel2/ast/ASTNode;->getAbsoluteFirstPart()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method

.method public getAccessor()Lorg/mvel2/compiler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    return-object v0
.end method

.method public getCursorPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->cursorPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpr()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public getFields()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    return v0
.end method

.method public getLiteralValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v1, Ljava/lang/String;

    .line 11
    .line 12
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 13
    .line 14
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getNameAsArray()[C
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
    add-int/2addr v2, v1

    .line 8
    invoke-static {v0, v1, v2}, Lorg/mvel2/util/m;->F0([CII)[C

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 2
    .line 3
    return v0
.end method

.method public getOperator()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 11
    .line 12
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 13
    .line 14
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 15
    .line 16
    iget-object v6, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 17
    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p3

    .line 20
    move-object v5, p2

    .line 21
    invoke-static/range {v0 .. v6}, Lorg/mvel2/g;->m([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;Lorg/mvel2/ParserContext;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mvel2/ast/ASTNode;->deop(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/RuntimeException;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->optimize(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public getStart()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 2
    .line 3
    return v0
.end method

.method public isAssignment()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method protected isCollection()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isDebuggingSymbol()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public isDeepProperty()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isDiscard()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/high16 v1, 0x20000000

    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isFQCN()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public isIdentifier()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isLiteral()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public isOperator()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOperator(Ljava/lang/Integer;)Z
    .locals 1

    .line 2
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isThisVal()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->accessor:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    return-object p1
.end method

.method public setAsFQCNReference()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 7
    .line 8
    return-void
.end method

.method public setAsLiteral()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 6
    .line 7
    return-void
.end method

.method public setCursorPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/ast/ASTNode;->cursorPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public setEgressType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public setLiteralValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 8
    .line 9
    return-void
.end method

.method protected setName([C)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lorg/mvel2/util/m;->i0([CII)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 12
    .line 13
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lorg/mvel2/util/m;->X([CII)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 26
    .line 27
    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 28
    .line 29
    or-int/lit8 p1, p1, 0x29

    .line 30
    .line 31
    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 32
    .line 33
    and-int/lit8 p1, p1, 0x40

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    not-int p1, p1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    new-instance p1, Lorg/mvel2/CompileException;

    .line 54
    .line 55
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 56
    .line 57
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 58
    .line 59
    const-string v2, "bitwise (~) operator can only be applied to integers"

    .line 60
    .line 61
    invoke-direct {p1, v2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 67
    .line 68
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 69
    .line 70
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 71
    .line 72
    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 76
    .line 77
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 78
    .line 79
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 80
    .line 81
    add-int/2addr v1, v0

    .line 82
    :goto_1
    if-ge v0, v1, :cond_6

    .line 83
    .line 84
    aget-char v2, p1, v0

    .line 85
    .line 86
    const/16 v3, 0x28

    .line 87
    .line 88
    if-eq v2, v3, :cond_3

    .line 89
    .line 90
    const/16 v3, 0x2e

    .line 91
    .line 92
    if-eq v2, v3, :cond_2

    .line 93
    .line 94
    const/16 v3, 0x5b

    .line 95
    .line 96
    if-eq v2, v3, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    .line 100
    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    .line 107
    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    .line 111
    .line 112
    :cond_4
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    .line 113
    .line 114
    if-nez v2, :cond_5

    .line 115
    .line 116
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->endOfName:I

    .line 117
    .line 118
    array-length v1, p1

    .line 119
    if-ge v0, v1, :cond_6

    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    aget-char p1, p1, v0

    .line 124
    .line 125
    const/16 v0, 0x5d

    .line 126
    .line 127
    if-ne p1, v0, :cond_6

    .line 128
    .line 129
    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 130
    .line 131
    const/high16 v0, 0x4000000

    .line 132
    .line 133
    or-int/2addr p1, v0

    .line 134
    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    :goto_3
    iget p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 141
    .line 142
    and-int/lit16 v0, p1, 0x400

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    return-void

    .line 147
    :cond_7
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->firstUnion:I

    .line 148
    .line 149
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 150
    .line 151
    if-le v0, v1, :cond_8

    .line 152
    .line 153
    or-int/lit8 p1, p1, 0xa

    .line 154
    .line 155
    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_8
    or-int/lit8 p1, p1, 0x8

    .line 159
    .line 160
    iput p1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 161
    .line 162
    :goto_4
    return-void
.end method

.method public storeInLiteralRegister(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public storePctx()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/high16 v1, 0x2000000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 7
    .line 8
    return-void
.end method

.method public strongTyping()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 2
    .line 3
    const/high16 v1, 0x1000000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "<<"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Lxz/a;->a(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ">>"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/high16 v0, 0x2000000

    .line 43
    .line 44
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 45
    .line 46
    and-int/2addr v0, v1

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 55
    .line 56
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 57
    .line 58
    iget v3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 59
    .line 60
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-object v0
.end method
