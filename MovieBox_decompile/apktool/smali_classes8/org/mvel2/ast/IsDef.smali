.class public Lorg/mvel2/ast/IsDef;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# direct methods
.method public constructor <init>([CIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    new-instance p4, Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 7
    .line 8
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 9
    .line 10
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 11
    .line 12
    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 13
    .line 14
    .line 15
    iput-object p4, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lorg/mvel2/util/n;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->nameCache:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lorg/mvel2/util/n;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method
