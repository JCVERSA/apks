.class public Lcom/transsion/btdownload/ui/DownloadableFileItem;
.super Lcom/transsion/btdownload/ui/FileItem;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/btdownload/ui/DownloadableFileItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public selected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/btdownload/ui/DownloadableFileItem$a;

    invoke-direct {v0}, Lcom/transsion/btdownload/ui/DownloadableFileItem$a;-><init>()V

    sput-object v0, Lcom/transsion/btdownload/ui/DownloadableFileItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/btdownload/ui/FileItem;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    return-void
.end method

.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;)V
    .locals 6
    .param p1    # Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->isFile()Z

    move-result v3

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/btdownload/ui/FileItem;-><init>(ILjava/lang/String;ZJ)V

    .line 2
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->isSelected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadableFileItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/transsion/btdownload/ui/FileItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/btdownload/ui/FileItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p0, p0, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
