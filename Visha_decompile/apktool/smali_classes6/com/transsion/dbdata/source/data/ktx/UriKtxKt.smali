.class public final Lcom/transsion/dbdata/source/data/ktx/UriKtxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000c\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "getVideoMediaUriWithAppendedPath",
        "Landroid/net/Uri;",
        "mediaId",
        "",
        "getAudioMediaUriWithAppendedPath",
        "getFileMediaUriWithAppendedPath",
        "toMediaItem",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "dbdata_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getAudioMediaUriWithAppendedPath(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "withAppendedPath(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getFileMediaUriWithAppendedPath(I)Landroid/net/Uri;
    .locals 1

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "withAppendedPath(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getVideoMediaUriWithAppendedPath(I)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "withAppendedPath(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toMediaItem(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    invoke-virtual {v1, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    sget-object p0, Lge6;->a:Lge6;

    invoke-virtual {p0, v0}, Lge6;->o(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const/16 v0, 0x3e8

    int-to-long v4, v0

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    :cond_1
    return-object v1
.end method
