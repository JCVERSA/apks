.class public Lorg/mvel2/integration/impl/StackDelimiterResolverFactory;
.super Lorg/mvel2/integration/impl/StackDemarcResolverFactory;
.source "source.java"


# direct methods
.method public constructor <init>(Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mvel2/integration/impl/StackDemarcResolverFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/integration/impl/StackDemarcResolverFactory;->getDelegate()Lorg/mvel2/integration/VariableResolverFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolverFactory;->getNextFactory()Lorg/mvel2/integration/VariableResolverFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v2}, Lorg/mvel2/integration/VariableResolverFactory;->setNextFactory(Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1}, Lorg/mvel2/integration/VariableResolverFactory;->setNextFactory(Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;

    .line 18
    .line 19
    .line 20
    return-object p1
.end method
