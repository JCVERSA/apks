.class public Lorg/mvel2/ast/ImportNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# static fields
.field private static final WC_TEST:[C


# instance fields
.field private _offset:I

.field private importClass:Ljava/lang/Class;

.field private packageImport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/mvel2/ast/ImportNode;->WC_TEST:[C

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 2
        0x2es
        0x2as
    .end array-data
.end method

.method public constructor <init>([CIILorg/mvel2/ParserContext;)V
    .locals 4

    .line 1
    invoke-direct {p0, p4}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 11
    .line 12
    sget-object p4, Lorg/mvel2/ast/ImportNode;->WC_TEST:[C

    .line 13
    .line 14
    invoke-static {p1, p2, p3, p4}, Lorg/mvel2/util/m;->A([CII[C)Z

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x2e

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    iput-boolean v2, p0, Lorg/mvel2/ast/ImportNode;->packageImport:Z

    .line 25
    .line 26
    invoke-static {p1, p2, p3, v1}, Lorg/mvel2/util/m;->G([CIIC)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-short p1, p1

    .line 31
    iput p1, p0, Lorg/mvel2/ast/ImportNode;->_offset:I

    .line 32
    .line 33
    const/4 p2, -0x1

    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    iput v0, p0, Lorg/mvel2/ast/ImportNode;->_offset:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p4, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getClassLoader()Ljava/lang/ClassLoader;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    :try_start_0
    invoke-static {p4, v2, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, p0, Lorg/mvel2/ast/ImportNode;->importClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, "$"

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    add-int/2addr v1, v2

    .line 77
    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    :try_start_1
    invoke-static {p4, v2, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    iput-object p3, p0, Lorg/mvel2/ast/ImportNode;->importClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    :cond_1
    :goto_0
    return-void

    .line 99
    :catch_1
    new-instance p3, Lorg/mvel2/CompileException;

    .line 100
    .line 101
    new-instance p4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v0, "class not found: "

    .line 107
    .line 108
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-direct {p3, p4, p1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 124
    .line 125
    .line 126
    throw p3
.end method


# virtual methods
.method public getImportClass()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/ImportNode;->importClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageImport()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 4
    .line 5
    iget v2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 6
    .line 7
    iget v3, p0, Lorg/mvel2/ast/ImportNode;->_offset:I

    .line 8
    .line 9
    sub-int/2addr v3, v2

    .line 10
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/ImportNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean p1, p0, Lorg/mvel2/ast/ImportNode;->packageImport:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    sget-boolean p1, Lorg/mvel2/d;->k:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lorg/mvel2/ast/ImportNode;->importClass:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lorg/mvel2/ast/ImportNode;->importClass:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-interface {p3, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/mvel2/ast/ImportNode;->importClass:Ljava/lang/Class;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 24
    .line 25
    invoke-static {p3, p1}, Lorg/mvel2/util/m;->E(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Lorg/mvel2/ast/ImportNode;->importClass:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lorg/mvel2/integration/impl/ClassImportResolverFactory;->addClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    instance-of p1, p3, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    instance-of p1, p3, Lorg/mvel2/integration/impl/StackResetResolverFactory;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    move-object p1, p3

    .line 45
    check-cast p1, Lorg/mvel2/integration/impl/StackResetResolverFactory;

    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/mvel2/integration/impl/StackResetResolverFactory;->getDelegate()Lorg/mvel2/integration/VariableResolverFactory;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    instance-of p1, p1, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Lorg/mvel2/ast/ASTNode;->pCtx:Lorg/mvel2/ParserContext;

    .line 56
    .line 57
    invoke-static {p3, p1}, Lorg/mvel2/util/m;->E(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Ljava/lang/String;

    .line 62
    .line 63
    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 64
    .line 65
    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 66
    .line 67
    iget v1, p0, Lorg/mvel2/ast/ImportNode;->_offset:I

    .line 68
    .line 69
    sub-int/2addr v1, v0

    .line 70
    invoke-direct {p2, p3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lorg/mvel2/integration/impl/ClassImportResolverFactory;->addPackageImport(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    const/4 p1, 0x0

    .line 77
    return-object p1
.end method

.method public isPackageImport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/ast/ImportNode;->packageImport:Z

    .line 2
    .line 3
    return v0
.end method

.method public setPackageImport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/mvel2/ast/ImportNode;->packageImport:Z

    .line 2
    .line 3
    return-void
.end method
