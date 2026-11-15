.class public Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceItem"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mFileExtension:Ljava/lang/String;

.field private final mIsDirectory:Z

.field private final mRelativePath:Ljava/lang/String;

.field private final mType:Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mType:Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;

    iput-object p2, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFile:Ljava/io/File;

    iput-object p3, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mRelativePath:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mIsDirectory:Z

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->extractFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    return-void
.end method

.method private extractFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFile:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFile:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mRelativePath:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mType:Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;

    return-object p0
.end method

.method public isDirectory()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mIsDirectory:Z

    return p0
.end method

.method public isImage()Z
    .locals 2

    const-string v0, "png"

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jpg"

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jpeg"

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "webp"

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isJson()Z
    .locals 1

    const-string v0, "json"

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isVideo()Z
    .locals 2

    const-string v0, "mp4"

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "avi"

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mov"

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mkv"

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isXml()Z
    .locals 1

    const-string v0, "xml"

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceItem{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mType:Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", relativePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mRelativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDirectory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->mIsDirectory:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
