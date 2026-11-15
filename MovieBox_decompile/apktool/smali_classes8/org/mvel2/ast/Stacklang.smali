.class public Lorg/mvel2/ast/Stacklang;
.super Lorg/mvel2/ast/BlockNode;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/ast/Stacklang$b;
    }
.end annotation


# static fields
.field static final opcodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field instructionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mvel2/ast/Stacklang$b;",
            ">;"
        }
    .end annotation
.end field

.field pCtx:Lorg/mvel2/ParserContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mvel2/ast/Stacklang;->opcodes:Ljava/util/Map;

    .line 7
    .line 8
    const/16 v1, 0x66

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "push"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x67

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "pop"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x68

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "load"

    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x69

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "ldtype"

    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x6a

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "invoke"

    .line 59
    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x6d

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "store"

    .line 70
    .line 71
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x6b

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "getfield"

    .line 81
    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const/16 v1, 0x6c

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "storefield"

    .line 92
    .line 93
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x6e

    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "dup"

    .line 103
    .line 104
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const/16 v1, 0x70

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v2, "jump"

    .line 114
    .line 115
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const/16 v1, 0x71

    .line 119
    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "jumpif"

    .line 125
    .line 126
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const/16 v1, 0x6f

    .line 130
    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v2, "label"

    .line 136
    .line 137
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x12

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v2, "eq"

    .line 147
    .line 148
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const/16 v1, 0x13

    .line 152
    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v2, "ne"

    .line 158
    .line 159
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    const/16 v1, 0x72

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v2, "reduce"

    .line 169
    .line 170
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x74

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    const-string v2, "xswap"

    .line 180
    .line 181
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    const/16 v1, 0x73

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v2, "swap"

    .line 191
    .line 192
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    invoke-direct {p0, p5}, Lorg/mvel2/ast/BlockNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/ast/BlockNode;->blockOffset:I

    .line 9
    .line 10
    const/high16 v0, 0x400000

    .line 11
    .line 12
    or-int/2addr p4, v0

    .line 13
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 14
    .line 15
    new-instance p4, Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 18
    .line 19
    .line 20
    const-string p1, ";"

    .line 21
    .line 22
    invoke-virtual {p4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    .line 27
    .line 28
    array-length p3, p1

    .line 29
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lorg/mvel2/ast/Stacklang;->instructionList:Ljava/util/List;

    .line 33
    .line 34
    array-length p2, p1

    .line 35
    const/4 p3, 0x0

    .line 36
    :goto_0
    if-ge p3, p2, :cond_0

    .line 37
    .line 38
    aget-object p4, p1, p3

    .line 39
    .line 40
    iget-object v0, p0, Lorg/mvel2/ast/Stacklang;->instructionList:Ljava/util/List;

    .line 41
    .line 42
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    invoke-static {p4}, Lorg/mvel2/ast/Stacklang;->parseInstruction(Ljava/lang/String;)Lorg/mvel2/ast/Stacklang$b;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 p3, p3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iput-object p5, p0, Lorg/mvel2/ast/Stacklang;->pCtx:Lorg/mvel2/ParserContext;

    .line 57
    .line 58
    return-void
.end method

.method private static parseInstruction(Ljava/lang/String;)Lorg/mvel2/ast/Stacklang$b;
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lorg/mvel2/ast/Stacklang$b;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Lorg/mvel2/ast/Stacklang$b;-><init>(Lorg/mvel2/ast/Stacklang$a;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    move-object v2, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :goto_0
    sget-object v3, Lorg/mvel2/ast/Stacklang;->opcodes:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iput v3, v1, Lorg/mvel2/ast/Stacklang$b;->a:I

    .line 42
    .line 43
    :cond_1
    if-eq v2, p0, :cond_2

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iput-object p0, v1, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    .line 52
    .line 53
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object p2, p1

    check-cast p2, Lorg/mvel2/util/g;

    .line 2
    iget-object v0, p0, Lorg/mvel2/ast/Stacklang;->instructionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_14

    .line 3
    iget-object v3, p0, Lorg/mvel2/ast/Stacklang;->instructionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mvel2/ast/Stacklang$b;

    .line 4
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/mvel2/util/g;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lorg/mvel2/ast/Stacklang$b;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    iget v4, v3, Lorg/mvel2/ast/Stacklang$b;->a:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_12

    const/16 v5, 0x13

    if-eq v4, v5, :cond_11

    const-string v5, "field access error"

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_c

    .line 6
    :pswitch_0
    invoke-virtual {p2}, Lorg/mvel2/util/g;->v()V

    goto/16 :goto_c

    .line 7
    :pswitch_1
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p2, v4}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 11
    :pswitch_2
    invoke-virtual {p2}, Lorg/mvel2/util/g;->i()V

    goto/16 :goto_c

    .line 12
    :pswitch_3
    invoke-virtual {p2}, Lorg/mvel2/util/g;->p()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_c

    .line 13
    :cond_0
    :pswitch_4
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 14
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_c

    :cond_1
    move v4, v1

    .line 15
    :goto_1
    iget-object v5, p0, Lorg/mvel2/ast/Stacklang;->instructionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 16
    iget-object v5, p0, Lorg/mvel2/ast/Stacklang;->instructionList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mvel2/ast/Stacklang$b;

    .line 17
    iget v6, v5, Lorg/mvel2/ast/Stacklang$b;->a:I

    const/16 v7, 0x6f

    if-ne v6, v7, :cond_2

    iget-object v6, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    iget-object v5, v5, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    move v2, v4

    goto/16 :goto_c

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :pswitch_5
    invoke-virtual {p2}, Lorg/mvel2/util/g;->f()V

    goto/16 :goto_c

    .line 20
    :pswitch_6
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 21
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v4

    iput-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    goto/16 :goto_c

    .line 22
    :cond_3
    check-cast v4, Lorg/mvel2/integration/VariableResolver;

    invoke-virtual {p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 23
    :pswitch_7
    :try_start_0
    invoke-virtual {p2}, Lorg/mvel2/util/g;->g()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_4

    .line 24
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 25
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v6

    .line 26
    iget-object v3, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p2, v6}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto/16 :goto_c

    :catch_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_4
    new-instance p1, Lorg/mvel2/CompileException;

    const-string p2, "storefield without class"

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_2
    new-instance p2, Lorg/mvel2/CompileException;

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    invoke-direct {p2, v5, p3, v0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    .line 30
    :pswitch_8
    :try_start_1
    invoke-virtual {p2}, Lorg/mvel2/util/g;->g()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_6

    .line 31
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 32
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iget-object v6, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    .line 33
    :cond_5
    invoke-virtual {p2}, Lorg/mvel2/util/g;->e()V

    .line 34
    iget-object v3, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    .line 35
    :goto_3
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 36
    :cond_6
    new-instance p1, Lorg/mvel2/CompileException;

    const-string p2, "getfield without class"

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :goto_4
    new-instance p2, Lorg/mvel2/CompileException;

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    invoke-direct {p2, v5, p3, v0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    .line 38
    :pswitch_9
    new-instance v4, Lorg/mvel2/util/g;

    invoke-direct {v4}, Lorg/mvel2/util/g;-><init>()V

    .line 39
    :goto_5
    invoke-virtual {p2}, Lorg/mvel2/util/g;->g()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p2}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Class;

    if-nez v5, :cond_7

    .line 40
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto :goto_5

    .line 41
    :cond_7
    invoke-virtual {p2}, Lorg/mvel2/util/g;->g()Z

    move-result v5

    if-nez v5, :cond_d

    .line 42
    invoke-virtual {v4}, Lorg/mvel2/util/g;->t()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    move v6, v1

    .line 43
    :goto_6
    invoke-virtual {v4}, Lorg/mvel2/util/g;->g()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v4}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 44
    :cond_8
    const-string v4, "<init>"

    iget-object v6, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 45
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_9

    .line 46
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-static {v5, v4, v1}, Lorg/mvel2/util/m;->N([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v4

    iput-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    goto :goto_7

    .line 47
    :cond_9
    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 48
    :goto_7
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_c

    :catch_2
    move-exception p1

    .line 49
    new-instance p2, Lorg/mvel2/CompileException;

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    const-string v1, "instantiation error"

    invoke-direct {p2, v1, p3, v0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    .line 50
    :cond_a
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_b

    .line 51
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 52
    iget-object v6, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {v5, v6, v4, v7, v1}, Lorg/mvel2/util/m;->L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    goto :goto_8

    .line 53
    :cond_b
    invoke-virtual {p2}, Lorg/mvel2/util/g;->e()V

    .line 54
    iget-object v3, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Method;

    .line 55
    :goto_8
    :try_start_3
    invoke-virtual {p2}, Lorg/mvel2/util/g;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_9

    :cond_c
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v3

    :goto_9
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_c

    :catch_3
    move-exception p1

    .line 56
    new-instance p2, Lorg/mvel2/CompileException;

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    const-string v1, "invokation error"

    invoke-direct {p2, v1, p3, v0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    .line 57
    :cond_d
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p3, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    const-string v0, "invoke without class"

    invoke-direct {p1, v0, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    .line 58
    :pswitch_a
    :try_start_4
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_e

    .line 59
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/ast/Stacklang;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v4, v5}, Lorg/mvel2/util/m;->v(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    goto :goto_a

    :catch_4
    move-exception p1

    goto :goto_b

    .line 60
    :cond_e
    :goto_a
    iget-object v3, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    .line 61
    :goto_b
    new-instance p2, Lorg/mvel2/CompileException;

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/BlockNode;->blockStart:I

    const-string v1, "error"

    invoke-direct {p2, v1, p3, v0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    .line 62
    :pswitch_b
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_f

    .line 63
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-interface {p3, v4}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v4

    iput-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    .line 64
    :cond_f
    iget-object v3, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    check-cast v3, Lorg/mvel2/integration/VariableResolver;

    invoke-interface {v3}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto :goto_c

    .line 65
    :pswitch_c
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    goto :goto_c

    .line 66
    :pswitch_d
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    if-nez v4, :cond_10

    .line 67
    iget-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->b:Ljava/lang/String;

    invoke-static {v4, p1, p3}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    .line 68
    :cond_10
    iget-object v3, v3, Lorg/mvel2/ast/Stacklang$b;->c:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto :goto_c

    .line 69
    :cond_11
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    goto :goto_c

    .line 70
    :cond_12
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    :cond_13
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 71
    :cond_14
    invoke-virtual {p2}, Lorg/mvel2/util/g;->n()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lorg/mvel2/util/g;

    .line 2
    .line 3
    invoke-direct {p1}, Lorg/mvel2/util/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/Stacklang;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Lorg/mvel2/util/g;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/mvel2/util/g;->h()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Lorg/mvel2/util/g;->i()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/mvel2/util/g;->h()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/mvel2/util/g;->u()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lorg/mvel2/util/g;->k()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
