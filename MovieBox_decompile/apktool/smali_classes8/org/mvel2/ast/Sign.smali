.class public Lorg/mvel2/ast/Sign;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/ast/Sign$BigDecSigner;,
        Lorg/mvel2/ast/Sign$BigIntSigner;,
        Lorg/mvel2/ast/Sign$FloatSigner;,
        Lorg/mvel2/ast/Sign$DoubleSigner;,
        Lorg/mvel2/ast/Sign$LongSigner;,
        Lorg/mvel2/ast/Sign$ShortSigner;,
        Lorg/mvel2/ast/Sign$IntegerSigner;,
        Lorg/mvel2/ast/Sign$Signer;
    }
.end annotation


# instance fields
.field private signer:Lorg/mvel2/ast/Sign$Signer;

.field private stmt:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 5
    .line 6
    add-int/lit8 p2, p2, 0x1

    .line 7
    .line 8
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 9
    .line 10
    add-int/lit8 p3, p3, -0x1

    .line 11
    .line 12
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 13
    .line 14
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    .line 15
    .line 16
    and-int/lit8 p4, p4, 0x10

    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/m;->I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/mvel2/ast/Sign;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    .line 27
    .line 28
    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-class p2, Ljava/lang/Object;

    .line 37
    .line 38
    if-eq p1, p2, :cond_0

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lorg/mvel2/ast/Sign;->initSigner(Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private initSigner(Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class v0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Lorg/mvel2/ast/Sign$IntegerSigner;

    .line 15
    .line 16
    invoke-direct {p1, p0, v1}, Lorg/mvel2/ast/Sign$IntegerSigner;-><init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-class v0, Ljava/lang/Double;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance p1, Lorg/mvel2/ast/Sign$DoubleSigner;

    .line 31
    .line 32
    invoke-direct {p1, p0, v1}, Lorg/mvel2/ast/Sign$DoubleSigner;-><init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-class v0, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance p1, Lorg/mvel2/ast/Sign$LongSigner;

    .line 47
    .line 48
    invoke-direct {p1, p0, v1}, Lorg/mvel2/ast/Sign$LongSigner;-><init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-class v0, Ljava/lang/Float;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    new-instance p1, Lorg/mvel2/ast/Sign$FloatSigner;

    .line 63
    .line 64
    invoke-direct {p1, p0, v1}, Lorg/mvel2/ast/Sign$FloatSigner;-><init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const-class v0, Ljava/lang/Short;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    new-instance p1, Lorg/mvel2/ast/Sign$ShortSigner;

    .line 79
    .line 80
    invoke-direct {p1, p0, v1}, Lorg/mvel2/ast/Sign$ShortSigner;-><init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const-class v0, Ljava/math/BigInteger;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    new-instance p1, Lorg/mvel2/ast/Sign$BigIntSigner;

    .line 95
    .line 96
    invoke-direct {p1, p0, v1}, Lorg/mvel2/ast/Sign$BigIntSigner;-><init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const-class v0, Ljava/math/BigDecimal;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    new-instance p1, Lorg/mvel2/ast/Sign$BigDecSigner;

    .line 111
    .line 112
    invoke-direct {p1, p0, v1}, Lorg/mvel2/ast/Sign$BigDecSigner;-><init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 116
    .line 117
    :goto_0
    return-void

    .line 118
    :cond_6
    new-instance v0, Lorg/mvel2/CompileException;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "illegal use of \'-\': cannot be applied to: "

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 142
    .line 143
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 144
    .line 145
    invoke-direct {v0, p1, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 146
    .line 147
    .line 148
    throw v0
.end method

.method private sign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-class v1, Ljava/lang/Object;

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lorg/mvel2/ast/Sign;->initSigner(Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    :cond_3
    iget-object v0, p0, Lorg/mvel2/ast/Sign;->signer:Lorg/mvel2/ast/Sign$Signer;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lorg/mvel2/ast/Sign$Signer;->sign(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 2
    .line 3
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 4
    .line 5
    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 6
    .line 7
    invoke-static {p1, v0, v1, p2, p3}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lorg/mvel2/ast/Sign;->sign(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Sign;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lorg/mvel2/ast/Sign;->sign(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getStatement()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Sign;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public isIdentifier()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
