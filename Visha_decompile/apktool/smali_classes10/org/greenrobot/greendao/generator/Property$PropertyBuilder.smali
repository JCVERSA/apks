.class public Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/generator/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyBuilder"
.end annotation


# instance fields
.field private final property:Lorg/greenrobot/greendao/generator/Property;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/greenrobot/greendao/generator/Property;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/greenrobot/greendao/generator/Property;-><init>(Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Lorg/greenrobot/greendao/generator/PropertyType;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    return-void
.end method

.method private checkConvertToJavaDoc(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "    "

    invoke-static {p1, p0}, Lorg/greenrobot/greendao/generator/DaoUtil;->checkConvertToJavaDoc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public autoincrement()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0}, Lorg/greenrobot/greendao/generator/Property;->access$300(Lorg/greenrobot/greendao/generator/Property;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0}, Lorg/greenrobot/greendao/generator/Property;->access$600(Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v0

    sget-object v1, Lorg/greenrobot/greendao/generator/PropertyType;->Long:Lorg/greenrobot/greendao/generator/PropertyType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$702(Lorg/greenrobot/greendao/generator/Property;Z)Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "AUTOINCREMENT is only available to primary key properties of type long/Long"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public codeBeforeField(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$1602(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public codeBeforeGetter(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$1702(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public codeBeforeGetterAndSetter(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$1702(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$1802(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public codeBeforeSetter(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$1802(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public columnName(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->dbName(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p0

    return-object p0
.end method

.method public columnType(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->dbType(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;

    move-result-object p0

    return-object p0
.end method

.method public customType(Ljava/lang/String;Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$1202(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {p1}, Lorg/greenrobot/greendao/generator/DaoUtil;->getClassnameFromFullyQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$1302(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {p1, p2}, Lorg/greenrobot/greendao/generator/Property;->access$1402(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {p2}, Lorg/greenrobot/greendao/generator/DaoUtil;->getClassnameFromFullyQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/greenrobot/greendao/generator/Property;->access$1502(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public dbName(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$002(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$102(Lorg/greenrobot/greendao/generator/Property;Z)Z

    return-object p0
.end method

.method public dbType(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$202(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public getProperty()Lorg/greenrobot/greendao/generator/Property;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    return-object p0
.end method

.method public index()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    new-instance v0, Lorg/greenrobot/greendao/generator/Index;

    invoke-direct {v0}, Lorg/greenrobot/greendao/generator/Index;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->addProperty(Lorg/greenrobot/greendao/generator/Property;)V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v1}, Lorg/greenrobot/greendao/generator/Property;->access$1100(Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/Entity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/generator/Entity;->addIndex(Lorg/greenrobot/greendao/generator/Index;)Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public indexAsc(Ljava/lang/String;Z)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    new-instance v0, Lorg/greenrobot/greendao/generator/Index;

    invoke-direct {v0}, Lorg/greenrobot/greendao/generator/Index;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->addPropertyAsc(Lorg/greenrobot/greendao/generator/Property;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Index;->makeUnique()Lorg/greenrobot/greendao/generator/Index;

    :cond_0
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/generator/Index;->setName(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Index;

    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {p1}, Lorg/greenrobot/greendao/generator/Property;->access$1100(Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/Entity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/generator/Entity;->addIndex(Lorg/greenrobot/greendao/generator/Index;)Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public indexDesc(Ljava/lang/String;Z)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    new-instance v0, Lorg/greenrobot/greendao/generator/Index;

    invoke-direct {v0}, Lorg/greenrobot/greendao/generator/Index;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/generator/PropertyOrderList;->addPropertyDesc(Lorg/greenrobot/greendao/generator/Property;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Index;->makeUnique()Lorg/greenrobot/greendao/generator/Index;

    :cond_0
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/generator/Index;->setName(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Index;

    iget-object p1, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {p1}, Lorg/greenrobot/greendao/generator/Property;->access$1100(Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/Entity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/generator/Entity;->addIndex(Lorg/greenrobot/greendao/generator/Index;)Lorg/greenrobot/greendao/generator/Entity;

    return-object p0
.end method

.method public javaDocField(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->checkConvertToJavaDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$1902(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public javaDocGetter(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->checkConvertToJavaDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$2002(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public javaDocGetterAndSetter(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->checkConvertToJavaDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$2002(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$2102(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public javaDocSetter(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 1

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->checkConvertToJavaDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/generator/Property;->access$2102(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public nonPrimitiveType()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0}, Lorg/greenrobot/greendao/generator/Property;->access$600(Lorg/greenrobot/greendao/generator/Property;)Lorg/greenrobot/greendao/generator/PropertyType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/PropertyType;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$1002(Lorg/greenrobot/greendao/generator/Property;Z)Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Type is already non-primitive"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notNull()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$902(Lorg/greenrobot/greendao/generator/Property;Z)Z

    return-object p0
.end method

.method public primaryKey()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$302(Lorg/greenrobot/greendao/generator/Property;Z)Z

    return-object p0
.end method

.method public primaryKeyAsc()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$302(Lorg/greenrobot/greendao/generator/Property;Z)Z

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$402(Lorg/greenrobot/greendao/generator/Property;Z)Z

    return-object p0
.end method

.method public primaryKeyDesc()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$302(Lorg/greenrobot/greendao/generator/Property;Z)Z

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$502(Lorg/greenrobot/greendao/generator/Property;Z)Z

    return-object p0
.end method

.method public unique()Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;
    .locals 2

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/Property$PropertyBuilder;->property:Lorg/greenrobot/greendao/generator/Property;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/generator/Property;->access$802(Lorg/greenrobot/greendao/generator/Property;Z)Z

    return-object p0
.end method
