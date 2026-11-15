.class public abstract synthetic Lcom/transsnet/downloader/w;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static bridge synthetic a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
