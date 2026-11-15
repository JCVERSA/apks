.class public final synthetic Lxv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

.field public final synthetic b:Lcom/lzy/okgo/model/Progress;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxv5;->a:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iput-object p2, p0, Lxv5;->b:Lcom/lzy/okgo/model/Progress;

    iput-object p3, p0, Lxv5;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lxv5;->a:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v1, p0, Lxv5;->b:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lxv5;->c:Ljava/io/File;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->o(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/io/File;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
