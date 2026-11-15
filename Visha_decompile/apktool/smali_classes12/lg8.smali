.class public final synthetic Llg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic b:Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

.field public final synthetic c:Landroid/media/MediaMetadataRetriever;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;Landroid/media/MediaMetadataRetriever;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llg8;->b:Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    iput-object p2, p0, Llg8;->c:Landroid/media/MediaMetadataRetriever;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Llg8;->b:Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;

    iget-object p0, p0, Llg8;->c:Landroid/media/MediaMetadataRetriever;

    invoke-static {v0, p0, p1}, Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;->a(Lcom/transsion/privateroom/privateroom/PrivateFileDataProvider;Landroid/media/MediaMetadataRetriever;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
