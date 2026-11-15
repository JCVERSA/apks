.class public Lorg/greenrobot/greendao/generator/Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "default"


# instance fields
.field private final defaultJavaPackage:Ljava/lang/String;

.field private defaultJavaPackageDao:Ljava/lang/String;

.field private defaultJavaPackageTest:Ljava/lang/String;

.field private final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private hasKeepSectionsByDefault:Z

.field private final name:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private propertyToDbType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private propertyToJavaTypeNotNull:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private propertyToJavaTypeNullable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useActiveEntitiesByDefault:Z

.field private final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 8
    const-string v0, "default"

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/generator/Schema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->name:Ljava/lang/String;

    .line 3
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/greenrobot/greendao/generator/DaoUtil;->capFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->prefix:Ljava/lang/String;

    .line 4
    iput p2, p0, Lorg/greenrobot/greendao/generator/Schema;->version:I

    .line 5
    iput-object p3, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackage:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lorg/greenrobot/greendao/generator/Schema;->initTypeMappings()V

    return-void
.end method

.method private initTypeMappings()V
    .locals 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v1, Lorg/greenrobot/greendao/generator/PropertyType;->Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v3, Lorg/greenrobot/greendao/generator/PropertyType;->Byte:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v4, Lorg/greenrobot/greendao/generator/PropertyType;->Short:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v5, Lorg/greenrobot/greendao/generator/PropertyType;->Int:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v6, Lorg/greenrobot/greendao/generator/PropertyType;->Long:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v7, Lorg/greenrobot/greendao/generator/PropertyType;->Float:Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v8, "REAL"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v9, Lorg/greenrobot/greendao/generator/PropertyType;->Double:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v8, Lorg/greenrobot/greendao/generator/PropertyType;->String:Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v10, "TEXT"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v10, Lorg/greenrobot/greendao/generator/PropertyType;->ByteArray:Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v11, "BLOB"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    sget-object v11, Lorg/greenrobot/greendao/generator/PropertyType;->Date:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "boolean"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "byte"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "short"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "int"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "long"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "float"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "double"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v2, "String"

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v12, "byte[]"

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    const-string v13, "java.util.Date"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v14, "Boolean"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Byte"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Short"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Integer"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Long"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Float"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    const-string v1, "Double"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    invoke-interface {p0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private mapType(Ljava/util/Map;Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/greenrobot/greendao/generator/PropertyType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No mapping for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addEntity(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Entity;
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/generator/Entity;

    invoke-direct {v0, p0, p1}, Lorg/greenrobot/greendao/generator/Entity;-><init>(Lorg/greenrobot/greendao/generator/Schema;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addProtobufEntity(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Entity;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/generator/Schema;->addEntity(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Entity;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/generator/Entity;->useProtobuf()Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public enableActiveEntitiesByDefault()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/Schema;->useActiveEntitiesByDefault:Z

    return-void
.end method

.method public enableKeepSectionsByDefault()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/Schema;->hasKeepSectionsByDefault:Z

    return-void
.end method

.method public getDefaultJavaPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultJavaPackageDao()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultJavaPackageTest()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageTest:Ljava/lang/String;

    return-object p0
.end method

.method public getEntities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Entity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/greenrobot/greendao/generator/Schema;->version:I

    return p0
.end method

.method public init2ndPass()V
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackage:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageTest:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageTest:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->init2ndPass()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public init3rdPass()V
    .locals 1

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Schema;->entities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Entity;->init3rdPass()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isHasKeepSectionsByDefault()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Schema;->hasKeepSectionsByDefault:Z

    return p0
.end method

.method public isUseActiveEntitiesByDefault()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Schema;->useActiveEntitiesByDefault:Z

    return p0
.end method

.method public mapToDbType(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToDbType:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Schema;->mapType(Ljava/util/Map;Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mapToJavaTypeNotNull(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNotNull:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Schema;->mapType(Ljava/util/Map;Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public mapToJavaTypeNullable(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Schema;->propertyToJavaTypeNullable:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/generator/Schema;->mapType(Ljava/util/Map;Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultJavaPackageDao(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageDao:Ljava/lang/String;

    return-void
.end method

.method public setDefaultJavaPackageTest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Schema;->defaultJavaPackageTest:Ljava/lang/String;

    return-void
.end method
