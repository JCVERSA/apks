.class public Lorg/greenrobot/greendao/generator/ContentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private authority:Ljava/lang/String;

.field private basePath:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private javaPackage:Ljava/lang/String;

.field private readOnly:Z

.field private schema:Lorg/greenrobot/greendao/generator/Schema;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Schema;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/generator/Schema;",
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/generator/Entity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->schema:Lorg/greenrobot/greendao/generator/Schema;

    iput-object p2, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->entities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->className:Ljava/lang/String;

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

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->entities:Ljava/util/List;

    return-object p0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->javaPackage:Ljava/lang/String;

    return-object p0
.end method

.method public init2ndPass()V
    .locals 3

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->authority:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Schema;->getDefaultJavaPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->authority:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->basePath:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->basePath:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->className:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->entities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/generator/Entity;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ContentProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->className:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->javaPackage:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->schema:Lorg/greenrobot/greendao/generator/Schema;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/generator/Schema;->getDefaultJavaPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->javaPackage:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public isReadOnly()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->readOnly:Z

    return p0
.end method

.method public readOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->readOnly:Z

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->authority:Ljava/lang/String;

    return-void
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->basePath:Ljava/lang/String;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->className:Ljava/lang/String;

    return-void
.end method

.method public setJavaPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/ContentProvider;->javaPackage:Ljava/lang/String;

    return-void
.end method
