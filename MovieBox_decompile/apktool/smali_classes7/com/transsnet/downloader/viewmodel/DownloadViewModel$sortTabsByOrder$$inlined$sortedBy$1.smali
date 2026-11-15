.class public final Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->t0(Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->z(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const v0, 0x7fffffff

    .line 18
    .line 19
    .line 20
    if-ltz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, v0

    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$sortTabsByOrder$$inlined$sortedBy$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->z(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-ltz p2, :cond_1

    .line 45
    .line 46
    move v0, p2

    .line 47
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method
