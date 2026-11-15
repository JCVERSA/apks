.class public Lorg/mvel2/util/e;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)Lorg/mvel2/ast/BinaryOperation;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Ljava/lang/Integer;

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p2}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-ne v0, v1, :cond_4

    .line 14
    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p0, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p0, v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lorg/mvel2/ast/BinaryOperation;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance p0, Lorg/mvel2/ast/IntDiv;

    .line 33
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/IntDiv;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    new-instance p0, Lorg/mvel2/ast/IntMult;

    .line 39
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/IntMult;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    new-instance p0, Lorg/mvel2/ast/IntSub;

    .line 45
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/IntSub;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_3
    new-instance p0, Lorg/mvel2/ast/IntAdd;

    .line 51
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/ast/IntAdd;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    new-instance v0, Lorg/mvel2/ast/BinaryOperation;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public static b(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "<Unknown>"

    .line 10
    .line 11
    const-string v1, "; but found type: "

    .line 12
    .line 13
    const-string v2, "was expecting type: "

    .line 14
    .line 15
    const-class v3, Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_3

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-nez p3, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    new-instance p0, Lorg/mvel2/CompileException;

    .line 45
    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-array p2, v4, [C

    .line 78
    .line 79
    invoke-direct {p0, p1, p2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_3

    .line 90
    .line 91
    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_3

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void

    .line 103
    :cond_4
    :goto_0
    new-instance p0, Lorg/mvel2/CompileException;

    .line 104
    .line 105
    new-instance p3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :cond_5
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-array p2, v4, [C

    .line 137
    .line 138
    invoke-direct {p0, p1, p2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public static c(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;Ljava/lang/Class;Z)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lorg/mvel2/compiler/a;->getKnownEgressType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "<Unknown>"

    .line 6
    .line 7
    const-string v1, "; but found type: "

    .line 8
    .line 9
    const-string v2, "was expecting type: "

    .line 10
    .line 11
    const-class v3, Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz p3, :cond_3

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_4

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    :cond_1
    new-instance p0, Lorg/mvel2/CompileException;

    .line 45
    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-array p2, v4, [C

    .line 78
    .line 79
    invoke-direct {p0, p1, p2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_3
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_4

    .line 90
    .line 91
    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    return-void

    .line 107
    :cond_5
    :goto_0
    new-instance p0, Lorg/mvel2/CompileException;

    .line 108
    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_6
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-array p2, v4, [C

    .line 141
    .line 142
    invoke-direct {p0, p1, p2, v4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 143
    .line 144
    .line 145
    throw p0
.end method

.method public static d(Lorg/mvel2/util/ASTLinkedList;ZLorg/mvel2/ParserContext;)Lorg/mvel2/util/ASTLinkedList;
    .locals 17

    move-object/from16 v8, p2

    .line 1
    new-instance v9, Lorg/mvel2/util/ASTLinkedList;

    invoke-direct {v9}, Lorg/mvel2/util/ASTLinkedList;-><init>()V

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    const/4 v3, -0x1

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 4
    invoke-virtual {v9, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 7
    invoke-virtual {v9, v4, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_16

    .line 9
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_15

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v6

    .line 11
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v7

    const-class v10, Ljava/lang/Integer;

    if-ne v7, v10, :cond_2

    invoke-virtual {v6}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, v10, :cond_2

    .line 12
    invoke-static {v0, v4, v6, v8}, Lorg/mvel2/util/e;->a(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)Lorg/mvel2/ast/BinaryOperation;

    move-result-object v4

    goto/16 :goto_7

    :cond_2
    const/4 v7, 0x1

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v10

    .line 14
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v5, v6}, Lorg/mvel2/util/e;->i(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v7

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    move v13, v11

    const/4 v14, 0x0

    move v11, v10

    move-object v10, v6

    move-object v6, v1

    :goto_2
    if-eqz v13, :cond_b

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v15

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_6

    .line 17
    :cond_4
    new-instance v12, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v15}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz v11, :cond_5

    new-instance v2, Lorg/mvel2/ast/LiteralNode;

    invoke-virtual {v10}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/mvel2/util/e;->l(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    goto :goto_3

    :cond_5
    move-object v2, v10

    :goto_3
    invoke-direct {v12, v15, v2, v7, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v12, v1, v1, v1}, Lorg/mvel2/ast/BinaryOperation;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lorg/mvel2/compiler/BlankLiteral;->INSTANCE:Lorg/mvel2/compiler/BlankLiteral;

    invoke-virtual {v3, v2}, Lorg/mvel2/compiler/BlankLiteral;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    invoke-virtual {v9, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    const/16 v2, 0x15

    const/4 v3, -0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->peekNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/mvel2/util/e;->k(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->peekNext()Lorg/mvel2/ast/ASTNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    if-eqz v11, :cond_8

    const/4 v14, 0x1

    :cond_8
    if-nez v13, :cond_a

    .line 21
    new-instance v6, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v7, Lorg/mvel2/ast/LiteralNode;

    if-eqz v14, :cond_9

    invoke-static {v2}, Lorg/mvel2/util/e;->l(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    :cond_9
    invoke-direct {v7, v2, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    invoke-direct {v6, v3, v4, v7, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    goto :goto_5

    .line 22
    :cond_a
    new-instance v3, Lorg/mvel2/ast/LiteralNode;

    invoke-direct {v3, v2, v8}, Lorg/mvel2/ast/LiteralNode;-><init>(Ljava/lang/Object;Lorg/mvel2/ParserContext;)V

    move-object v10, v3

    :goto_5
    const/16 v2, 0x15

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_b
    :goto_6
    if-nez v6, :cond_c

    .line 23
    new-instance v2, Lorg/mvel2/ast/BinaryOperation;

    invoke-direct {v2, v0, v4, v10, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    move-object v4, v2

    goto :goto_7

    :cond_c
    move-object v4, v6

    :goto_7
    move-object v2, v1

    move-object v1, v4

    .line 24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_13

    const/16 v4, 0x15

    if-ge v3, v4, :cond_13

    .line 25
    sget-object v4, Lorg/mvel2/f;->a:[I

    aget v5, v4, v3

    aget v6, v4, v0

    if-le v5, v6, :cond_d

    .line 26
    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getRightMost()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-static {v3, v0, v4, v8}, Lorg/mvel2/util/e;->a(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)Lorg/mvel2/ast/BinaryOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mvel2/ast/BinaryOperation;->setRightMost(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_9

    .line 27
    :cond_d
    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v5

    if-eq v5, v3, :cond_10

    aget v0, v4, v0

    aget v5, v4, v3

    if-ne v0, v5, :cond_10

    .line 28
    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v0

    aget v0, v4, v0

    aget v4, v4, v3

    if-ne v0, v4, :cond_e

    .line 29
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-static {v3, v1, v0, v8}, Lorg/mvel2/util/e;->a(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)Lorg/mvel2/ast/BinaryOperation;

    move-result-object v1

    goto :goto_9

    .line 30
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Lorg/mvel2/util/e;->h(Lorg/mvel2/ast/BooleanNode;Lorg/mvel2/ast/ASTNode;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 32
    new-instance v4, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v5

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getLeft()Lorg/mvel2/ast/ASTNode;

    move-result-object v6

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getRight()Lorg/mvel2/ast/ASTNode;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    move-object v1, v4

    .line 33
    :cond_f
    new-instance v4, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getRight()Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v1, v4}, Lorg/mvel2/ast/BooleanNode;->setRight(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_9

    .line 34
    :cond_10
    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v0

    aget v0, v4, v0

    aget v4, v4, v3

    if-lt v0, v4, :cond_11

    .line 35
    new-instance v0, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    move-object v1, v0

    goto :goto_9

    .line 36
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lorg/mvel2/util/e;->h(Lorg/mvel2/ast/BooleanNode;Lorg/mvel2/ast/ASTNode;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 38
    new-instance v4, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v1}, Lorg/mvel2/ast/BinaryOperation;->getOperation()I

    move-result v5

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getLeft()Lorg/mvel2/ast/ASTNode;

    move-result-object v6

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getRight()Lorg/mvel2/ast/ASTNode;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    move-object v1, v4

    .line 39
    :cond_12
    new-instance v4, Lorg/mvel2/ast/BinaryOperation;

    invoke-virtual {v1}, Lorg/mvel2/ast/BooleanNode;->getRight()Lorg/mvel2/ast/ASTNode;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0, v8}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    invoke-virtual {v1, v4}, Lorg/mvel2/ast/BooleanNode;->setRight(Lorg/mvel2/ast/ASTNode;)V

    :goto_9
    move-object v5, v2

    move v0, v3

    goto/16 :goto_8

    :cond_13
    if-eqz v2, :cond_14

    if-eq v2, v5, :cond_14

    .line 40
    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lorg/mvel2/util/e;->j(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/ParserContext;)V

    goto/16 :goto_0

    .line 41
    :cond_14
    invoke-virtual {v9, v1}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    .line 42
    :cond_15
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal use of operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v2

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    .line 43
    :cond_16
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 44
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lorg/mvel2/util/e;->j(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/ParserContext;)V

    goto/16 :goto_0

    .line 45
    :cond_17
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isAssignment()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_18

    .line 46
    new-instance v10, Lorg/mvel2/ast/DeclTypedVarNode;

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object v2

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v3

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getOffset()I

    move-result v5

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Class;

    const/4 v7, 0x0

    move-object v0, v10

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/mvel2/ast/DeclTypedVarNode;-><init>(Ljava/lang/String;[CIILjava/lang/Class;ILorg/mvel2/ParserContext;)V

    invoke-virtual {v9, v10}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    .line 47
    :cond_18
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_19

    .line 48
    invoke-virtual {v4}, Lorg/mvel2/ast/ASTNode;->discard()V

    .line 49
    invoke-virtual {v9, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    .line 50
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->peekNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->isAssignment()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 51
    invoke-virtual {v5}, Lorg/mvel2/ast/ASTNode;->discard()V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    .line 53
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/mvel2/util/ASTLinkedList;->back()V

    .line 54
    invoke-virtual {v9, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    .line 55
    :cond_1b
    invoke-virtual {v9, v4}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_0

    :cond_1c
    if-eqz p1, :cond_2a

    .line 56
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->reset()V

    .line 57
    new-instance v0, Lorg/mvel2/util/ASTLinkedList;

    invoke-direct {v0}, Lorg/mvel2/util/ASTLinkedList;-><init>()V

    .line 58
    :cond_1d
    :goto_a
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 59
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    .line 60
    invoke-virtual {v0, v2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto :goto_a

    .line 61
    :cond_1e
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 62
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getFields()I

    move-result v5

    if-ne v5, v4, :cond_1f

    .line 63
    invoke-virtual {v0, v2, v3}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto :goto_a

    .line 64
    :cond_1f
    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x16

    const/16 v7, 0x15

    if-eq v5, v7, :cond_20

    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_27

    .line 65
    :cond_20
    invoke-virtual {v3}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_21

    .line 66
    new-instance v5, Lorg/mvel2/ast/And;

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v10

    invoke-direct {v5, v2, v7, v10, v8}, Lorg/mvel2/ast/And;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;ZLorg/mvel2/ParserContext;)V

    :goto_b
    move-object v2, v1

    goto :goto_c

    .line 67
    :cond_21
    new-instance v5, Lorg/mvel2/ast/Or;

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v10

    invoke-direct {v5, v2, v7, v10, v8}, Lorg/mvel2/ast/Or;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;ZLorg/mvel2/ParserContext;)V

    goto :goto_b

    .line 68
    :goto_c
    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->hasMoreNodes()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->isOperator()Z

    move-result v7

    if-eqz v7, :cond_24

    const/16 v7, 0x15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v10

    if-nez v10, :cond_22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/mvel2/ast/ASTNode;->isOperator(Ljava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 69
    :cond_22
    invoke-virtual {v2}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_23

    .line 70
    new-instance v3, Lorg/mvel2/ast/And;

    invoke-virtual {v5}, Lorg/mvel2/ast/BooleanNode;->getRightMost()Lorg/mvel2/ast/ASTNode;

    move-result-object v10

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v12

    invoke-direct {v3, v10, v11, v12, v8}, Lorg/mvel2/ast/And;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;ZLorg/mvel2/ParserContext;)V

    invoke-virtual {v5, v3}, Lorg/mvel2/ast/BooleanNode;->setRightMost(Lorg/mvel2/ast/ASTNode;)V

    :goto_d
    move-object v3, v2

    goto :goto_c

    .line 71
    :cond_23
    new-instance v3, Lorg/mvel2/ast/Or;

    invoke-virtual {v9}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v11

    invoke-direct {v3, v5, v10, v11, v8}, Lorg/mvel2/ast/Or;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;ZLorg/mvel2/ParserContext;)V

    move-object v5, v3

    goto :goto_d

    :cond_24
    const/16 v7, 0x15

    .line 72
    :cond_25
    invoke-virtual {v0, v5}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    if-eqz v2, :cond_1d

    if-eq v2, v3, :cond_1d

    .line 73
    invoke-virtual {v0, v2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_a

    :cond_26
    const/16 v7, 0x15

    .line 74
    :cond_27
    invoke-virtual {v0, v2, v3}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_a

    :cond_28
    const/16 v7, 0x15

    .line 75
    invoke-virtual {v0, v2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    goto/16 :goto_a

    :cond_29
    move-object v9, v0

    :cond_2a
    return-object v9
.end method

.method public static e(Lorg/mvel2/integration/VariableResolverFactory;)Ljava/util/Map;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/mvel2/integration/impl/ClassImportResolverFactory;->getImportedClasses()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    invoke-interface {p0}, Lorg/mvel2/integration/VariableResolverFactory;->getNextFactory()Lorg/mvel2/integration/VariableResolverFactory;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return-object v0
.end method

.method public static f(Lorg/mvel2/util/ASTIterator;Z)Ljava/lang/Class;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/mvel2/util/ASTIterator;->firstNode()Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-class p0, Ljava/lang/Object;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Lorg/mvel2/util/ASTIterator;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-static {p0}, Lorg/mvel2/util/a;->b(Lorg/mvel2/util/ASTIterator;)Lorg/mvel2/util/a;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p1}, Lorg/mvel2/util/a;->d(Z)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static g(ILjava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x24

    .line 6
    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    const-class v0, Ljava/lang/String;

    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :pswitch_0
    return-object v0

    .line 17
    :pswitch_1
    const-class p0, Ljava/lang/Integer;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_2
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    :pswitch_3
    const-class p0, Ljava/lang/Object;

    .line 24
    .line 25
    if-eq p1, p0, :cond_3

    .line 26
    .line 27
    if-ne p2, p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {p2}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ge p0, v0, :cond_2

    .line 47
    .line 48
    move-object p1, p2

    .line 49
    :cond_2
    return-object p1

    .line 50
    :cond_3
    :goto_0
    return-object p0

    .line 51
    :cond_4
    :pswitch_4
    const-class p0, Ljava/lang/Boolean;

    .line 52
    .line 53
    return-object p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static h(Lorg/mvel2/ast/BooleanNode;Lorg/mvel2/ast/ASTNode;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lorg/mvel2/ast/c;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class p1, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eq p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static i(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Lorg/mvel2/util/e;->k(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lorg/mvel2/f;->a:[I

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    aget p0, v0, p0

    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getOperator()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    aget v0, v0, v1

    .line 48
    .line 49
    if-gt p0, v0, :cond_0

    .line 50
    .line 51
    iget-object p0, p1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    .line 52
    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    instance-of p0, p0, Ljava/lang/Number;

    .line 66
    .line 67
    if-eqz p0, :cond_0

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 p0, 0x0

    .line 72
    :goto_0
    return p0
.end method

.method private static j(ILorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/util/ASTLinkedList;Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {p5}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-class p3, Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eq p0, p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    if-ne p0, p3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string p3, "Condition of ternary operator is not of type boolean. Found "

    .line 40
    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p4, p1, p2}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_1
    new-instance p0, Lorg/mvel2/ast/Strsim;

    .line 64
    .line 65
    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Strsim;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_2
    new-instance p0, Lorg/mvel2/ast/Soundslike;

    .line 77
    .line 78
    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Soundslike;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_3
    new-instance p0, Lorg/mvel2/ast/Contains;

    .line 90
    .line 91
    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Contains;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_4
    new-instance p0, Lorg/mvel2/ast/Instance;

    .line 103
    .line 104
    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Instance;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_5
    new-instance p0, Lorg/mvel2/ast/RegExMatchNode;

    .line 116
    .line 117
    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/RegExMatchNode;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    new-instance p0, Lorg/mvel2/ast/Convertable;

    .line 129
    .line 130
    invoke-virtual {p3}, Lorg/mvel2/util/ASTLinkedList;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-direct {p0, p1, p2, p5}, Lorg/mvel2/ast/Convertable;-><init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4, p0}, Lorg/mvel2/util/ASTLinkedList;->addTokenNode(Lorg/mvel2/ast/ASTNode;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static k(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    return v0
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    neg-int p0, p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p0, Ljava/lang/Double;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    neg-double v0, v0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    neg-float p0, p0

    .line 44
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    check-cast p0, Ljava/lang/Short;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    neg-int p0, p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_3
    new-instance v0, Lorg/mvel2/CompileException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "expected a numeric type but found: "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const/4 v1, 0x0

    .line 93
    new-array v2, v1, [C

    .line 94
    .line 95
    invoke-direct {v0, p0, v2, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method
