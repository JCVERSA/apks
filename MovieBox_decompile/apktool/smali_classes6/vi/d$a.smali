.class Lvi/d$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvi/d;


# direct methods
.method constructor <init>(Lvi/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi/d$a;->a:Lvi/d;

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
    check-cast p2, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lvi/d$a;->f(Ly3/e;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `home_preferences_interval_time` (`id`,`showTime`,`closeTime`,`chooseTime`,`showIntervalSeconds`,`closeIntervalSeconds`,`chooseIntervalSeconds`) VALUES (?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x2

    .line 20
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowIntervalSeconds()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseIntervalSeconds()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x7

    .line 60
    invoke-virtual {p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseIntervalSeconds()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
