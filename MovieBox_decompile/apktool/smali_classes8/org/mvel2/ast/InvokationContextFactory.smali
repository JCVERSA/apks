.class public Lorg/mvel2/ast/InvokationContextFactory;
.super Lorg/mvel2/integration/impl/MapVariableResolverFactory;
.source "source.java"


# instance fields
.field private protoContext:Lorg/mvel2/integration/VariableResolverFactory;


# direct methods
.method public constructor <init>(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/InvokationContextFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 1
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

    .line 4
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/InvokationContextFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1
.end method

.method public getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/InvokationContextFactory;->isResolveable(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public isIndexedFactory()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isResolveable(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public isTarget(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/InvokationContextFactory;->protoContext:Lorg/mvel2/integration/VariableResolverFactory;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isTarget(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
