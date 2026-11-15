.class public Lorg/greenrobot/greendao/generator/ToMany;
.super Lorg/greenrobot/greendao/generator/ToManyBase;
.source "SourceFile"


# instance fields
.field private sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

.field private final targetProperties:[Lorg/greenrobot/greendao/generator/Property;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Entity;[Lorg/greenrobot/greendao/generator/Property;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/greenrobot/greendao/generator/ToManyBase;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;)V

    iput-object p3, p0, Lorg/greenrobot/greendao/generator/ToMany;->sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

    iput-object p5, p0, Lorg/greenrobot/greendao/generator/ToMany;->targetProperties:[Lorg/greenrobot/greendao/generator/Property;

    return-void
.end method


# virtual methods
.method public getSourceProperties()[Lorg/greenrobot/greendao/generator/Property;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToMany;->sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

    return-object p0
.end method

.method public getTargetProperties()[Lorg/greenrobot/greendao/generator/Property;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToMany;->targetProperties:[Lorg/greenrobot/greendao/generator/Property;

    return-object p0
.end method

.method public init2ndPass()V
    .locals 5

    invoke-super {p0}, Lorg/greenrobot/greendao/generator/ToManyBase;->init2ndPass()V

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToMany;->sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->getPropertiesPk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/greenrobot/greendao/generator/Property;

    iput-object v1, p0, Lorg/greenrobot/greendao/generator/ToMany;->sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/greenrobot/greendao/generator/Property;

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/ToMany;->sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source entity has no primary key, but we need it for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToMany;->sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

    array-length v0, v0

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/ToMany;->targetProperties:[Lorg/greenrobot/greendao/generator/Property;

    array-length v1, v1

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/ToMany;->sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/greenrobot/greendao/generator/ToMany;->targetProperties:[Lorg/greenrobot/greendao/generator/Property;

    aget-object v3, v3, v1

    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/Property;->getPropertyType()Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v2

    invoke-virtual {v3}, Lorg/greenrobot/greendao/generator/Property;->getPropertyType()Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eq v2, v3, :cond_2

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning to-one property type does not match target key type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Property type uninitialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source properties do not match target properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init3rdPass()V
    .locals 0

    invoke-super {p0}, Lorg/greenrobot/greendao/generator/ToManyBase;->init3rdPass()V

    return-void
.end method

.method public setSourceProperties([Lorg/greenrobot/greendao/generator/Property;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ToMany;->sourceProperties:[Lorg/greenrobot/greendao/generator/Property;

    return-void
.end method
