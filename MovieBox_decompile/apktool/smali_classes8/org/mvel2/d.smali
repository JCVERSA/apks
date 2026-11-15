.class public abstract Lorg/mvel2/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static a:Z

.field static b:Ljava/lang/String;

.field static c:Z

.field static d:Z

.field static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "mvel2.debug.fileoutput"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lorg/mvel2/d;->a:Z

    .line 8
    .line 9
    const-string v0, "mvel2.debugging.file"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v0, "mvel_debug.txt"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    sput-object v0, Lorg/mvel2/d;->b:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "mvel2.advanced_debugging"

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput-boolean v0, Lorg/mvel2/d;->c:Z

    .line 33
    .line 34
    const-string v0, "mvel2.weak_caching"

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sput-boolean v0, Lorg/mvel2/d;->d:Z

    .line 41
    .line 42
    const-string v0, "mvel2.disable.jit"

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sput-boolean v0, Lorg/mvel2/d;->e:Z

    .line 49
    .line 50
    const-string v0, "mvel2.invoked_meth_exceptions_bubble"

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sput-boolean v0, Lorg/mvel2/d;->f:Z

    .line 57
    .line 58
    const-string v0, "mvel2.compiler.allow_naked_meth_calls"

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sput-boolean v0, Lorg/mvel2/d;->g:Z

    .line 65
    .line 66
    const-string v0, "mvel2.compiler.allow_override_all_prophandling"

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sput-boolean v0, Lorg/mvel2/d;->h:Z

    .line 73
    .line 74
    const-string v0, "mvel2.compiler.allow_resolve_inner_classes_with_dotnotation"

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    sput-boolean v0, Lorg/mvel2/d;->i:Z

    .line 81
    .line 82
    const-string v0, "mvel2.compiler.support_java_style_class_literals"

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    sput-boolean v0, Lorg/mvel2/d;->j:Z

    .line 89
    .line 90
    const-string v0, "mvel2.compiler.allocate_type_literals_to_shared_symbol_table"

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    sput-boolean v0, Lorg/mvel2/d;->k:Z

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    sput-boolean v0, Lorg/mvel2/d;->l:Z

    .line 100
    .line 101
    const-string v0, "mvel2.optimizer"

    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    sput-boolean v0, Lorg/mvel2/d;->l:Z

    .line 114
    .line 115
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lorg/mvel2/d;->b([CLorg/mvel2/ParserContext;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static b([CLorg/mvel2/ParserContext;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CLorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lorg/mvel2/compiler/ExpressionCompiler;->setVerifyOnly(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static c([CLorg/mvel2/ParserContext;)Ljava/lang/Class;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CLorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lorg/mvel2/compiler/ExpressionCompiler;->setVerifyOnly(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->getReturnType()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static d(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/mvel2/util/m;->v0(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static e([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CIILorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/mvel2/util/m;->v0(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static f([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CLorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/mvel2/util/m;->v0(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static h([C)Ljava/io/Serializable;
    .locals 3

    .line 1
    new-instance v0, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 2
    .line 3
    new-instance v1, Lorg/mvel2/ParserContext;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/mvel2/ParserContext;-><init>()V

    .line 6
    .line 7
    .line 8
    const-class v2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0, p0, v2, v1}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static i([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 7

    .line 1
    new-instance v6, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 2
    .line 3
    const-class v4, Ljava/lang/Object;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p0

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CIILjava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method

.method public static j([CLjava/lang/Class;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static k([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 2

    .line 1
    new-instance v0, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/mvel2/compiler/CompiledAccExpression;-><init>([CLjava/lang/Class;Lorg/mvel2/ParserContext;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/MVELInterpretedRuntime;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/MVELInterpretedRuntime;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/MVELInterpretedRuntime;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/MVELInterpretedRuntime;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0, p3}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static n(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p1, Lorg/mvel2/MVELInterpretedRuntime;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p1, p0, v1, v0}, Lorg/mvel2/MVELInterpretedRuntime;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;->externalize()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0}, Lorg/mvel2/integration/impl/CachingMapVariableResolverFactory;->externalize()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, Lorg/mvel2/MVELInterpretedRuntime;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/MVELInterpretedRuntime;-><init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static p([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, Lorg/mvel2/MVELInterpretedRuntime;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/mvel2/MVELInterpretedRuntime;-><init>([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0, p5}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static q([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/MVELInterpretedRuntime;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lorg/mvel2/MVELInterpretedRuntime;-><init>([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/MVELInterpretedRuntime;->parse()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static r(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p0, Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static s(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mvel2/d;->r(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p3}, Lorg/mvel2/b;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static t(Ljava/io/Serializable;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p0, Lorg/mvel2/compiler/CompiledAccExpression;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p1, p2, p3}, Lorg/mvel2/compiler/CompiledAccExpression;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mvel2/g;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static w()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/mvel2/d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static x()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/mvel2/d;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public static y(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mvel2/g;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
