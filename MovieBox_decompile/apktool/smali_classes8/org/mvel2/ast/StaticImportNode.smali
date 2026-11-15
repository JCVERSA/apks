.class public Lorg/mvel2/ast/StaticImportNode;
.super Lorg/mvel2/ast/ASTNode;
.source "source.java"


# instance fields
.field private declaringClass:Ljava/lang/Class;

.field private transient method:Ljava/lang/reflect/Method;

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>([CIILorg/mvel2/ParserContext;)V
    .locals 3

    .line 1
    invoke-direct {p0, p4}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    new-instance v0, Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 17
    .line 18
    const/16 v1, 0x2e

    .line 19
    .line 20
    invoke-static {v1, p2, p3, p1}, Lorg/mvel2/util/b;->b(CII[C)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-int v2, v1, p2

    .line 25
    .line 26
    invoke-direct {v0, p1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-static {v0, v2, p4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    iput-object p4, p0, Lorg/mvel2/ast/StaticImportNode;->declaringClass:Ljava/lang/Class;

    .line 35
    .line 36
    new-instance p4, Ljava/lang/String;

    .line 37
    .line 38
    add-int/2addr v1, v2

    .line 39
    sub-int v0, v1, p2

    .line 40
    .line 41
    sub-int/2addr p3, v0

    .line 42
    invoke-direct {p4, p1, v1, p3}, Ljava/lang/String;-><init>([CII)V

    .line 43
    .line 44
    .line 45
    iput-object p4, p0, Lorg/mvel2/ast/StaticImportNode;->methodName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {p0}, Lorg/mvel2/ast/StaticImportNode;->resolveMethod()Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    new-instance p3, Lorg/mvel2/CompileException;

    .line 55
    .line 56
    new-instance p4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "can not find method for static import: "

    .line 62
    .line 63
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lorg/mvel2/ast/StaticImportNode;->declaringClass:Ljava/lang/Class;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, "."

    .line 76
    .line 77
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lorg/mvel2/ast/StaticImportNode;->methodName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-direct {p3, p4, p1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 90
    .line 91
    .line 92
    throw p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception p3

    .line 94
    new-instance p4, Lorg/mvel2/CompileException;

    .line 95
    .line 96
    const-string v0, "unable to import class"

    .line 97
    .line 98
    invoke-direct {p4, v0, p1, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p4
.end method

.method private resolveMethod()Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/StaticImportNode;->declaringClass:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lorg/mvel2/ast/StaticImportNode;->methodName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iput-object v3, p0, Lorg/mvel2/ast/StaticImportNode;->method:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    return-object v3

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/StaticImportNode;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/StaticImportNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mvel2/ast/StaticImportNode;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p2, p0, Lorg/mvel2/ast/StaticImportNode;->method:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/mvel2/ast/StaticImportNode;->resolveMethod()Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lorg/mvel2/ast/StaticImportNode;->method:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    :cond_0
    invoke-interface {p3, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method
