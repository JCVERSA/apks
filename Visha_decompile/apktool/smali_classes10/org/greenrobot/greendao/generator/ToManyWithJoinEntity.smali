.class public Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;
.super Lorg/greenrobot/greendao/generator/ToManyBase;
.source "SourceFile"


# instance fields
.field private final joinEntity:Lorg/greenrobot/greendao/generator/Entity;

.field private final sourceProperty:Lorg/greenrobot/greendao/generator/Property;

.field private final targetProperty:Lorg/greenrobot/greendao/generator/Property;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Property;Lorg/greenrobot/greendao/generator/Property;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/generator/ToManyBase;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/Entity;)V

    iput-object p4, p0, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;->joinEntity:Lorg/greenrobot/greendao/generator/Entity;

    iput-object p5, p0, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;->sourceProperty:Lorg/greenrobot/greendao/generator/Property;

    iput-object p6, p0, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;->targetProperty:Lorg/greenrobot/greendao/generator/Property;

    return-void
.end method


# virtual methods
.method public getJoinEntity()Lorg/greenrobot/greendao/generator/Entity;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;->joinEntity:Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public getSourceProperty()Lorg/greenrobot/greendao/generator/Property;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;->sourceProperty:Lorg/greenrobot/greendao/generator/Property;

    return-object p0
.end method

.method public getTargetProperty()Lorg/greenrobot/greendao/generator/Property;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ToManyWithJoinEntity;->targetProperty:Lorg/greenrobot/greendao/generator/Property;

    return-object p0
.end method

.method public init3rdPass()V
    .locals 3

    invoke-super {p0}, Lorg/greenrobot/greendao/generator/ToManyBase;->init3rdPass()V

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->sourceEntity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->getPropertiesPk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ToManyBase;->targetEntity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->getPropertiesPk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target entity has no primary key, but we need it for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
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
.end method
