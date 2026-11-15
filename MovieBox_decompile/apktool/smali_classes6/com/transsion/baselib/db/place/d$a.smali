.class Lcom/transsion/baselib/db/place/d$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/place/d;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/place/d;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/place/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/place/d$a;->a:Lcom/transsion/baselib/db/place/d;

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
    check-cast p2, Lcom/transsion/baselib/db/place/PlaceDBBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/place/d$a;->f(Ly3/e;Lcom/transsion/baselib/db/place/PlaceDBBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `place_list` (`latitude`,`longitude`,`name`,`address`,`distance`) VALUES (?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/place/PlaceDBBean;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLatitude()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->a(ID)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getLongitude()D

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->a(ID)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x3

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getAddress()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x4

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getAddress()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getDistance()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x5

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/place/PlaceDBBean;->getDistance()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p1, v1, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-void
.end method
