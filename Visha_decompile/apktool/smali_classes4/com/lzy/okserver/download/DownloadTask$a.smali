.class public Lcom/lzy/okserver/download/DownloadTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okserver/download/DownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lzy/okserver/download/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/lzy/okserver/download/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask$a;->a:Lcom/lzy/okserver/download/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    iget-object p0, p0, Lcom/lzy/okserver/download/DownloadTask$a;->a:Lcom/lzy/okserver/download/DownloadTask;

    invoke-static {p0, p1}, Lcom/lzy/okserver/download/DownloadTask;->access$000(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
