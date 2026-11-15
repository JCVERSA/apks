.class public Lorg/mvel2/ast/d;
.super Lorg/mvel2/ast/b;
.source "source.java"


# instance fields
.field private final b:Lorg/mvel2/integration/VariableResolverFactory;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Function;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mvel2/ast/b;-><init>(Lorg/mvel2/ast/Function;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/mvel2/ast/d;->b:Lorg/mvel2/integration/VariableResolverFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/b;->a:Lorg/mvel2/ast/Function;

    .line 2
    .line 3
    new-instance v1, Lorg/mvel2/ast/InvokationContextFactory;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/mvel2/ast/d;->b:Lorg/mvel2/integration/VariableResolverFactory;

    .line 6
    .line 7
    invoke-direct {v1, p3, v2}, Lorg/mvel2/ast/InvokationContextFactory;-><init>(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1, p4}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public c()Lorg/mvel2/integration/VariableResolverFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/d;->b:Lorg/mvel2/integration/VariableResolverFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "function_prototype:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/mvel2/ast/b;->a:Lorg/mvel2/ast/Function;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/mvel2/ast/Function;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
