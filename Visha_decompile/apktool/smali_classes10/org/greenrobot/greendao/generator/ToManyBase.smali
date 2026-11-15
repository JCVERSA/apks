.class public abstract Lorg/greenrobot/greendao/generator/ToManyBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private final propertyOrderList:Lorg/greenrobot/greendao/generator/PropertyOrderList;

.field private final schema:Lorg/greenrobot/greendao/generator/Schema;

.field protected final sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

.field protected final targetEntity:Lorg/greenrobot/greendao/generator/Entity;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->schema:Lorg/greenrobot/greendao/generator/Schema;

    iput-object p2, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

    iput-object p3, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    new-instance p1, Lorg/greenrobot/greendao/generator/PropertyOrderList;

    invoke-direct {p1}, Lorg/greenrobot/greendao/generator/PropertyOrderList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->propertyOrderList:Lorg/greenrobot/greendao/generator/PropertyOrderList;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->propertyOrderList:Lorg/greenrobot/greendao/generator/PropertyOrderList;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->propertyOrderList:Lorg/greenrobot/greendao/generator/PropertyOrderList;

    const-string v0, "T"

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->getCommaSeparatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOrderSpec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->propertyOrderList:Lorg/greenrobot/greendao/generator/PropertyOrderList;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->propertyOrderList:Lorg/greenrobot/greendao/generator/PropertyOrderList;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->getOrderSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSourceEntity()Lorg/greenrobot/greendao/generator/Entity;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public getTargetEntity()Lorg/greenrobot/greendao/generator/Entity;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public init2ndPass()V
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v2, v0, v1

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "List"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public init3rdPass()V
    .locals 0

    return-void
.end method

.method public varargs orderAsc([Lorg/greenrobot/greendao/generator/Property;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/generator/Entity;->validatePropertyExists(Lorg/greenrobot/greendao/generator/Property;)V

    iget-object v3, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->propertyOrderList:Lorg/greenrobot/greendao/generator/PropertyOrderList;

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->addPropertyAsc(Lorg/greenrobot/greendao/generator/Property;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs orderDesc([Lorg/greenrobot/greendao/generator/Property;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/generator/Entity;->validatePropertyExists(Lorg/greenrobot/greendao/generator/Property;)V

    iget-object v3, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->propertyOrderList:Lorg/greenrobot/greendao/generator/PropertyOrderList;

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->addPropertyDesc(Lorg/greenrobot/greendao/generator/Property;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToMany \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' from "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
