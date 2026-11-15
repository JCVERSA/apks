.class public Lorg/mvel2/ast/Soundslike;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private soundslike:Lorg/mvel2/ast/ASTNode;

.field private stmt:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/Soundslike;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/ast/Soundslike;->soundslike:Lorg/mvel2/ast/ASTNode;

    .line 7
    .line 8
    const-class p1, Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p3, p2, p1, v0}, Lorg/mvel2/util/e;->b(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;Z)V

    .line 12
    .line 13
    .line 14
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
    .locals 3

    .line 1
    const-string v0, "not a string: "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/mvel2/ast/Soundslike;->soundslike:Lorg/mvel2/ast/ASTNode;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lorg/mvel2/ast/Soundslike;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 14
    .line 15
    invoke-virtual {v2, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Lorg/mvel2/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1}, Lorg/mvel2/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    new-instance p1, Lorg/mvel2/CompileException;

    .line 41
    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Lorg/mvel2/ast/Soundslike;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 51
    .line 52
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object p3, p0, Lorg/mvel2/ast/Soundslike;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 64
    .line 65
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    iget-object v1, p0, Lorg/mvel2/ast/Soundslike;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 70
    .line 71
    invoke-virtual {v1}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-direct {p1, p2, p3, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 76
    .line 77
    .line 78
    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    new-instance p1, Lorg/mvel2/CompileException;

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object p3, p0, Lorg/mvel2/ast/Soundslike;->soundslike:Lorg/mvel2/ast/ASTNode;

    .line 90
    .line 91
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-object p3, p0, Lorg/mvel2/ast/Soundslike;->soundslike:Lorg/mvel2/ast/ASTNode;

    .line 103
    .line 104
    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    iget-object v0, p0, Lorg/mvel2/ast/Soundslike;->soundslike:Lorg/mvel2/ast/ASTNode;

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->getStart()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Soundslike;->soundslike:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/mvel2/ast/Soundslike;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 12
    .line 13
    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v0}, Lorg/mvel2/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1}, Lorg/mvel2/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public getSoundslike()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Soundslike;->soundslike:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatement()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Soundslike;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 2
    .line 3
    return-object v0
.end method
