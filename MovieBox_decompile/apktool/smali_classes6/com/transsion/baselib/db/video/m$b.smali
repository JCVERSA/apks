.class Lcom/transsion/baselib/db/video/m$b;
.super Landroidx/room/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/video/m;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/video/m;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/video/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/m$b;->a:Lcom/transsion/baselib/db/video/m;

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
    check-cast p2, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/video/m$b;->d(Ly3/e;Lcom/transsion/baselib/db/video/ShortTVPlayBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM `short_tv_play` WHERE `subjectId` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ly3/e;Lcom/transsion/baselib/db/video/ShortTVPlayBean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubjectId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubjectId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, v1, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
