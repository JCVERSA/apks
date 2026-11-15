.class public Lorg/mvel2/integration/impl/IndexVariableResolver;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/integration/VariableResolver;


# instance fields
.field private indexPos:I

.field private vars:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->indexPos:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->vars:[Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->vars:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->indexPos:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    return-object v0
.end method

.method public setStaticType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->vars:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/integration/impl/IndexVariableResolver;->indexPos:I

    .line 4
    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    return-void
.end method
