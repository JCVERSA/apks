.class public Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private expr:[C

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private offset:I

.field private pCtx:Lorg/mvel2/ParserContext;

.field private start:I


# direct methods
.method public constructor <init>([CIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->start:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->offset:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->pCtx:Lorg/mvel2/ParserContext;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lorg/mvel2/optimizers/b;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/mvel2/optimizers/b;->b(Ljava/lang/String;)Lorg/mvel2/optimizers/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->pCtx:Lorg/mvel2/ParserContext;

    .line 16
    .line 17
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->expr:[C

    .line 18
    .line 19
    iget v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->start:I

    .line 20
    .line 21
    iget v5, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->offset:I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    const/4 v9, 0x1

    .line 28
    move-object v6, p1

    .line 29
    move-object v7, p2

    .line 30
    move-object v8, p3

    .line 31
    invoke-interface/range {v1 .. v10}, Lorg/mvel2/optimizers/a;->optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe$1;

    .line 36
    .line 37
    invoke-direct {v1, p0, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe$1;-><init>(Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;Lorg/mvel2/compiler/a;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 43
    .line 44
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/AccessorNode;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 2
    .line 3
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/AccessorNode;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
