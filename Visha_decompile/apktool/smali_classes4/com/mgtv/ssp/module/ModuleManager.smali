.class public Lcom/mgtv/ssp/module/ModuleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_INIT:Ljava/lang/String; = "INIT"

.field public static final MODULE_DOWN:Ljava/lang/String; = "module_download"

.field public static final MODULE_SSP:Ljava/lang/String; = "module_ssp"

.field public static final WHAT_REPORT_DOWN:I = 0x1

.field private static inst:Lcom/mgtv/ssp/module/ModuleManager;


# instance fields
.field moduleDownload:Lcom/mgtv/ssp/module/ModuleInterface;

.field moduleSsp:Lcom/mgtv/ssp/module/ModuleInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInst()Lcom/mgtv/ssp/module/ModuleManager;
    .locals 2

    sget-object v0, Lcom/mgtv/ssp/module/ModuleManager;->inst:Lcom/mgtv/ssp/module/ModuleManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/mgtv/ssp/module/ModuleManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/module/ModuleManager;->inst:Lcom/mgtv/ssp/module/ModuleManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/ssp/module/ModuleManager;

    invoke-direct {v1}, Lcom/mgtv/ssp/module/ModuleManager;-><init>()V

    sput-object v1, Lcom/mgtv/ssp/module/ModuleManager;->inst:Lcom/mgtv/ssp/module/ModuleManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/ssp/module/ModuleManager;->inst:Lcom/mgtv/ssp/module/ModuleManager;

    return-object v0
.end method

.method public static getModuleIntInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moduleName down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "module_download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleDownload()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleDownload()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/module/ModuleInterface;->getModuleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "moduleName down mothed args is empty"

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return p3
.end method

.method public static getModuleObjectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "module_download"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleDownload()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleDownload()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/module/ModuleInterface;->getModuleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getModuleStringInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "module_download"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleDownload()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleDownload()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/module/ModuleInterface;->getModuleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static isInited()Z
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Module isInited "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleSsp()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleSsp()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object v0

    const-string v1, "INIT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mgtv/ssp/module/ModuleInterface;->getModuleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v1, "Module isInited  == null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs reportDownload([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Module reportDownload "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleSsp()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mgtv/ssp/module/ModuleManager;->getInst()Lcom/mgtv/ssp/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/module/ModuleManager;->getModuleSsp()Lcom/mgtv/ssp/module/ModuleInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0}, Lcom/mgtv/ssp/module/ModuleInterface;->noticeModule(I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Module reportDownload getModuleSsp == null"

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getModuleDownload()Lcom/mgtv/ssp/module/ModuleInterface;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/module/ModuleManager;->moduleDownload:Lcom/mgtv/ssp/module/ModuleInterface;

    return-object p0
.end method

.method public getModuleSsp()Lcom/mgtv/ssp/module/ModuleInterface;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/module/ModuleManager;->moduleSsp:Lcom/mgtv/ssp/module/ModuleInterface;

    return-object p0
.end method

.method public setModuleDownload(Lcom/mgtv/ssp/module/ModuleInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/module/ModuleManager;->moduleDownload:Lcom/mgtv/ssp/module/ModuleInterface;

    return-void
.end method

.method public setModuleSsp(Lcom/mgtv/ssp/module/ModuleInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/module/ModuleManager;->moduleSsp:Lcom/mgtv/ssp/module/ModuleInterface;

    return-void
.end method
