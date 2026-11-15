.class Lcom/transsion/baselib/db/place/d$b;
.super Landroidx/room/e;
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
    iput-object p1, p0, Lcom/transsion/baselib/db/place/d$b;->a:Lcom/transsion/baselib/db/place/d;

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
    check-cast p2, Lcom/transsion/baselib/db/place/PlaceDBBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/place/d$b;->d(Ly3/e;Lcom/transsion/baselib/db/place/PlaceDBBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM `place_list` WHERE `latitude` = ? AND `longitude` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ly3/e;Lcom/transsion/baselib/db/place/PlaceDBBean;)V
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
    return-void
.end method
