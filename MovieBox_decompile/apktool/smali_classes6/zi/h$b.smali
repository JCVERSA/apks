.class Lzi/h$b;
.super Landroidx/room/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzi/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzi/h;


# direct methods
.method constructor <init>(Lzi/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzi/h$b;->a:Lzi/h;

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
    check-cast p2, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lzi/h$b;->d(Ly3/e;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM `msg` WHERE `id` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ly3/e;Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    int-to-long v0, p2

    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-interface {p1, p2, v0, v1}, Ly3/e;->c(IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
