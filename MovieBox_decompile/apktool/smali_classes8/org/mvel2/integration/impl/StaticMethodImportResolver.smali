.class public Lorg/mvel2/integration/impl/StaticMethodImportResolver;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/integration/VariableResolver;


# instance fields
.field private method:Lorg/mvel2/util/MethodStub;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/mvel2/util/MethodStub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/integration/impl/StaticMethodImportResolver;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mvel2/integration/impl/StaticMethodImportResolver;->method:Lorg/mvel2/util/MethodStub;

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
    iget-object v0, p0, Lorg/mvel2/integration/impl/StaticMethodImportResolver;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/integration/impl/StaticMethodImportResolver;->getValue()Lorg/mvel2/util/MethodStub;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/mvel2/util/MethodStub;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mvel2/integration/impl/StaticMethodImportResolver;->method:Lorg/mvel2/util/MethodStub;

    return-object v0
.end method

.method public setStaticType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mvel2/util/MethodStub;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mvel2/integration/impl/StaticMethodImportResolver;->method:Lorg/mvel2/util/MethodStub;

    .line 4
    .line 5
    return-void
.end method
