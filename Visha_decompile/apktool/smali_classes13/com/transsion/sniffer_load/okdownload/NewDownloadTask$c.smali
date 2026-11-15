.class public Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$c;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$c;->a:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
