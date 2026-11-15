.class public Lorg/mvel2/ast/Proto$ProtoContextFactory;
.super Lorg/mvel2/integration/impl/MapVariableResolverFactory;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProtoContextFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/ast/Proto;

.field private final variableResolvers:Lorg/mvel2/util/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mvel2/util/q;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/util/q;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lorg/mvel2/util/q;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, p2, v0}, Lorg/mvel2/util/q;-><init>(Lorg/mvel2/util/q;Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 0

    .line 5
    iget-object p2, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    invoke-virtual {p2, p1}, Lorg/mvel2/util/q;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mvel2/integration/VariableResolver;

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Lorg/mvel2/integration/impl/SimpleValueResolver;

    invoke-direct {p2, p3}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    .line 7
    iget-object p3, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    invoke-virtual {p3, p1, p2}, Lorg/mvel2/util/q;->d(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p2, p3}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mvel2/integration/VariableResolver;"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1}, Lorg/mvel2/util/q;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/integration/VariableResolver;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p3, Lorg/mvel2/CompileException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "variable already defined within scope: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object p4, p2, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p2, p2, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p3, p1, p4, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p3

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/Proto$ProtoContextFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/Proto$ProtoContextFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/mvel2/UnresolveablePropertyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Lorg/mvel2/ast/Proto$ProtoResolver;

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v2, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1}, Lorg/mvel2/ast/Proto$ProtoResolver;-><init>(Lorg/mvel2/ast/Proto;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->addResolver(Ljava/lang/String;Lorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mvel2/integration/VariableResolver;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/Proto$ProtoContextFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0
    :try_end_0
    .catch Lorg/mvel2/UnresolveablePropertyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "variable already defined within scope: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v0, p3, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p3, p3, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p2, p1, v0, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    .line 6
    :cond_1
    :goto_1
    new-instance v0, Lorg/mvel2/ast/Proto$ProtoResolver;

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v2, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1, p3}, Lorg/mvel2/ast/Proto$ProtoResolver;-><init>(Lorg/mvel2/ast/Proto;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->addResolver(Ljava/lang/String;Lorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIndexedVariableNames()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->a(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/mvel2/integration/VariableResolver;

    .line 8
    .line 9
    return-object p1
.end method

.method public getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/mvel2/integration/VariableResolver;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    .line 21
    .line 22
    new-instance v1, Lorg/mvel2/ast/Proto$ProtoResolver;

    .line 23
    .line 24
    iget-object v2, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    .line 27
    .line 28
    invoke-direct {v1, v2, v3, p1}, Lorg/mvel2/ast/Proto$ProtoResolver;-><init>(Lorg/mvel2/ast/Proto;Ljava/util/Map;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lorg/mvel2/util/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_2
    new-instance v0, Lorg/mvel2/UnresolveablePropertyException;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "unable to resolve variable \'"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, "\'"

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Lorg/mvel2/UnresolveablePropertyException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public setIndexedVariableNames([Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setIndexedVariableResolver(ILorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/mvel2/util/q;->d(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method public variableIndexOf(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/mvel2/util/q;->c(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
