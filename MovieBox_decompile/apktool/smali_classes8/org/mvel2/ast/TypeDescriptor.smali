.class public Lorg/mvel2/ast/TypeDescriptor;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private arraySize:[Lorg/mvel2/ast/ArraySize;

.field private className:Ljava/lang/String;

.field private compiledArraySize:[Lorg/mvel2/compiler/ExecutableStatement;

.field endRange:I

.field private expr:[C

.field private offset:I

.field private start:I


# direct methods
.method public constructor <init>([CIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mvel2/ast/TypeDescriptor;->expr:[C

    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/ast/TypeDescriptor;->start:I

    .line 7
    .line 8
    iput p3, p0, Lorg/mvel2/ast/TypeDescriptor;->offset:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mvel2/ast/TypeDescriptor;->updateClassName([CIII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static getClassReference(Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    array-length p1, p1

    const/16 v1, 0x5b

    invoke-static {v1, p1}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "L"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p3}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getClassReference(Lorg/mvel2/ParserContext;Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4
    invoke-virtual {p2}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/mvel2/util/p;->j(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    array-length p2, p2

    const/16 v1, 0x5b

    invoke-static {v1, p2}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "L"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1, p0}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static getClassReference(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/TypeDescriptor;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 6
    const-string v0, ";"

    const-string v1, "L"

    const/16 v2, 0x5b

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    iget-object v4, p1, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p1, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 9
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lorg/mvel2/util/p;->j(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    move-object v4, p0

    goto/16 :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    array-length p1, p1

    invoke-static {v2, p1}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_3

    .line 10
    iget-object v4, p1, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    invoke-static {v4}, Lorg/mvel2/ast/TypeDescriptor;->hasContextFreeImport(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    iget-object v4, p1, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    invoke-static {v4}, Lorg/mvel2/ast/TypeDescriptor;->getContextFreeImport(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 12
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 13
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lorg/mvel2/util/p;->j(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    array-length p1, p1

    invoke-static {v2, p1}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lorg/mvel2/util/m;->v(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 16
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Lorg/mvel2/util/p;->j(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    array-length p1, p1

    invoke-static {v2, p1}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Lorg/mvel2/util/m;->D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    :goto_1
    return-object v4
.end method

.method public static getContextFreeImport(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Class;

    .line 8
    .line 9
    return-object p0
.end method

.method public static hasContextFreeImport(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of p0, p0, Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method


# virtual methods
.method public getArrayLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getArraySize()[Lorg/mvel2/ast/ArraySize;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClassReference()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/TypeDescriptor;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getClassReference(Lorg/mvel2/ParserContext;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mvel2/ParserContext;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p0}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/TypeDescriptor;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getCompiledArraySize()[Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->compiledArraySize:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndRange()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 2
    .line 3
    return v0
.end method

.method public getExpr()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->expr:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/TypeDescriptor;->offset:I

    .line 2
    .line 3
    return v0
.end method

.method public getStart()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/ast/TypeDescriptor;->start:I

    .line 2
    .line 3
    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isClass()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isUndimensionedArray()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    move v3, v1

    .line 8
    :goto_0
    if-ge v3, v2, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    iget-object v4, v4, Lorg/mvel2/ast/ArraySize;->value:[C

    .line 13
    .line 14
    array-length v4, v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v1
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEndRange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 2
    .line 3
    return-void
.end method

.method public updateClassName([CIII)V
    .locals 4

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/TypeDescriptor;->expr:[C

    .line 2
    .line 3
    if-eqz p3, :cond_9

    .line 4
    .line 5
    aget-char v0, p1, p2

    .line 6
    .line 7
    invoke-static {v0}, Lorg/mvel2/util/m;->c0(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_9

    .line 12
    .line 13
    aget-char v0, p1, p2

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    const/16 v0, 0x28

    .line 24
    .line 25
    invoke-static {v0, p2, p3, p1}, Lorg/mvel2/util/b;->a(CII[C)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    if-ne v0, v1, :cond_8

    .line 33
    .line 34
    const/16 v0, 0x5b

    .line 35
    .line 36
    invoke-static {v0, p2, p3, p1}, Lorg/mvel2/util/b;->a(CII[C)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 41
    .line 42
    if-eq v2, v1, :cond_7

    .line 43
    .line 44
    new-instance v1, Ljava/lang/String;

    .line 45
    .line 46
    sub-int/2addr v2, p2

    .line 47
    invoke-direct {v1, p1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v1, Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .line 60
    .line 61
    add-int/2addr p2, p3

    .line 62
    :goto_0
    iget p3, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 63
    .line 64
    if-ge p3, p2, :cond_4

    .line 65
    .line 66
    :goto_1
    iget p3, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 67
    .line 68
    if-ge p3, p2, :cond_1

    .line 69
    .line 70
    aget-char p3, p1, p3

    .line 71
    .line 72
    invoke-static {p3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_1

    .line 77
    .line 78
    iget p3, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 79
    .line 80
    add-int/lit8 p3, p3, 0x1

    .line 81
    .line 82
    iput p3, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget p3, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 86
    .line 87
    if-eq p3, p2, :cond_4

    .line 88
    .line 89
    aget-char v2, p1, p3

    .line 90
    .line 91
    const/16 v3, 0x7b

    .line 92
    .line 93
    if-ne v2, v3, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    if-ne v2, v0, :cond_3

    .line 97
    .line 98
    invoke-static {p1, p3, p2, v0}, Lorg/mvel2/util/m;->d([CIIC)I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    iget v2, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 103
    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    iput v2, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 107
    .line 108
    sub-int v3, p3, v2

    .line 109
    .line 110
    invoke-static {p1, v2, v3}, Lorg/mvel2/util/m;->K0([CII)[C

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 p3, p3, 0x1

    .line 118
    .line 119
    iput p3, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    new-instance p2, Lorg/mvel2/CompileException;

    .line 123
    .line 124
    const-string p3, "unexpected token in constructor"

    .line 125
    .line 126
    iget p4, p0, Lorg/mvel2/ast/TypeDescriptor;->endRange:I

    .line 127
    .line 128
    invoke-direct {p2, p3, p1, p4}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 129
    .line 130
    .line 131
    throw p2

    .line 132
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    new-array p2, p2, [Lorg/mvel2/ast/ArraySize;

    .line 141
    .line 142
    iput-object p2, p0, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    .line 143
    .line 144
    const/4 p2, 0x0

    .line 145
    move p3, p2

    .line 146
    :goto_3
    iget-object v0, p0, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    .line 147
    .line 148
    array-length v1, v0

    .line 149
    if-ge p3, v1, :cond_5

    .line 150
    .line 151
    new-instance v1, Lorg/mvel2/ast/ArraySize;

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, [C

    .line 158
    .line 159
    invoke-direct {v1, v2}, Lorg/mvel2/ast/ArraySize;-><init>([C)V

    .line 160
    .line 161
    .line 162
    aput-object v1, v0, p3

    .line 163
    .line 164
    add-int/lit8 p3, p3, 0x1

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    and-int/lit8 p1, p4, 0x10

    .line 168
    .line 169
    if-eqz p1, :cond_6

    .line 170
    .line 171
    array-length p1, v0

    .line 172
    new-array p1, p1, [Lorg/mvel2/compiler/ExecutableStatement;

    .line 173
    .line 174
    iput-object p1, p0, Lorg/mvel2/ast/TypeDescriptor;->compiledArraySize:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 175
    .line 176
    :goto_4
    iget-object p1, p0, Lorg/mvel2/ast/TypeDescriptor;->compiledArraySize:[Lorg/mvel2/compiler/ExecutableStatement;

    .line 177
    .line 178
    array-length p3, p1

    .line 179
    if-ge p2, p3, :cond_6

    .line 180
    .line 181
    iget-object p3, p0, Lorg/mvel2/ast/TypeDescriptor;->arraySize:[Lorg/mvel2/ast/ArraySize;

    .line 182
    .line 183
    aget-object p3, p3, p2

    .line 184
    .line 185
    iget-object p3, p3, Lorg/mvel2/ast/ArraySize;->value:[C

    .line 186
    .line 187
    invoke-static {p3}, Lorg/mvel2/util/m;->H0([C)Ljava/io/Serializable;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    check-cast p3, Lorg/mvel2/compiler/ExecutableStatement;

    .line 192
    .line 193
    aput-object p3, p1, p2

    .line 194
    .line 195
    add-int/lit8 p2, p2, 0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    return-void

    .line 199
    :cond_7
    new-instance p4, Ljava/lang/String;

    .line 200
    .line 201
    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iput-object p1, p0, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_8
    new-instance p3, Ljava/lang/String;

    .line 212
    .line 213
    sub-int/2addr v0, p2

    .line 214
    invoke-direct {p3, p1, p2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iput-object p1, p0, Lorg/mvel2/ast/TypeDescriptor;->className:Ljava/lang/String;

    .line 222
    .line 223
    :cond_9
    :goto_5
    return-void
.end method
