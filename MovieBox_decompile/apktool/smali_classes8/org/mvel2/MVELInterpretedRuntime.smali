.class public Lorg/mvel2/MVELInterpretedRuntime;
.super Lorg/mvel2/compiler/AbstractParser;
.source "source.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private holdOverRegister:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/mvel2/MVELInterpretedRuntime;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/mvel2/MVELInterpretedRuntime;->LOG:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    .line 13
    new-instance p1, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;

    invoke-direct {p1}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;-><init>()V

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 49
    new-instance p1, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;

    invoke-direct {p1}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;-><init>()V

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 37
    iput-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p4}, Lorg/mvel2/compiler/AbstractParser;-><init>(Lorg/mvel2/ParserContext;)V

    .line 39
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 41
    iput-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lorg/mvel2/compiler/AbstractParser;->setExpression(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 45
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->initializeTables()V

    return-void
.end method

.method constructor <init>([C)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    return-void
.end method

.method public constructor <init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 22
    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p3, p2

    .line 23
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p3, p2

    .line 24
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 25
    iput-object p4, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 26
    iput-object p5, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method public constructor <init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 27
    invoke-direct {p0, p6}, Lorg/mvel2/compiler/AbstractParser;-><init>(Lorg/mvel2/ParserContext;)V

    .line 28
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 29
    iput p2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p3, p2

    .line 30
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p3, p2

    .line 31
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 32
    iput-object p4, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 33
    iput-object p5, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method constructor <init>([CLjava/lang/Object;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 8
    array-length p1, p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 9
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 10
    new-instance p1, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;

    invoke-direct {p1}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;-><init>()V

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method constructor <init>([CLjava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 3
    array-length p1, p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 4
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 5
    new-instance p1, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    invoke-direct {p1, p3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method public constructor <init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    iput p1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 18
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 19
    iput-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method

.method private hasMore()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

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

.method private parseAndExecuteInterpreted()Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/compiler/AbstractParser;->lastWasIdentifier:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v1, v0

    .line 6
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_b

    .line 11
    .line 12
    iput-object v0, p0, Lorg/mvel2/MVELInterpretedRuntime;->holdOverRegister:Ljava/lang/Object;

    .line 13
    .line 14
    iget-boolean v2, p0, Lorg/mvel2/compiler/AbstractParser;->lastWasIdentifier:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->lastNode:Lorg/mvel2/ast/ASTNode;

    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->isDiscard()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/mvel2/util/g;->e()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :catch_1
    move-exception v0

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 39
    .line 40
    invoke-virtual {v2}, Lorg/mvel2/util/g;->g()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, -0x1

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    iget v2, v1, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 48
    .line 49
    const/high16 v4, 0x400000

    .line 50
    .line 51
    and-int/2addr v2, v4

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 55
    .line 56
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 59
    .line 60
    invoke-virtual {v1, v2, v4, v5}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 68
    .line 69
    invoke-virtual {v2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    instance-of v4, v2, Ljava/lang/Integer;

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    check-cast v2, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {p0, v2}, Lorg/mvel2/compiler/AbstractParser;->arithmeticFunctionReduction(I)I

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 88
    .line 89
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 92
    .line 93
    invoke-virtual {v1, v4, v4, v5}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v2, v4}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_2
    instance-of v2, v1, Lorg/mvel2/ast/Substatement;

    .line 101
    .line 102
    if-eqz v2, :cond_0

    .line 103
    .line 104
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-static {v4}, Lorg/mvel2/compiler/AbstractParser;->isArithmeticOperator(I)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_4

    .line 123
    .line 124
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 125
    .line 126
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 131
    .line 132
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 133
    .line 134
    invoke-virtual {v6, v7, v7, v8}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v5, v6, v2}, Lorg/mvel2/util/g;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v4}, Lorg/mvel2/compiler/AbstractParser;->arithmeticFunctionReduction(I)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-direct {p0, v2}, Lorg/mvel2/MVELInterpretedRuntime;->procBooleanOperator(I)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-ne v2, v3, :cond_0

    .line 150
    .line 151
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 152
    .line 153
    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0

    .line 158
    :cond_4
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 159
    .line 160
    invoke-interface {v2}, Lorg/mvel2/integration/VariableResolverFactory;->tiltFlag()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_5

    .line 165
    .line 166
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 167
    .line 168
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0

    .line 173
    :cond_5
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-direct {p0, v4}, Lorg/mvel2/MVELInterpretedRuntime;->procBooleanOperator(I)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    const/4 v6, -0x2

    .line 186
    if-eq v5, v6, :cond_9

    .line 187
    .line 188
    if-eq v5, v3, :cond_8

    .line 189
    .line 190
    if-eqz v5, :cond_0

    .line 191
    .line 192
    const/16 v6, 0x63

    .line 193
    .line 194
    if-eq v5, v6, :cond_7

    .line 195
    .line 196
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 197
    .line 198
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->ctx:Ljava/lang/Object;

    .line 203
    .line 204
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 205
    .line 206
    invoke-virtual {v6, v7, v7, v8}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v5, v6, v2}, Lorg/mvel2/util/g;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v4}, Lorg/mvel2/compiler/AbstractParser;->arithmeticFunctionReduction(I)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eq v2, v3, :cond_6

    .line 218
    .line 219
    if-eqz v2, :cond_0

    .line 220
    .line 221
    invoke-direct {p0, v2}, Lorg/mvel2/MVELInterpretedRuntime;->procBooleanOperator(I)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-ne v2, v3, :cond_0

    .line 226
    .line 227
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 228
    .line 229
    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    return-object v0

    .line 234
    :cond_6
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 235
    .line 236
    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    return-object v0

    .line 241
    :cond_7
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 242
    .line 243
    const/4 v2, 0x1

    .line 244
    invoke-interface {v0, v2}, Lorg/mvel2/integration/VariableResolverFactory;->setTiltFlag(Z)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 248
    .line 249
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    return-object v0

    .line 254
    :cond_8
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 255
    .line 256
    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    return-object v0

    .line 261
    :cond_9
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-nez v2, :cond_0

    .line 266
    .line 267
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 268
    .line 269
    invoke-virtual {v2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    instance-of v2, v2, Ljava/lang/Class;

    .line 274
    .line 275
    if-eqz v2, :cond_a

    .line 276
    .line 277
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 278
    .line 279
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 284
    .line 285
    invoke-virtual {v4}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    check-cast v4, Ljava/lang/Class;

    .line 290
    .line 291
    invoke-interface {v2, v3, v0, v4}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    .line 292
    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_a
    new-instance v0, Lorg/mvel2/CompileException;

    .line 297
    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v3, "unexpected token or unknown identifier:"

    .line 304
    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 320
    .line 321
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 322
    .line 323
    invoke-direct {v0, v2, v3, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :cond_b
    iget-object v0, p0, Lorg/mvel2/MVELInterpretedRuntime;->holdOverRegister:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .line 329
    if-eqz v0, :cond_c

    .line 330
    .line 331
    return-object v0

    .line 332
    :cond_c
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 333
    .line 334
    invoke-virtual {v0}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    return-object v0

    .line 339
    :goto_3
    if-eqz v1, :cond_d

    .line 340
    .line 341
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_d

    .line 346
    .line 347
    new-instance v2, Lorg/mvel2/CompileException;

    .line 348
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    const-string v4, "incomplete statement: "

    .line 355
    .line 356
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v4, " (possible use of reserved keyword as identifier: "

    .line 367
    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v1, ")"

    .line 379
    .line 380
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 388
    .line 389
    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    .line 390
    .line 391
    invoke-direct {v2, v1, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 392
    .line 393
    .line 394
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 395
    .line 396
    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 397
    .line 398
    .line 399
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->line:I

    .line 400
    .line 401
    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setLineNumber(I)V

    .line 402
    .line 403
    .line 404
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 405
    .line 406
    invoke-virtual {v2, v0}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 407
    .line 408
    .line 409
    throw v2

    .line 410
    :cond_d
    throw v0

    .line 411
    :goto_4
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 412
    .line 413
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 414
    .line 415
    invoke-static {v0, v1, v2}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    throw v0
.end method

.method private procBooleanOperator(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_c

    .line 3
    .line 4
    const/16 v1, 0x25

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p1, v1, :cond_a

    .line 8
    .line 9
    const/16 v1, 0x63

    .line 10
    .line 11
    if-eq p1, v1, :cond_9

    .line 12
    .line 13
    const/16 v1, 0x1d

    .line 14
    .line 15
    const/16 v3, 0x1e

    .line 16
    .line 17
    if-eq p1, v1, :cond_6

    .line 18
    .line 19
    if-eq p1, v3, :cond_5

    .line 20
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    sget-object p1, Lorg/mvel2/compiler/BlankLiteral;->INSTANCE:Lorg/mvel2/compiler/BlankLiteral;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Lorg/mvel2/compiler/BlankLiteral;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    return v0

    .line 40
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :pswitch_1
    invoke-direct {p0}, Lorg/mvel2/MVELInterpretedRuntime;->reduceRight()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/mvel2/util/g;->m()Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lorg/mvel2/MVELInterpretedRuntime;->unwindStatement(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    return v0

    .line 64
    :cond_1
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/mvel2/util/g;->b()V

    .line 67
    .line 68
    .line 69
    return v2

    .line 70
    :cond_2
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/mvel2/util/g;->e()V

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :pswitch_2
    invoke-direct {p0}, Lorg/mvel2/MVELInterpretedRuntime;->reduceRight()V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/mvel2/util/g;->m()Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    invoke-direct {p0, p1}, Lorg/mvel2/MVELInterpretedRuntime;->unwindStatement(I)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    return v0

    .line 98
    :cond_3
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/mvel2/util/g;->b()V

    .line 101
    .line 102
    .line 103
    return v2

    .line 104
    :cond_4
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 105
    .line 106
    invoke-virtual {p1}, Lorg/mvel2/util/g;->e()V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_5
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->captureToEOS()V

    .line 111
    .line 112
    .line 113
    return v2

    .line 114
    :cond_6
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 115
    .line 116
    invoke-virtual {p1}, Lorg/mvel2/util/g;->p()Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_8

    .line 125
    .line 126
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 127
    .line 128
    invoke-virtual {p1}, Lorg/mvel2/util/g;->b()V

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    :cond_8
    return v2

    .line 148
    :cond_9
    return v1

    .line 149
    :cond_a
    invoke-direct {p0}, Lorg/mvel2/MVELInterpretedRuntime;->hasMore()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_b

    .line 154
    .line 155
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 156
    .line 157
    invoke-virtual {p1}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lorg/mvel2/MVELInterpretedRuntime;->holdOverRegister:Ljava/lang/Object;

    .line 162
    .line 163
    iget-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 164
    .line 165
    invoke-virtual {p1}, Lorg/mvel2/util/g;->b()V

    .line 166
    .line 167
    .line 168
    :cond_b
    return v2

    .line 169
    :cond_c
    const/4 p1, -0x2

    .line 170
    return p1

    .line 171
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reduceRight()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->dStack:Lorg/mvel2/util/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/mvel2/util/g;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->dStack:Lorg/mvel2/util/g;

    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->dStack:Lorg/mvel2/util/g;

    .line 25
    .line 26
    invoke-virtual {v3}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v2, v0, v3}, Lorg/mvel2/util/g;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->reduce()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private unwindStatement(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    const/16 v1, 0x25

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->nextToken()Lorg/mvel2/ast/ASTNode;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x16

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    if-nez p1, :cond_2

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    :goto_2
    return p1
.end method


# virtual methods
.method public parse()Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "unexpected end of statement"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Lorg/mvel2/util/g;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/mvel2/util/g;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->stk:Lorg/mvel2/util/g;

    .line 11
    .line 12
    new-instance v2, Lorg/mvel2/util/g;

    .line 13
    .line 14
    invoke-direct {v2}, Lorg/mvel2/util/g;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->dStack:Lorg/mvel2/util/g;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-interface {v2, v3}, Lorg/mvel2/integration/VariableResolverFactory;->setTiltFlag(Z)V

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 26
    .line 27
    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 28
    .line 29
    invoke-direct {p0}, Lorg/mvel2/MVELInterpretedRuntime;->parseAndExecuteInterpreted()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception v2

    .line 37
    goto :goto_1

    .line 38
    :catch_2
    move-exception v2

    .line 39
    goto :goto_2

    .line 40
    :goto_0
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 41
    .line 42
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lorg/mvel2/util/f;->a(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    throw v0

    .line 49
    :goto_1
    sget-object v3, Lorg/mvel2/MVELInterpretedRuntime;->LOG:Ljava/util/logging/Logger;

    .line 50
    .line 51
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 52
    .line 53
    invoke-virtual {v3, v4, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 57
    .line 58
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 59
    .line 60
    if-lt v1, v3, :cond_0

    .line 61
    .line 62
    new-instance v1, Lorg/mvel2/CompileException;

    .line 63
    .line 64
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 65
    .line 66
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 67
    .line 68
    invoke-direct {v1, v0, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_0
    throw v2

    .line 73
    :goto_2
    sget-object v3, Lorg/mvel2/MVELInterpretedRuntime;->LOG:Ljava/util/logging/Logger;

    .line 74
    .line 75
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 76
    .line 77
    invoke-virtual {v3, v4, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lorg/mvel2/CompileException;

    .line 81
    .line 82
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 83
    .line 84
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 85
    .line 86
    invoke-direct {v1, v0, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 87
    .line 88
    .line 89
    throw v1
.end method
