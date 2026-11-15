.class public Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/sniff/DownloadMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadContent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private file_name:Ljava/lang/String;

.field private file_size:J

.field private file_type:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->link:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_size:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFile_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_name:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_size()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_size:J

    return-wide v0
.end method

.method public getFile_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_type:Ljava/lang/String;

    return-object p0
.end method

.method public getLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->link:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->thumbnail:Ljava/lang/String;

    return-object p0
.end method

.method public setFile_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_name:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_size:J

    return-void
.end method

.method public setFile_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_type:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->link:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadContent{thumbnail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", link=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->link:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", file_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", file_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", file_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->file_type:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
