.class public Lorg/mvel2/util/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lorg/mvel2/ast/ASTNode;

.field private b:Lorg/mvel2/util/a;

.field private c:Lorg/mvel2/util/a;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/ASTNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/util/a;->a:Lorg/mvel2/ast/ASTNode;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Lorg/mvel2/util/ASTIterator;)Lorg/mvel2/util/a;
    .locals 3

    .line 1
    new-instance v0, Lorg/mvel2/util/ASTLinkedList;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/mvel2/util/ASTIterator;->firstNode()Lorg/mvel2/ast/ASTNode;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lorg/mvel2/util/ASTLinkedList;-><init>(Lorg/mvel2/ast/ASTNode;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/mvel2/util/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/mvel2/util/ASTIterator;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {p0, v1}, Lorg/mvel2/util/a;-><init>(Lorg/mvel2/ast/ASTNode;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/mvel2/util/ASTIterator;->hasMoreNodes()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Lorg/mvel2/util/ASTIterator;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    instance-of v2, v1, Lorg/mvel2/ast/EndOfStatement;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lorg/mvel2/util/ASTIterator;->hasMoreNodes()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    new-instance p0, Lorg/mvel2/util/a;

    .line 40
    .line 41
    invoke-interface {v0}, Lorg/mvel2/util/ASTIterator;->nextNode()Lorg/mvel2/ast/ASTNode;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {p0, v1}, Lorg/mvel2/util/a;-><init>(Lorg/mvel2/ast/ASTNode;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, v1}, Lorg/mvel2/util/a;->a(Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/util/a;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-object p0
.end method

.method private c(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/mvel2/ast/OperatorNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    instance-of v1, p2, Lorg/mvel2/ast/OperatorNode;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, p2, Lorg/mvel2/ast/OperatorNode;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-object v0, Lorg/mvel2/f;->a:[I

    .line 18
    .line 19
    check-cast p1, Lorg/mvel2/ast/OperatorNode;

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/mvel2/ast/OperatorNode;->getOperator()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    aget p1, v0, p1

    .line 30
    .line 31
    check-cast p2, Lorg/mvel2/ast/OperatorNode;

    .line 32
    .line 33
    invoke-virtual {p2}, Lorg/mvel2/ast/OperatorNode;->getOperator()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    aget p2, v0, p2

    .line 42
    .line 43
    sub-int/2addr p1, p2

    .line 44
    return p1

    .line 45
    :cond_1
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 p1, -0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p1, 0x1

    .line 50
    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/util/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/a;->a:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/mvel2/util/a;->c(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/mvel2/util/a;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/mvel2/util/a;-><init>(Lorg/mvel2/ast/ASTNode;)V

    .line 12
    .line 13
    .line 14
    iput-object p0, v0, Lorg/mvel2/util/a;->b:Lorg/mvel2/util/a;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/a;->b:Lorg/mvel2/util/a;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lorg/mvel2/util/a;->c:Lorg/mvel2/util/a;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lorg/mvel2/util/a;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lorg/mvel2/util/a;-><init>(Lorg/mvel2/ast/ASTNode;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/mvel2/util/a;->c:Lorg/mvel2/util/a;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, p1}, Lorg/mvel2/util/a;->a(Lorg/mvel2/ast/ASTNode;)Lorg/mvel2/util/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lorg/mvel2/util/a;->c:Lorg/mvel2/util/a;

    .line 38
    .line 39
    :goto_0
    return-object p0

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    const-string v0, "Missing left node"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public d(Z)Ljava/lang/Class;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/a;->a:Lorg/mvel2/ast/ASTNode;

    instance-of v1, v0, Lorg/mvel2/ast/OperatorNode;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/a;->b:Lorg/mvel2/util/a;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lorg/mvel2/util/a;->c:Lorg/mvel2/util/a;

    if-eqz v1, :cond_16

    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/util/a;->d(Z)Ljava/lang/Class;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/mvel2/util/a;->c:Lorg/mvel2/util/a;

    invoke-virtual {v1, p1}, Lorg/mvel2/util/a;->d(Z)Ljava/lang/Class;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lorg/mvel2/util/a;->a:Lorg/mvel2/ast/ASTNode;

    check-cast v2, Lorg/mvel2/ast/OperatorNode;

    invoke-virtual {v2}, Lorg/mvel2/ast/OperatorNode;->getOperator()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "Associative operation requires compatible types. Found "

    const-string v4, " and "

    if-eqz v2, :cond_11

    const/4 v5, 0x1

    if-eq v2, v5, :cond_12

    const/4 v5, 0x2

    if-eq v2, v5, :cond_12

    const/4 v5, 0x3

    if-eq v2, v5, :cond_12

    const/4 v5, 0x4

    if-eq v2, v5, :cond_e

    const/16 v5, 0x15

    const-class v6, Ljava/lang/Boolean;

    if-eq v2, v5, :cond_9

    const/16 v5, 0x16

    if-eq v2, v5, :cond_9

    const-string v5, "Comparison operation requires compatible types. Found "

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 6
    iget-object p1, p0, Lorg/mvel2/util/a;->a:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :pswitch_0
    if-eqz p1, :cond_2

    .line 7
    invoke-static {v0, v1}, Lorg/mvel2/util/d;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v0

    :pswitch_1
    if-eqz p1, :cond_4

    if-eq v0, v6, :cond_4

    .line 9
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Condition of ternary operator is not of type boolean. Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v1

    :pswitch_2
    return-object v6

    :pswitch_3
    if-eqz p1, :cond_6

    .line 11
    invoke-static {v0, v1}, Lorg/mvel2/util/d;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-object v6

    :pswitch_4
    if-eqz p1, :cond_8

    .line 13
    invoke-static {v0, v1}, Lorg/mvel2/util/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 14
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-object v6

    :cond_9
    if-eqz p1, :cond_d

    if-eq v0, v6, :cond_b

    .line 15
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_a

    goto :goto_4

    .line 16
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left side of logical operation is not of type boolean. Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    if-eq v1, v6, :cond_d

    .line 17
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_c

    goto :goto_5

    .line 18
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Right side of logical operation is not of type boolean. Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_5
    return-object v6

    :cond_e
    if-eqz p1, :cond_10

    .line 19
    invoke-static {v0, v1}, Lorg/mvel2/util/d;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_6

    .line 20
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_10
    :goto_6
    const-class p1, Ljava/lang/Integer;

    return-object p1

    .line 22
    :cond_11
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_8

    :cond_12
    if-eqz p1, :cond_14

    .line 23
    invoke-static {v0, v1}, Lorg/mvel2/util/d;->b(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_7

    .line 24
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_14
    :goto_7
    const-class p1, Ljava/lang/Double;

    return-object p1

    :cond_15
    :goto_8
    return-object v2

    .line 26
    :cond_16
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Malformed expression"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
