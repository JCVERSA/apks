.class Lcom/cloud/hisavana/sdk/w5$a;
.super Landroidx/room/h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/w5;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/w5;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/w5;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w5$a;->d:Lcom/cloud/hisavana/sdk/w5;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/h;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `attr_impression_room` (`_id`,`pkg`,`imp_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected bridge synthetic j(Lz3/h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/cloud/hisavana/sdk/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/w5$a;->n(Lz3/h;Lcom/cloud/hisavana/sdk/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected n(Lz3/h;Lcom/cloud/hisavana/sdk/b;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/b;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/b;->c()Ljava/lang/String;

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
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/b;->c()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v1, v0}, Lz3/f;->V(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/b;->b()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-interface {p1, v2, v0, v1}, Lz3/f;->c(IJ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/b;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x4

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p1, v1}, Lz3/f;->g(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/b;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p1, v1, p2}, Lz3/f;->V(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method
