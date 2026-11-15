.class public Lorg/mvel2/compiler/ExpressionCompiler;
.super Lorg/mvel2/compiler/AbstractParser;
.source "source.java"


# instance fields
.field private returnType:Ljava/lang/Class;

.field private secondPassOptimization:Z

.field private verifyOnly:Z

.field private verifying:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 4
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 5
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/mvel2/ParserContext;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 35
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 37
    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p3, p2

    .line 38
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 39
    invoke-virtual {p0, p3}, Lorg/mvel2/compiler/AbstractParser;->trimLeft(I)I

    move-result p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p1, p2

    .line 40
    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 41
    iput-object p4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 20
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 21
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 9
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 10
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    .line 11
    iput-boolean p2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 15
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 16
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression([C)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 26
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 27
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 28
    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p3, p2

    .line 29
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 30
    invoke-virtual {p0, p3}, Lorg/mvel2/compiler/AbstractParser;->trimLeft(I)I

    move-result p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p1, p2

    .line 31
    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    return-void
.end method

.method public constructor <init>([CIILorg/mvel2/ParserContext;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 45
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 46
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 47
    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p3, p2

    .line 48
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 49
    invoke-virtual {p0, p3}, Lorg/mvel2/compiler/AbstractParser;->trimLeft(I)I

    move-result p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p1, p2

    .line 50
    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 51
    iput-object p4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method public constructor <init>([CLorg/mvel2/ParserContext;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 55
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 56
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression([C)V

    .line 57
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    return-void
.end method

.method private compileReduce(ILorg/mvel2/util/ASTLinkedList;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->arithmeticFunctionReduction(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x3

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, -0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/mvel2/util/g;->w()V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lorg/mvel2/ast/LiteralNode;

    .line 23
    .line 24
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 31
    .line 32
    invoke-direct {p1, v0, v2}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->splitAccumulator:Lorg/mvel2/util/g;

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lorg/mvel2/ast/OperatorNode;

    .line 45
    .line 46
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 47
    .line 48
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->splitAccumulator:Lorg/mvel2/util/g;

    .line 49
    .line 50
    invoke-virtual {v2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lorg/mvel2/ast/ASTNode;

    .line 55
    .line 56
    invoke-virtual {p0, v0, v2}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p2, p1, v0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 61
    .line 62
    .line 63
    return v1

    .line 64
    :cond_1
    new-instance p1, Lorg/mvel2/ast/LiteralNode;

    .line 65
    .line 66
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 73
    .line 74
    invoke-direct {p1, v0, v2}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lorg/mvel2/ast/OperatorNode;

    .line 78
    .line 79
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Ljava/lang/Integer;

    .line 86
    .line 87
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 88
    .line 89
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 90
    .line 91
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 92
    .line 93
    invoke-direct {v0, v2, v3, v4, v5}, Lorg/mvel2/ast/OperatorNode;-><init>(Ljava/lang/Integer;[CILorg/mvel2/ParserContext;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lorg/mvel2/ast/LiteralNode;

    .line 97
    .line 98
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 99
    .line 100
    invoke-virtual {v3}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 105
    .line 106
    invoke-direct {v2, v3, v4}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v2, v0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->splitAccumulator:Lorg/mvel2/util/g;

    .line 113
    .line 114
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lorg/mvel2/ast/OperatorNode;

    .line 119
    .line 120
    invoke-virtual {p2, p1, v0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 124
    .line 125
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->splitAccumulator:Lorg/mvel2/util/g;

    .line 126
    .line 127
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lorg/mvel2/ast/ASTNode;

    .line 132
    .line 133
    invoke-virtual {p0, p1, v0}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p2, p1}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 138
    .line 139
    .line 140
    return v1

    .line 141
    :cond_2
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 142
    .line 143
    invoke-virtual {p1}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lorg/mvel2/ast/ASTNode;

    .line 148
    .line 149
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 150
    .line 151
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Ljava/lang/Integer;

    .line 156
    .line 157
    new-instance v2, Lorg/mvel2/ast/LiteralNode;

    .line 158
    .line 159
    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 164
    .line 165
    invoke-direct {v2, v3, v4}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 169
    .line 170
    .line 171
    new-instance v2, Lorg/mvel2/ast/OperatorNode;

    .line 172
    .line 173
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 174
    .line 175
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 176
    .line 177
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 178
    .line 179
    invoke-direct {v2, v0, v3, v4, v5}, Lorg/mvel2/ast/OperatorNode;-><init>(Ljava/lang/Integer;[CILorg/mvel2/ParserContext;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 183
    .line 184
    invoke-virtual {p0, v0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p2, v2, p1}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 189
    .line 190
    .line 191
    return v1
.end method

.method private getStackValueResult()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lorg/mvel2/util/e;->l(Ljava/lang/Object;)Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    return-object v0
.end method

.method private static isBooleanOperator(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x16

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x1d

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x1e

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method


# virtual methods
.method public _compile()Lorg/mvel2/compiler/CompiledExpression;
    .locals 15

    .line 1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 2
    .line 3
    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 4
    .line 5
    new-instance v0, Lorg/mvel2/util/ASTLinkedList;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/mvel2/util/ASTLinkedList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lorg/mvel2/util/g;

    .line 11
    .line 12
    invoke-direct {v1}, Lorg/mvel2/util/g;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 16
    .line 17
    new-instance v1, Lorg/mvel2/util/g;

    .line 18
    .line 19
    invoke-direct {v1}, Lorg/mvel2/util/g;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->dStack:Lorg/mvel2/util/g;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lorg/mvel2/compiler/AbstractParser;->compileMode:Z

    .line 26
    .line 27
    :try_start_0
    iget-boolean v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 32
    .line 33
    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->initializeTables()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :catch_1
    move-exception v0

    .line 44
    goto/16 :goto_9

    .line 45
    .line 46
    :cond_0
    :goto_0
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 47
    .line 48
    or-int/lit8 v2, v2, 0x10

    .line 49
    .line 50
    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 51
    .line 52
    const/4 v2, -0x1

    .line 53
    move v3, v2

    .line 54
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x0

    .line 59
    if-eqz v4, :cond_17

    .line 60
    .line 61
    iget v6, v4, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 62
    .line 63
    if-ne v6, v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iput-object v6, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 74
    .line 75
    instance-of v6, v4, Lorg/mvel2/ast/Substatement;

    .line 76
    .line 77
    if-eqz v6, :cond_4

    .line 78
    .line 79
    new-instance v6, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 82
    .line 83
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 92
    .line 93
    .line 94
    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 95
    .line 96
    invoke-virtual {v7}, Lorg/mvel2/ParserContext;->getCompiledExpressionCache()Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 101
    .line 102
    invoke-virtual {v8}, Lorg/mvel2/ParserContext;->getReturnTypeCache()Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    check-cast v9, Lorg/mvel2/compiler/CompiledExpression;

    .line 111
    .line 112
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    check-cast v10, Ljava/lang/Class;

    .line 117
    .line 118
    if-nez v9, :cond_3

    .line 119
    .line 120
    new-instance v9, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 121
    .line 122
    iget-object v10, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 123
    .line 124
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    iget-object v13, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 133
    .line 134
    invoke-direct {v9, v10, v11, v12, v13}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CIILorg/mvel2/ParserContext;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v9}, Lorg/mvel2/compiler/ExpressionCompiler;->getReturnType()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-interface {v7, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-object v14, v10

    .line 152
    move-object v10, v9

    .line 153
    move-object v9, v14

    .line 154
    :cond_3
    invoke-virtual {v4, v9}, Lorg/mvel2/ast/ASTNode;->setAccessor(Lorg/mvel2/compiler/a;)Lorg/mvel2/compiler/a;

    .line 155
    .line 156
    .line 157
    iput-object v10, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 158
    .line 159
    :cond_4
    iget-boolean v6, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    .line 160
    .line 161
    if-nez v6, :cond_15

    .line 162
    .line 163
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_15

    .line 168
    .line 169
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    .line 170
    .line 171
    if-ne v6, v2, :cond_5

    .line 172
    .line 173
    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    .line 174
    .line 175
    :cond_5
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextTokenSkipSymbols()Lorg/mvel2/ast/ASTNode;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-eqz v6, :cond_12

    .line 180
    .line 181
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eqz v7, :cond_12

    .line 186
    .line 187
    const/16 v7, 0x1d

    .line 188
    .line 189
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v6, v7}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-nez v7, :cond_12

    .line 198
    .line 199
    const/16 v7, 0x1e

    .line 200
    .line 201
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual {v6, v7}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-nez v7, :cond_12

    .line 210
    .line 211
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextTokenSkipSymbols()Lorg/mvel2/ast/ASTNode;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    if-eqz v7, :cond_11

    .line 216
    .line 217
    invoke-virtual {v7}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-eqz v8, :cond_11

    .line 222
    .line 223
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    const/16 v9, 0x22

    .line 232
    .line 233
    if-ge v8, v9, :cond_11

    .line 234
    .line 235
    if-eq v3, v2, :cond_6

    .line 236
    .line 237
    sget-object v8, Lorg/mvel2/f;->a:[I

    .line 238
    .line 239
    array-length v9, v8

    .line 240
    if-ge v3, v9, :cond_11

    .line 241
    .line 242
    aget v9, v8, v3

    .line 243
    .line 244
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    aget v8, v8, v10

    .line 253
    .line 254
    if-ge v9, v8, :cond_11

    .line 255
    .line 256
    :cond_6
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 257
    .line 258
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v7}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    invoke-virtual {v8, v4, v7, v6}, Lorg/mvel2/util/g;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v9}, Lorg/mvel2/compiler/AbstractParser;->isArithmeticOperator(I)Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-eqz v4, :cond_7

    .line 282
    .line 283
    invoke-direct {p0, v9, v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compileReduce(ILorg/mvel2/util/ASTLinkedList;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-nez v4, :cond_8

    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :cond_7
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->reduce()V

    .line 292
    .line 293
    .line 294
    :cond_8
    move v4, v1

    .line 295
    :goto_2
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextTokenSkipSymbols()Lorg/mvel2/ast/ASTNode;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    if-eqz v6, :cond_10

    .line 300
    .line 301
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    invoke-static {v7}, Lorg/mvel2/compiler/ExpressionCompiler;->isBooleanOperator(I)Z

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    if-eqz v7, :cond_9

    .line 314
    .line 315
    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    .line 316
    .line 317
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 318
    .line 319
    invoke-virtual {v5}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 324
    .line 325
    invoke-direct {v4, v5, v7}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 326
    .line 327
    .line 328
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 329
    .line 330
    invoke-virtual {p0, v5, v6}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-virtual {v0, v4, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_3

    .line 338
    .line 339
    :cond_9
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextTokenSkipSymbols()Lorg/mvel2/ast/ASTNode;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    if-eqz v7, :cond_e

    .line 344
    .line 345
    invoke-virtual {v7}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-eqz v4, :cond_c

    .line 350
    .line 351
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 352
    .line 353
    invoke-virtual {v7}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    invoke-virtual {v4, v7, v6}, Lorg/mvel2/util/g;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v8}, Lorg/mvel2/compiler/AbstractParser;->isArithmeticOperator(I)Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-eqz v4, :cond_a

    .line 373
    .line 374
    invoke-direct {p0, v8, v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compileReduce(ILorg/mvel2/util/ASTLinkedList;)Z

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-nez v4, :cond_b

    .line 379
    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :cond_a
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->reduce()V

    .line 383
    .line 384
    .line 385
    :cond_b
    iput v5, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    .line 386
    .line 387
    move v4, v5

    .line 388
    goto :goto_2

    .line 389
    :cond_c
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 390
    .line 391
    invoke-virtual {v4}, Lorg/mvel2/util/g;->g()Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-nez v4, :cond_d

    .line 396
    .line 397
    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    .line 398
    .line 399
    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 404
    .line 405
    invoke-direct {v4, v5, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 409
    .line 410
    .line 411
    :cond_d
    new-instance v4, Lorg/mvel2/ast/OperatorNode;

    .line 412
    .line 413
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 418
    .line 419
    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 420
    .line 421
    iget-object v9, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 422
    .line 423
    invoke-direct {v4, v5, v6, v8, v9}, Lorg/mvel2/ast/OperatorNode;-><init>(Ljava/lang/Integer;[CILorg/mvel2/ParserContext;)V

    .line 424
    .line 425
    .line 426
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 427
    .line 428
    invoke-virtual {p0, v5, v7}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    invoke-virtual {v0, v4, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 433
    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_e
    if-eqz v4, :cond_f

    .line 437
    .line 438
    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    .line 439
    .line 440
    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 445
    .line 446
    invoke-direct {v4, v5, v6}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 450
    .line 451
    .line 452
    goto :goto_3

    .line 453
    :cond_f
    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    .line 454
    .line 455
    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 460
    .line 461
    invoke-direct {v4, v5, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v4, v6}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 465
    .line 466
    .line 467
    if-eqz v7, :cond_10

    .line 468
    .line 469
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 470
    .line 471
    invoke-virtual {p0, v4, v7}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 476
    .line 477
    .line 478
    :cond_10
    :goto_3
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 479
    .line 480
    invoke-virtual {v4}, Lorg/mvel2/util/g;->g()Z

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-nez v4, :cond_1

    .line 485
    .line 486
    new-instance v4, Lorg/mvel2/ast/LiteralNode;

    .line 487
    .line 488
    invoke-direct {p0}, Lorg/mvel2/compiler/ExpressionCompiler;->getStackValueResult()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 493
    .line 494
    invoke-direct {v4, v5, v6}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_1

    .line 501
    .line 502
    :cond_11
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 503
    .line 504
    invoke-virtual {p0, v5, v4}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 509
    .line 510
    invoke-virtual {p0, v5, v6}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-virtual {v0, v4, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 515
    .line 516
    .line 517
    if-eqz v7, :cond_1

    .line 518
    .line 519
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 520
    .line 521
    invoke-virtual {p0, v4, v7}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_1

    .line 529
    .line 530
    :cond_12
    if-eqz v6, :cond_14

    .line 531
    .line 532
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 533
    .line 534
    .line 535
    move-result v7

    .line 536
    if-nez v7, :cond_14

    .line 537
    .line 538
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    instance-of v7, v7, Ljava/lang/Class;

    .line 543
    .line 544
    if-eqz v7, :cond_13

    .line 545
    .line 546
    goto :goto_4

    .line 547
    :cond_13
    new-instance v0, Lorg/mvel2/CompileException;

    .line 548
    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .line 553
    .line 554
    const-string v2, "unexpected token: "

    .line 555
    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 571
    .line 572
    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    invoke-direct {v0, v1, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :cond_14
    :goto_4
    iput v5, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    .line 581
    .line 582
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 583
    .line 584
    invoke-virtual {p0, v5, v4}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 589
    .line 590
    .line 591
    if-eqz v6, :cond_1

    .line 592
    .line 593
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 594
    .line 595
    invoke-virtual {p0, v4, v6}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_1

    .line 603
    .line 604
    :cond_15
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 605
    .line 606
    .line 607
    move-result v6

    .line 608
    if-eqz v6, :cond_16

    .line 609
    .line 610
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    goto :goto_5

    .line 619
    :cond_16
    iput v5, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    .line 620
    .line 621
    :goto_5
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 622
    .line 623
    invoke-virtual {p0, v5, v4}, Lorg/mvel2/compiler/ExpressionCompiler;->verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    invoke-virtual {v0, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_1

    .line 631
    .line 632
    :cond_17
    invoke-virtual {v0}, Lorg/mvel2/util/ASTLinkedList;->finish()V

    .line 633
    .line 634
    .line 635
    iget-boolean v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 636
    .line 637
    if-eqz v2, :cond_18

    .line 638
    .line 639
    iget-boolean v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    .line 640
    .line 641
    if-nez v2, :cond_18

    .line 642
    .line 643
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 644
    .line 645
    invoke-virtual {v2}, Lorg/mvel2/ParserContext;->processTables()V

    .line 646
    .line 647
    .line 648
    :cond_18
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 649
    .line 650
    invoke-virtual {v2}, Lorg/mvel2/util/g;->g()Z

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    if-eqz v2, :cond_1b

    .line 655
    .line 656
    iget-boolean v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    .line 658
    if-nez v2, :cond_1a

    .line 659
    .line 660
    :try_start_1
    new-instance v2, Lorg/mvel2/compiler/CompiledExpression;

    .line 661
    .line 662
    iget-boolean v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 663
    .line 664
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 665
    .line 666
    invoke-static {v0, v3, v4}, Lorg/mvel2/util/e;->d(Lorg/mvel2/util/ASTLinkedList;ZLorg/mvel2/ParserContext;)Lorg/mvel2/util/ASTLinkedList;

    .line 667
    .line 668
    .line 669
    move-result-object v7

    .line 670
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 671
    .line 672
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getSourceFile()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v8

    .line 676
    iget-object v9, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 677
    .line 678
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 679
    .line 680
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    .line 681
    .line 682
    .line 683
    move-result-object v10

    .line 684
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    .line 685
    .line 686
    if-ne v0, v1, :cond_19

    .line 687
    .line 688
    move v11, v1

    .line 689
    goto :goto_6

    .line 690
    :cond_19
    move v11, v5

    .line 691
    :goto_6
    move-object v6, v2

    .line 692
    invoke-direct/range {v6 .. v11}, Lorg/mvel2/compiler/CompiledExpression;-><init>(Lorg/mvel2/util/ASTLinkedList;Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserConfiguration;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    .line 694
    .line 695
    return-object v2

    .line 696
    :catch_2
    move-exception v0

    .line 697
    :try_start_2
    new-instance v1, Lorg/mvel2/CompileException;

    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 704
    .line 705
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 706
    .line 707
    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 708
    .line 709
    .line 710
    throw v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/mvel2/CompileException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 711
    :cond_1a
    :try_start_3
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 712
    .line 713
    invoke-virtual {v1}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    invoke-static {v0, v1}, Lorg/mvel2/util/e;->f(Lorg/mvel2/util/ASTIterator;Z)Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    iput-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 722
    .line 723
    const/4 v0, 0x0

    .line 724
    return-object v0

    .line 725
    :catch_3
    move-exception v0

    .line 726
    :try_start_4
    new-instance v1, Lorg/mvel2/CompileException;

    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 733
    .line 734
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 735
    .line 736
    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 737
    .line 738
    .line 739
    throw v1

    .line 740
    :cond_1b
    new-instance v0, Lorg/mvel2/CompileException;

    .line 741
    .line 742
    const-string v1, "COMPILE ERROR: non-empty stack after compileShared."

    .line 743
    .line 744
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 745
    .line 746
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 747
    .line 748
    invoke-direct {v0, v1, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 749
    .line 750
    .line 751
    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/mvel2/CompileException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 752
    :goto_7
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 753
    .line 754
    if-eqz v1, :cond_1c

    .line 755
    .line 756
    check-cast v0, Ljava/lang/RuntimeException;

    .line 757
    .line 758
    throw v0

    .line 759
    :cond_1c
    new-instance v1, Lorg/mvel2/CompileException;

    .line 760
    .line 761
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 766
    .line 767
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 768
    .line 769
    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 770
    .line 771
    .line 772
    throw v1

    .line 773
    :goto_8
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 774
    .line 775
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 776
    .line 777
    invoke-static {v0, v1, v2}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    throw v0

    .line 782
    :goto_9
    new-instance v1, Lorg/mvel2/CompileException;

    .line 783
    .line 784
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 785
    .line 786
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 787
    .line 788
    const-string v4, "not a statement, or badly formed structure"

    .line 789
    .line 790
    invoke-direct {v1, v4, v2, v3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 791
    .line 792
    .line 793
    throw v1
.end method

.method public compile()Lorg/mvel2/compiler/CompiledExpression;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, " compilation error(s): "

    .line 4
    .line 5
    const-string v3, "Failed to compileShared: "

    .line 6
    .line 7
    const-string v4, " "

    .line 8
    .line 9
    const-string v5, ")"

    .line 10
    .line 11
    const-string v6, ","

    .line 12
    .line 13
    const-string v7, "("

    .line 14
    .line 15
    const-string v8, "\n - "

    .line 16
    .line 17
    :try_start_0
    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isDebugSymbols()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput-boolean v0, v1, Lorg/mvel2/compiler/AbstractParser;->debugSymbols:Z

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 30
    .line 31
    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->isFatalError()Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    if-eqz v9, :cond_2

    .line 36
    .line 37
    new-instance v0, Lorg/mvel2/util/s;

    .line 38
    .line 39
    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 43
    .line 44
    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_1

    .line 57
    .line 58
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    check-cast v10, Lorg/mvel2/c;

    .line 63
    .line 64
    iget-object v11, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 65
    .line 66
    iget v12, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 67
    .line 68
    invoke-static {v10, v11, v12}, Lorg/mvel2/util/f;->b(Lorg/mvel2/c;[CI)Lorg/mvel2/c;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-virtual {v10}, Lorg/mvel2/c;->d()[C

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    iget-object v12, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 77
    .line 78
    if-eq v11, v12, :cond_0

    .line 79
    .line 80
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0, v8}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    invoke-virtual {v11, v7}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    invoke-virtual {v10}, Lorg/mvel2/c;->e()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    invoke-virtual {v11, v12}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v11, v6}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v10}, Lorg/mvel2/c;->b()I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-virtual {v11, v12}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v11, v5}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v11, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-virtual {v10}, Lorg/mvel2/c;->f()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v11, v10}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    new-instance v4, Lorg/mvel2/CompileException;

    .line 137
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 147
    .line 148
    invoke-virtual {v3}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 174
    .line 175
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    iget-object v15, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 180
    .line 181
    iget v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 182
    .line 183
    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 184
    .line 185
    move-object v12, v4

    .line 186
    move/from16 v16, v0

    .line 187
    .line 188
    move-object/from16 v17, v2

    .line 189
    .line 190
    invoke-direct/range {v12 .. v17}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;Ljava/util/List;[CILorg/mvel2/ParserContext;)V

    .line 191
    .line 192
    .line 193
    throw v4

    .line 194
    :cond_2
    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 197
    .line 198
    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->isFatalError()Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-eqz v9, :cond_5

    .line 203
    .line 204
    new-instance v0, Lorg/mvel2/util/s;

    .line 205
    .line 206
    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v9, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 210
    .line 211
    invoke-virtual {v9}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    if-eqz v10, :cond_4

    .line 224
    .line 225
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    check-cast v10, Lorg/mvel2/c;

    .line 230
    .line 231
    iget-object v11, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 232
    .line 233
    iget v12, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 234
    .line 235
    invoke-static {v10, v11, v12}, Lorg/mvel2/util/f;->b(Lorg/mvel2/c;[CI)Lorg/mvel2/c;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v10}, Lorg/mvel2/c;->d()[C

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    iget-object v12, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 244
    .line 245
    if-eq v11, v12, :cond_3

    .line 246
    .line 247
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_3
    invoke-virtual {v0, v8}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    invoke-virtual {v11, v7}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    invoke-virtual {v10}, Lorg/mvel2/c;->e()I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    invoke-virtual {v11, v12}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    invoke-virtual {v11, v6}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    invoke-virtual {v10}, Lorg/mvel2/c;->b()I

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    invoke-virtual {v11, v12}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    invoke-virtual {v11, v5}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    invoke-virtual {v11, v4}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    invoke-virtual {v10}, Lorg/mvel2/c;->f()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    invoke-virtual {v11, v10}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_4
    new-instance v4, Lorg/mvel2/CompileException;

    .line 304
    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget-object v3, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 314
    .line 315
    invoke-virtual {v3}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    iget-object v0, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 341
    .line 342
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getErrorList()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v14

    .line 346
    iget-object v15, v1, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 347
    .line 348
    iget v0, v1, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 349
    .line 350
    iget-object v2, v1, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 351
    .line 352
    move-object v12, v4

    .line 353
    move/from16 v16, v0

    .line 354
    .line 355
    move-object/from16 v17, v2

    .line 356
    .line 357
    invoke-direct/range {v12 .. v17}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;Ljava/util/List;[CILorg/mvel2/ParserContext;)V

    .line 358
    .line 359
    .line 360
    throw v4

    .line 361
    :cond_5
    throw v0
.end method

.method public getParserContextState()Lorg/mvel2/ParserContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public isLiteralOnly()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->literalOnly:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public isVerifyOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVerifying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 2
    .line 3
    return v0
.end method

.method public setReturnType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public setVerifyOnly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifyOnly:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVerifying(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 2
    .line 3
    return-void
.end method

.method protected verify(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/ast/ASTNode;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x15

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/16 v1, 0x16

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->secondPassOptimization:Z

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isDiscard()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_13

    .line 47
    .line 48
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const-class v1, Lorg/mvel2/ast/ASTNode;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 65
    .line 66
    and-int/lit8 v0, v0, 0x10

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    new-instance v0, Lorg/mvel2/ast/LiteralNode;

    .line 77
    .line 78
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {v0, p2, p1}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_3
    return-object p2

    .line 87
    :cond_4
    iget-boolean v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->verifying:Z

    .line 88
    .line 89
    if-eqz v0, :cond_11

    .line 90
    .line 91
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isIdentifier()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_b

    .line 96
    .line 97
    new-instance v0, Lorg/mvel2/compiler/PropertyVerifier;

    .line 98
    .line 99
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 100
    .line 101
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-direct {v0, v2, v3, v4, p1}, Lorg/mvel2/compiler/PropertyVerifier;-><init>([CIILorg/mvel2/ParserContext;)V

    .line 110
    .line 111
    .line 112
    instance-of v2, p2, Lorg/mvel2/ast/Union;

    .line 113
    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    move-object v2, p2

    .line 117
    check-cast v2, Lorg/mvel2/ast/Union;

    .line 118
    .line 119
    invoke-virtual {v2}, Lorg/mvel2/ast/Union;->getLeftEgressType()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lorg/mvel2/compiler/PropertyVerifier;->setCtx(Ljava/lang/Class;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 131
    .line 132
    invoke-virtual {p2, v0}, Lorg/mvel2/ast/ASTNode;->setEgressType(Ljava/lang/Class;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_5
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iput-object v2, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 142
    .line 143
    invoke-virtual {p2, v2}, Lorg/mvel2/ast/ASTNode;->setEgressType(Ljava/lang/Class;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isFqcn()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->setAsFQCNReference()V

    .line 153
    .line 154
    .line 155
    :cond_6
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isClassLiteral()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_7

    .line 160
    .line 161
    new-instance p2, Lorg/mvel2/ast/LiteralNode;

    .line 162
    .line 163
    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 164
    .line 165
    invoke-direct {p2, v0, p1}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    .line 166
    .line 167
    .line 168
    return-object p2

    .line 169
    :cond_7
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isInput()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_9

    .line 174
    .line 175
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getAbsoluteName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isDeepProperty()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_8

    .line 184
    .line 185
    const-class v3, Ljava/lang/Object;

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_8
    iget-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 189
    .line 190
    :goto_0
    invoke-virtual {p1, v2, v3}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    invoke-virtual {v0}, Lorg/mvel2/compiler/PropertyVerifier;->isMethodCall()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_10

    .line 198
    .line 199
    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_10

    .line 206
    .line 207
    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isOptimizerNotified()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_10

    .line 212
    .line 213
    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_10

    .line 218
    .line 219
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getAbsoluteName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Lorg/mvel2/ParserContext;->isVariableVisible(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_10

    .line 228
    .line 229
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isFQCN()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_a

    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :cond_a
    new-instance p1, Lorg/mvel2/CompileException;

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v1, "no such identifier: "

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getAbsoluteName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 261
    .line 262
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    invoke-direct {p1, v0, v1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :cond_b
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isAssignment()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_f

    .line 275
    .line 276
    move-object v0, p2

    .line 277
    check-cast v0, Lorg/mvel2/ast/a;

    .line 278
    .line 279
    invoke-interface {v0}, Lorg/mvel2/ast/a;->getAssignmentVar()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    if-eqz v2, :cond_10

    .line 284
    .line 285
    new-instance v2, Lorg/mvel2/compiler/PropertyVerifier;

    .line 286
    .line 287
    invoke-interface {v0}, Lorg/mvel2/ast/a;->getAssignmentVar()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-direct {v2, v3, p1}, Lorg/mvel2/compiler/PropertyVerifier;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    iput-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 299
    .line 300
    invoke-virtual {p2, v3}, Lorg/mvel2/ast/ASTNode;->setEgressType(Ljava/lang/Class;)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v0}, Lorg/mvel2/ast/a;->isNewDeclaration()Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-nez v3, :cond_c

    .line 308
    .line 309
    invoke-virtual {v2}, Lorg/mvel2/compiler/PropertyVerifier;->isResolvedExternally()Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_c

    .line 314
    .line 315
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getAbsoluteName()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    iget-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 320
    .line 321
    invoke-virtual {p1, v2, v3}, Lorg/mvel2/ParserContext;->addInput(Ljava/lang/String;Ljava/lang/Class;)V

    .line 322
    .line 323
    .line 324
    :cond_c
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 325
    .line 326
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    invoke-static {v2, v3, v4, p1}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    check-cast v2, Lorg/mvel2/compiler/ExecutableStatement;

    .line 339
    .line 340
    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_10

    .line 345
    .line 346
    iget-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 347
    .line 348
    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-nez v3, :cond_10

    .line 357
    .line 358
    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->isLiteralOnly()Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    if-eqz v3, :cond_10

    .line 363
    .line 364
    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    iget-object v1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 369
    .line 370
    invoke-static {p1, v1}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-eqz p1, :cond_d

    .line 375
    .line 376
    :try_start_0
    new-instance p1, Lorg/mvel2/compiler/ExecutableLiteral;

    .line 377
    .line 378
    const/4 v1, 0x0

    .line 379
    invoke-interface {v2, v1, v1}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    iget-object v3, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 384
    .line 385
    invoke-static {v1, v3}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-direct {p1, v1}, Lorg/mvel2/compiler/ExecutableLiteral;-><init>(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-interface {v0, p1}, Lorg/mvel2/ast/a;->setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .line 394
    .line 395
    return-object p2

    .line 396
    :cond_d
    iget-object p1, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 397
    .line 398
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-eqz p1, :cond_e

    .line 403
    .line 404
    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-static {p1}, Lorg/mvel2/util/m;->O0(Ljava/lang/Class;)Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 413
    .line 414
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-eqz p1, :cond_e

    .line 419
    .line 420
    return-object p2

    .line 421
    :catch_0
    :cond_e
    new-instance p1, Lorg/mvel2/CompileException;

    .line 422
    .line 423
    new-instance p2, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v0, "cannot assign type "

    .line 429
    .line 430
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-interface {v2}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v0, " to "

    .line 445
    .line 446
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    iget-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 463
    .line 464
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 465
    .line 466
    invoke-direct {p1, p2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 467
    .line 468
    .line 469
    throw p1

    .line 470
    :cond_f
    instance-of v0, p2, Lorg/mvel2/ast/NewObjectNode;

    .line 471
    .line 472
    if-eqz v0, :cond_10

    .line 473
    .line 474
    move-object v0, p2

    .line 475
    check-cast v0, Lorg/mvel2/ast/NewObjectNode;

    .line 476
    .line 477
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getNameAsArray()[C

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v0}, Lorg/mvel2/util/m;->w0([C)Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    if-eqz v0, :cond_10

    .line 486
    .line 487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-eqz v2, :cond_10

    .line 496
    .line 497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    check-cast v2, [C

    .line 502
    .line 503
    invoke-static {v2, p1}, Lorg/mvel2/d;->c([CLorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    goto :goto_1

    .line 507
    :cond_10
    :goto_2
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iput-object v0, p0, Lorg/mvel2/compiler/ExpressionCompiler;->returnType:Ljava/lang/Class;

    .line 512
    .line 513
    :cond_11
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-nez v0, :cond_13

    .line 518
    .line 519
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    if-ne v0, v1, :cond_13

    .line 524
    .line 525
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getFields()I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    const/high16 v1, 0x4000000

    .line 530
    .line 531
    and-int/2addr v0, v1

    .line 532
    if-nez v0, :cond_13

    .line 533
    .line 534
    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-eqz v0, :cond_12

    .line 539
    .line 540
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->strongTyping()V

    .line 541
    .line 542
    .line 543
    :cond_12
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->storePctx()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p2, p1}, Lorg/mvel2/ast/ASTNode;->storeInLiteralRegister(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    :cond_13
    :goto_3
    return-object p2
.end method
