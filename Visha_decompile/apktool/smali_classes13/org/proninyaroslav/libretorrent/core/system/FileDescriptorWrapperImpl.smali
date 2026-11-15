.class Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapper;


# instance fields
.field public b:Landroid/content/ContentResolver;

.field public c:Landroid/net/Uri;

.field public d:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;->b:Landroid/content/ContentResolver;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/system/FileDescriptorWrapperImpl;->d:Landroid/os/ParcelFileDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    :goto_0
    return-object p0
.end method
