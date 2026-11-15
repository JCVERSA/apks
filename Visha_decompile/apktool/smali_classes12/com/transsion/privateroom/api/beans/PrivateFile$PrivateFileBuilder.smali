.class public final Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/privateroom/api/beans/PrivateFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateFileBuilder"
.end annotation


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

.method public static aPrivateFile()Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    .locals 1

    new-instance v0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;

    invoke-direct {v0}, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/transsion/privateroom/api/beans/PrivateFile;
    .locals 3

    new-instance v0, Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-direct {v0}, Lcom/transsion/privateroom/api/beans/PrivateFile;-><init>()V

    iget-object v1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->originalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setOriginalPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->hidePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setHidePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->hideFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setHideFileName(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setDuration(J)V

    iget-wide v1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->size:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setSize(J)V

    iget-wide v1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->date:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/privateroom/api/beans/PrivateFile;->setDate(J)V

    iget-object p0, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->originalFileName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/privateroom/api/beans/PrivateFile;->a(Lcom/transsion/privateroom/api/beans/PrivateFile;Ljava/lang/String;)V

    return-object v0
.end method

.method public withDate(J)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->date:J

    return-object p0
.end method

.method public withDuration(J)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->duration:J

    return-object p0
.end method

.method public withHideFileName(Ljava/lang/String;)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->hideFileName:Ljava/lang/String;

    return-object p0
.end method

.method public withHidePath(Ljava/lang/String;)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->hidePath:Ljava/lang/String;

    return-object p0
.end method

.method public withOriginalFileName(Ljava/lang/String;)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->originalFileName:Ljava/lang/String;

    return-object p0
.end method

.method public withOriginalPath(Ljava/lang/String;)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->originalPath:Ljava/lang/String;

    return-object p0
.end method

.method public withSize(J)Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/transsion/privateroom/api/beans/PrivateFile$PrivateFileBuilder;->size:J

    return-object p0
.end method
