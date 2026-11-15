.class public Lorg/mvel2/compiler/ExecutableLiteral;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/compiler/ExecutableStatement;


# instance fields
.field private intOptimized:Z

.field private integer32:I

.field private literal:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lorg/mvel2/compiler/ExecutableLiteral;->integer32:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/compiler/ExecutableLiteral;->literal:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/mvel2/compiler/ExecutableLiteral;->intOptimized:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mvel2/compiler/ExecutableLiteral;->literal:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/mvel2/compiler/ExecutableLiteral;->integer32:I

    :cond_0
    return-void
.end method


# virtual methods
.method public computeTypeConversionRule()V
    .locals 0

    .line 1
    return-void
.end method

.method public getInteger32()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/compiler/ExecutableLiteral;->integer32:I

    .line 2
    .line 3
    return v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableLiteral;->literal:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Ljava/lang/Object;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getKnownIngressType()Ljava/lang/Class;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getLiteral()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/compiler/ExecutableLiteral;->literal:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p1, p0, Lorg/mvel2/compiler/ExecutableLiteral;->literal:Ljava/lang/Object;

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/mvel2/compiler/ExecutableLiteral;->literal:Ljava/lang/Object;

    return-object p1
.end method

.method public intOptimized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/mvel2/compiler/ExecutableLiteral;->intOptimized:Z

    .line 2
    .line 3
    return v0
.end method

.method public isConvertableIngressEgress()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isEmptyStatement()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isExplicitCast()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isLiteralOnly()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public setInteger32(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/compiler/ExecutableLiteral;->integer32:I

    .line 2
    .line 3
    return-void
.end method

.method public setKnownEgressType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setKnownIngressType(Ljava/lang/Class;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
