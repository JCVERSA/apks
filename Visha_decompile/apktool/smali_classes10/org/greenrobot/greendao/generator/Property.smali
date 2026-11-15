.class public Lorg/greenrobot/greendao/generator/Property;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    }
.end annotation


# instance fields
.field private codeBeforeField:Ljava/lang/String;

.field private codeBeforeGetter:Ljava/lang/String;

.field private codeBeforeSetter:Ljava/lang/String;

.field private constraints:Ljava/lang/String;

.field private converter:Ljava/lang/String;

.field private converterClassName:Ljava/lang/String;

.field private customType:Ljava/lang/String;

.field private customTypeClassName:Ljava/lang/String;

.field private dbName:Ljava/lang/String;

.field private dbType:Ljava/lang/String;

.field private final entity:Lorg/greenrobot/greendao/generator/Entity;

.field private index:Lorg/greenrobot/greendao/generator/Index;

.field private javaDocField:Ljava/lang/String;

.field private javaDocGetter:Ljava/lang/String;

.field private javaDocSetter:Ljava/lang/String;

.field private javaType:Ljava/lang/String;

.field private nonDefaultDbName:Z

.field private nonPrimitiveType:Z

.field private notNull:Z

.field private ordinal:I

.field private pkAsc:Z

.field private pkAutoincrement:Z

.field private pkDesc:Z

.field private primaryKey:Z

.field private final propertyName:Ljava/lang/String;

.field private propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

.field private final schema:Lorg/greenrobot/greendao/generator/Schema;

.field private unique:Z


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->schema:Lorg/greenrobot/greendao/generator/Schema;

    iput-object p2, p0, Lorg/greenrobot/greendao/generator/Property;->entity:Lorg/greenrobot/greendao/generator/Entity;

    iput-object p4, p0, Lorg/greenrobot/greendao/generator/Property;->propertyName:Ljava/lang/String;

    iput-object p3, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    return-void
.end method

