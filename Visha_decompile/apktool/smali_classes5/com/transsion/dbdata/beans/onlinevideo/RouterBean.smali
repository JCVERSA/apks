.class public Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;,
        Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;
    }
.end annotation


# instance fields
.field private forActivityResult:Z

.field private method:Ljava/lang/Integer;

.field private param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

.field private path:Ljava/lang/String;

.field private requestCode:I

.field private source:Ljava/lang/Integer;

.field private targetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->method:Ljava/lang/Integer;

    return-object p0
.end method

.method public getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->requestCode:I

    return p0
.end method

.method public getSource()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->source:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->targetClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->type:I

    return p0
.end method

.method public isForActivityResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->forActivityResult:Z

    return p0
.end method

.method public setForActivityResult(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->forActivityResult:Z

    iput p2, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->requestCode:I

    return-void
.end method

.method public setMethod(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->method:Ljava/lang/Integer;

    return-void
.end method

.method public setParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->source:Ljava/lang/Integer;

    return-void
.end method

.method public setTargetClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->targetClass:Ljava/lang/Class;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouterBean{source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->source:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->method:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->param:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
