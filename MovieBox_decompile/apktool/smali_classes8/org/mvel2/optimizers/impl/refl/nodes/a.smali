.class public Lorg/mvel2/optimizers/impl/refl/nodes/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/compiler/a;


# instance fields
.field private a:Lorg/mvel2/compiler/a;

.field private b:[C

.field private c:I

.field private d:I

.field private e:Lorg/mvel2/compiler/a;

.field private f:Lorg/mvel2/ParserContext;


# direct methods
.method public constructor <init>(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/a;[CII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->a:Lorg/mvel2/compiler/a;

    .line 5
    .line 6
    iput p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->c:I

    .line 7
    .line 8
    iput p5, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->d:I

    .line 9
    .line 10
    iput-object p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b:[C

    .line 11
    .line 12
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->f:Lorg/mvel2/ParserContext;

    .line 13
    .line 14
    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->a:Lorg/mvel2/compiler/a;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    invoke-static {}, Lorg/mvel2/optimizers/b;->c()Lorg/mvel2/optimizers/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->a:Lorg/mvel2/compiler/a;

    .line 16
    .line 17
    invoke-interface {v0}, Lorg/mvel2/compiler/a;->getKnownEgressType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->f:Lorg/mvel2/ParserContext;

    .line 22
    .line 23
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b:[C

    .line 24
    .line 25
    iget v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->c:I

    .line 26
    .line 27
    iget v5, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->d:I

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    move-object v1, p1

    .line 31
    move-object v7, p2

    .line 32
    move-object v8, p3

    .line 33
    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    .line 38
    .line 39
    invoke-interface {p1}, Lorg/mvel2/optimizers/a;->getResultOptPass()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->a:Lorg/mvel2/compiler/a;

    .line 45
    .line 46
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/mvel2/compiler/a;->getKnownEgressType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/a;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/a;->e:Lorg/mvel2/compiler/a;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/a;->b(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
