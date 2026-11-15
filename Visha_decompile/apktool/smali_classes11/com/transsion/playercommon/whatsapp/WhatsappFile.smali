.class public Lcom/transsion/playercommon/whatsapp/WhatsappFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/playercommon/whatsapp/WhatsappFile;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_ALL:I = 0x0

.field public static final FILE_IMAGE:I = 0x2

.field public static final FILE_VIDEO:I = 0x1

.field public static final STATUS_DEF:I = 0x0

.field public static final STATUS_SAVED:I = 0x1

.field public static final STATUS_SAVING:I = 0x2


# instance fields
.field private documentFile:Landroidx/documentfile/provider/DocumentFile;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileType:I

.field public volatile isSelected:Z

.field private savePath:Ljava/lang/String;

.field private status:I

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/whatsapp/WhatsappFile$a;

    invoke-direct {v0}, Lcom/transsion/playercommon/whatsapp/WhatsappFile$a;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileType:I

    .line 3
    iput-object p2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileType:I

    .line 12
    iput-object p3, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    .line 13
    iput-object p2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileType:I

    .line 8
    iput-object p2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileType:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->savePath:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    iget-object v2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getDocumentFile()Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileType()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileType:I

    return p0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->savePath:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->status:I

    return p0
.end method

.method public getUri()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isDefStatus()Z
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSaved()Z
    .locals 1

    iget p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->status:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSaving()Z
    .locals 1

    iget p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->status:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    return p0
.end method

.method public isVideo()Z
    .locals 1

    iget p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDocumentFile(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFileType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileType:I

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->savePath:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->status:I

    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->uri:Ljava/net/URI;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->isSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->savePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->status:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
