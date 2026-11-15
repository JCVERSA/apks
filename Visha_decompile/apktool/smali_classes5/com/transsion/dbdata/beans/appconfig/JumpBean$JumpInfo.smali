.class public Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/appconfig/JumpBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JumpInfo"
.end annotation


# instance fields
.field private bottom_content:Ljava/lang/String;

.field private id:I

.field private jump_app_name:Ljava/lang/String;

.field private jump_app_pkg:Ljava/lang/String;

.field private jump_app_version:I

.field private jump_app_version_list:Ljava/lang/String;

.field private jump_app_version_symbol:I

.field private model:Ljava/lang/String;

.field private router_distribute_id:I

.field private router_distribute_info:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

.field final synthetic this$0:Lcom/transsion/dbdata/beans/appconfig/JumpBean;

.field private version_list:Ljava/lang/String;

.field private version_symbol:I


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/appconfig/JumpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->this$0:Lcom/transsion/dbdata/beans/appconfig/JumpBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottom_content()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->bottom_content:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->id:I

    return p0
.end method

.method public getJump_app_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_name:Ljava/lang/String;

    return-object p0
.end method

.method public getJump_app_pkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_pkg:Ljava/lang/String;

    return-object p0
.end method

.method public getJump_app_version()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version:I

    return p0
.end method

.method public getJump_app_version_symbol()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version_symbol:I

    return p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getRouter_distribute_id()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->router_distribute_id:I

    return p0
.end method

.method public getRouter_distribute_info()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->router_distribute_info:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    return-object p0
.end method

.method public getVersion_list()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->version_list:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion_symbol()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->version_symbol:I

    return p0
.end method

.method public needJump(I)Z
    .locals 3

    iget v0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version_symbol:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version:I

    if-ne p1, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-ne v0, v2, :cond_3

    iget p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version:I

    if-le p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version:I

    if-ge p1, p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public setBottom_content(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->bottom_content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->id:I

    return-void
.end method

.method public setJump_app_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_name:Ljava/lang/String;

    return-void
.end method

.method public setJump_app_pkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_pkg:Ljava/lang/String;

    return-void
.end method

.method public setJump_app_version(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version:I

    return-void
.end method

.method public setJump_app_version_list(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version_list:Ljava/lang/String;

    return-void
.end method

.method public setJump_app_version_symbol(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version_symbol:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setRouter_distribute_id(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->router_distribute_id:I

    return-void
.end method

.method public setRouter_distribute_info(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->router_distribute_info:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    return-void
.end method

.method public setVersion_list(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->version_list:Ljava/lang/String;

    return-void
.end method

.method public setVersion_symbol(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->version_symbol:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JumpInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jump_app_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", jump_app_pkg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", jump_app_version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", jump_app_version_symbol=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->jump_app_version_symbol:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bottom_content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->bottom_content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version_list="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->version_list:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", version_symbol="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->version_symbol:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", router_distribute_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->router_distribute_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", router_distribute_info=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/JumpBean$JumpInfo;->router_distribute_info:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
