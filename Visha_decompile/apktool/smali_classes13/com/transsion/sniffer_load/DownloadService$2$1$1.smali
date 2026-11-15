.class Lcom/transsion/sniffer_load/DownloadService$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/DownloadService$2$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/transsion/sniffer_load/DownloadService$2$1;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$2$1$1;->this$2:Lcom/transsion/sniffer_load/DownloadService$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)I
    .locals 2

    .line 2
    iget-object p0, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide p0, p0, Lcom/lzy/okgo/model/Progress;->date:J

    iget-object p2, p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v0, p2, Lcom/lzy/okgo/model/Progress;->date:J

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    check-cast p2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/DownloadService$2$1$1;->compare(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)I

    move-result p0

    return p0
.end method
