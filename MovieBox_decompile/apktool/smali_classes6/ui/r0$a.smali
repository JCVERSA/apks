.class Lui/r0$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/r0;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui/r0;


# direct methods
.method constructor <init>(Lui/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/r0$a;->a:Lui/r0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lui/r0$a;->f(Ly3/e;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `download_thread_range` (`threadId`,`rangeId`,`resourceId`,`start`,`end`,`progress`) VALUES (?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-long v0, v0

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x3

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 v0, 0x4

    .line 38
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x5

    .line 46
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x6

    .line 54
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
