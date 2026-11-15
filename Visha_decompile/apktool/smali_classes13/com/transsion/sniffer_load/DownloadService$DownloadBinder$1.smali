.class Lcom/transsion/sniffer_load/DownloadService$DownloadBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/sniffer_load/DownloadService$b;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$DownloadBinder$1;->this$1:Lcom/transsion/sniffer_load/DownloadService$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/DownloadService$DownloadBinder$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;",
            ">;)I"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    .line 3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    if-nez v0, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-nez v3, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 7
    :cond_3
    iget-object v3, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-nez v3, :cond_4

    return v1

    .line 8
    :cond_4
    iget-object v3, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-nez v3, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v3, p0, Lcom/lzy/okgo/model/Progress;->date:J

    .line 10
    iget-object p0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v5, p0, Lcom/lzy/okgo/model/Progress;->date:J

    cmp-long p0, v3, v5

    if-lez p0, :cond_6

    return v2

    :cond_6
    if-gez p0, :cond_7

    return v1

    .line 11
    :cond_7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
