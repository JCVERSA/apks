.class Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$g;
.super Lx3/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lx3/b;-><init>(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Lz3/d;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->i0(Lz3/d;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "adList_room"

    .line 5
    .line 6
    const-string v1, "default_ad_room"

    .line 7
    .line 8
    const-string v2, "attr_impression_room"

    .line 9
    .line 10
    const-string v3, "attr_click_room"

    .line 11
    .line 12
    const-string v4, "cloudList_room"

    .line 13
    .line 14
    const-string v5, "retry_tracking_table_room"

    .line 15
    .line 16
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->j0(Lz3/d;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    return-void
.end method
