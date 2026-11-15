.class public Lcom/transsion/btdownload/ui/DownloadableFileItem$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/btdownload/ui/DownloadableFileItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/transsion/btdownload/ui/DownloadableFileItem;
    .locals 0

    new-instance p0, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/ui/DownloadableFileItem;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/transsion/btdownload/ui/DownloadableFileItem;
    .locals 0

    new-array p0, p1, [Lcom/transsion/btdownload/ui/DownloadableFileItem;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/ui/DownloadableFileItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/btdownload/ui/DownloadableFileItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/ui/DownloadableFileItem$a;->b(I)[Lcom/transsion/btdownload/ui/DownloadableFileItem;

    move-result-object p0

    return-object p0
.end method