.method public static synthetic access$002(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->dbName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1002(Lorg/greenrobot/greendao/generator/Property;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Property;->nonPrimitiveType:Z

    return p1
.end method

.method public static synthetic access$102(Lorg/greenrobot/greendao/generator/Property;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Property;->nonDefaultDbName:Z

    return p1
.end method

.method public static synthetic access$1100(Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/Entity;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->entity:Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public static synthetic access$1202(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->customType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1302(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->customTypeClassName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1402(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->converter:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1502(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->converterClassName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1602(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->codeBeforeField:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1702(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->codeBeforeGetter:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1802(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->codeBeforeSetter:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1902(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->javaDocField:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2002(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->javaDocGetter:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->dbType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2102(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->javaDocSetter:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lorg/greenrobot/greendao/generator/Property;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Property;->primaryKey:Z

    return p0
.end method

.method public static synthetic access$302(Lorg/greenrobot/greendao/generator/Property;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Property;->primaryKey:Z

    return p1
.end method

.method public static synthetic access$402(Lorg/greenrobot/greendao/generator/Property;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Property;->pkAsc:Z

    return p1
.end method

.method public static synthetic access$502(Lorg/greenrobot/greendao/generator/Property;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Property;->pkDesc:Z

    return p1
.end method

.method public static synthetic access$600(Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/PropertyType;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    return-object p0
.end method

.method public static synthetic access$702(Lorg/greenrobot/greendao/generator/Property;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Property;->pkAutoincrement:Z

    return p1
.end method

.method public static synthetic access$802(Lorg/greenrobot/greendao/generator/Property;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Property;->unique:Z

    return p1
.end method

.method public static synthetic access$902(Lorg/greenrobot/greendao/generator/Property;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Property;->notNull:Z

    return p1
.end method

.method private initConstraint()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->primaryKey:Z

    if-eqz v1, :cond_2

    const-string v1, "PRIMARY KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->pkAsc:Z

    if-eqz v1, :cond_0

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->pkDesc:Z

    if-eqz v1, :cond_1

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->pkAutoincrement:Z

    if-eqz v1, :cond_2

    const-string v1, " AUTOINCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->notNull:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->primaryKey:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    sget-object v2, Lorg/greenrobot/greendao/generator/PropertyType;->String:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->unique:Z

    if-eqz v1, :cond_5

    const-string v1, " UNIQUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    iput-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->constraints:Ljava/lang/String;

    :cond_6
    return-void
.end method


# virtual methods
.method public getCodeBeforeField()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->codeBeforeField:Ljava/lang/String;

    return-object p0
.end method

.method public getCodeBeforeGetter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->codeBeforeGetter:Ljava/lang/String;

    return-object p0
.end method

.method public getCodeBeforeSetter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->codeBeforeSetter:Ljava/lang/String;

    return-object p0
.end method

.method public getConstraints()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->constraints:Ljava/lang/String;

    return-object p0
.end method

.method public getConverter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->converter:Ljava/lang/String;

    return-object p0
.end method

.method public getConverterClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->converterClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->customType:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomTypeClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->customTypeClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getDatabaseValueExpression()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->propertyName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/generator/Property;->getDatabaseValueExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDatabaseValueExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->customType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Converter.convertToDatabaseValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->customType:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/16 p1, 0x29

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    sget-object p1, Lorg/greenrobot/greendao/generator/PropertyType;->Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne p0, p1, :cond_2

    .line 9
    const-string p0, " ? 1L: 0L"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lorg/greenrobot/greendao/generator/PropertyType;->Date:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne p0, p1, :cond_3

    .line 11
    const-string p0, ".getTime()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDatabaseValueExpressionNotNull()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entity.get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyName:Ljava/lang/String;

    invoke-static {v1}, Lorg/greenrobot/greendao/generator/DaoUtil;->capFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/generator/Property;->getDatabaseValueExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->dbName:Ljava/lang/String;

    return-object p0
.end method

.method public getDbType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->dbType:Ljava/lang/String;

    return-object p0
.end method

.method public getEntity()Lorg/greenrobot/greendao/generator/Entity;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->entity:Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public getEntityValueExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->customType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Converter.convertToEntityProperty("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    sget-object v2, Lorg/greenrobot/greendao/generator/PropertyType;->Byte:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne v1, v2, :cond_1

    const-string v1, "(byte) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/greenrobot/greendao/generator/PropertyType;->Date:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne v1, v2, :cond_2

    const-string v1, "new java.util.Date("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    sget-object v1, Lorg/greenrobot/greendao/generator/PropertyType;->Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne p1, v1, :cond_3

    const-string p1, " != 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/greenrobot/greendao/generator/PropertyType;->Date:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne p1, v1, :cond_4

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->customType:Ljava/lang/String;

    if-eqz p0, :cond_5

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()Lorg/greenrobot/greendao/generator/Index;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->index:Lorg/greenrobot/greendao/generator/Index;

    return-object p0
.end method

.method public getJavaDocField()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->javaDocField:Ljava/lang/String;

    return-object p0
.end method

.method public getJavaDocGetter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->javaDocGetter:Ljava/lang/String;

    return-object p0
.end method

.method public getJavaDocSetter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->javaDocSetter:Ljava/lang/String;

    return-object p0
.end method

.method public getJavaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->javaType:Ljava/lang/String;

    return-object p0
.end method

.method public getJavaTypeInEntity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->customTypeClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->javaType:Ljava/lang/String;

    return-object p0
.end method

.method public getOrdinal()I
    .locals 0

    iget p0, p0, Lorg/greenrobot/greendao/generator/Property;->ordinal:I

    return p0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->propertyName:Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyType()Lorg/greenrobot/greendao/generator/PropertyType;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    return-object p0
.end method

.method public init2ndPass()V
    .locals 4

    invoke-direct {p0}, Lorg/greenrobot/greendao/generator/Property;->initConstraint()V

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->dbType:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->schema:Lorg/greenrobot/greendao/generator/Schema;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/generator/Schema;->mapToDbType(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->dbType:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->dbName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->propertyName:Ljava/lang/String;

    invoke-static {v0}, Lorg/greenrobot/greendao/generator/DaoUtil;->dbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->dbName:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->nonDefaultDbName:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lorg/greenrobot/greendao/generator/Property;->primaryKey:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    sget-object v3, Lorg/greenrobot/greendao/generator/PropertyType;->Long:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne v2, v3, :cond_2

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/greenrobot/greendao/generator/Property;->nonDefaultDbName:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Property;->notNull:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Property;->nonPrimitiveType:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->schema:Lorg/greenrobot/greendao/generator/Schema;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/generator/Schema;->mapToJavaTypeNotNull(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->javaType:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->schema:Lorg/greenrobot/greendao/generator/Schema;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/generator/Schema;->mapToJavaTypeNullable(Lorg/greenrobot/greendao/generator/PropertyType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Property;->javaType:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public init3ndPass()V
    .locals 0

    return-void
.end method

.method public isAutoincrement()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Property;->pkAutoincrement:Z

    return p0
.end method

.method public isNonDefaultDbName()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Property;->nonDefaultDbName:Z

    return p0
.end method

.method public isNonPrimitiveType()Z
    .locals 1

    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/Property;->nonPrimitiveType:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/generator/PropertyType;->isScalar()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNotNull()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Property;->notNull:Z

    return p0
.end method

.method public isPkAsc()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Property;->pkAsc:Z

    return p0
.end method

.method public isPkDesc()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Property;->pkDesc:Z

    return p0
.end method

.method public isPrimaryKey()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Property;->primaryKey:Z

    return p0
.end method

.method public isUnique()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Property;->unique:Z

    return p0
.end method

.method public setIndex(Lorg/greenrobot/greendao/generator/Index;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->index:Lorg/greenrobot/greendao/generator/Index;

    return-void
.end method

.method public setOrdinal(I)V
    .locals 0

    iput p1, p0, Lorg/greenrobot/greendao/generator/Property;->ordinal:I

    return-void
.end method

.method public setPropertyType(Lorg/greenrobot/greendao/generator/PropertyType;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyType:Lorg/greenrobot/greendao/generator/PropertyType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property;->entity:Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
