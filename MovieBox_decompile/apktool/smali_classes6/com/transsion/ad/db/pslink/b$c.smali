.class Lcom/transsion/ad/db/pslink/b$c;
.super Landroidx/room/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/db/pslink/b;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/db/pslink/b;


# direct methods
.method constructor <init>(Lcom/transsion/ad/db/pslink/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/b$c;->a:Lcom/transsion/ad/db/pslink/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/db/pslink/b$c;->d(Ly3/e;Lcom/transsion/ad/db/pslink/AttributionPoint;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE OR ABORT `attribution_points` SET `id` = ?,`psId` = ?,`failCount` = ?,`reportUrl` = ?,`type` = ?,`updateTimestamp` = ? WHERE `id` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ly3/e;Lcom/transsion/ad/db/pslink/AttributionPoint;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

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
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getFailCount()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-long v0, v0

    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x4

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b$c;->a:Lcom/transsion/ad/db/pslink/b;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/transsion/ad/db/pslink/b;->k(Lcom/transsion/ad/db/pslink/b;)Lcom/transsion/ad/db/pslink/AttributionPoint$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/pslink/AttributionPoint$b;->a(Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x5

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    const/4 v0, 0x6

    .line 80
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getUpdateTimestamp()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    int-to-long v0, p2

    .line 92
    const/4 p2, 0x7

    .line 93
    invoke-interface {p1, p2, v0, v1}, Ly3/e;->c(IJ)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
