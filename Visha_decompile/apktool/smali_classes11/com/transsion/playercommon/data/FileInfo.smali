.class public Lcom/transsion/playercommon/data/FileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILENAME_MAX_LENGTH:I = 0xff

.field private static final TAG:Ljava/lang/String; = "FileInfo"


# instance fields
.field public id:J

.field private final mAbsolutePath:Ljava/lang/String;

.field private final mFile:Ljava/io/File;

.field private mFileSizeStr:Ljava/lang/String;

.field private final mIsDir:Z

.field private mIsMountPoint:Z

.field private final mName:Ljava/lang/String;

.field private mParentPath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field public srcId:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/playercommon/data/FileInfo;->mParentPath:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/playercommon/data/FileInfo;->mFileSizeStr:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/transsion/playercommon/data/FileInfo;->id:J

    if-eqz p1, :cond_1

    .line 5
    iput-object p1, p0, Lcom/transsion/playercommon/data/FileInfo;->mFile:Ljava/io/File;

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/data/FileInfo;->mName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/data/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/data/FileInfo;->mIsDir:Z

    if-eqz p1, :cond_0

    .line 9
    sget p1, Lcom/transsion/playercommon/R$drawable;->ic_folder:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$drawable;->ic_subtitle_local:I

    :goto_0
    iput p1, p0, Lcom/transsion/playercommon/data/FileInfo;->srcId:I

    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/transsion/playercommon/data/FileInfo;->mParentPath:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/transsion/playercommon/data/FileInfo;->mFileSizeStr:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/transsion/playercommon/data/FileInfo;->id:J

    if-eqz p1, :cond_1

    .line 15
    iput-object p1, p0, Lcom/transsion/playercommon/data/FileInfo;->mAbsolutePath:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/playercommon/data/FileInfo;->mFile:Ljava/io/File;

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/data/FileInfo;->mName:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/data/FileInfo;->mIsDir:Z

    if-eqz p1, :cond_0

    .line 19
    sget p1, Lcom/transsion/playercommon/R$drawable;->ic_folder:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$drawable;->ic_subtitle_local:I

    :goto_0
    iput p1, p0, Lcom/transsion/playercommon/data/FileInfo;->srcId:I

    return-void

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/FileInfo;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/FileInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/FileInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isMountPoint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/data/FileInfo;->mIsMountPoint:Z

    return p0
.end method

.method public setIsMountPoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/data/FileInfo;->mIsMountPoint:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/FileInfo;->name:Ljava/lang/String;

    return-void
.end method
