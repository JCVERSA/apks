.class public Lcom/transsion/privateroom/api/beans/PrivateFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    }
.end annotation


# static fields
.field private static final PRIVATE_FILES_NAME_EXTENSION:Ljava/lang/String; = ".visha"


# instance fields
.field private date:J

.field private duration:J

.field private hideFileName:Ljava/lang/String;

.field private hidePath:Ljava/lang/String;

.field private originalFileName:Ljava/lang/String;

.field private originalPath:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/privateroom/api/beans/PrivateFile;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalFileName:Ljava/lang/String;

    return-void
.end method

.method public static isPrivateFile(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".visha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public canDelete()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->hidePath:Ljava/lang/String;

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canHide()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalPath:Ljava/lang/String;

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canRestore()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalPath:Ljava/lang/String;

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->date:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->duration:J

    return-wide v0
.end method

.method public getHideFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->hideFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getHidePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->hidePath:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 4

    iget-wide v0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalPath:Ljava/lang/String;

    invoke-static {v0}, Lzu3;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalPath:Ljava/lang/String;

    invoke-static {v0}, Lzu3;->p(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->size:J

    :cond_0
    iget-wide v0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->size:J

    return-wide v0
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->date:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->duration:J

    return-void
.end method

.method public setHideFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->hideFileName:Ljava/lang/String;

    return-void
.end method

.method public setHidePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->hidePath:Ljava/lang/String;

    return-void
.end method

.method public setOriginalFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalFileName:Ljava/lang/String;

    return-void
.end method

.method public setOriginalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalPath:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivateFile{\noriginalFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\noriginalPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->originalPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nhidePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->hidePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nhideFileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->hideFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\nduration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nsize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\ndate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/privateroom/api/beans/PrivateFile;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
