.class public Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$c;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$c;->a:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
