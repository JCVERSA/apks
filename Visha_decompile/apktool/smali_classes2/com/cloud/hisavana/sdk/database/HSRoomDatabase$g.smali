.class public Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$g;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6

    :try_start_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->c(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    const-string v0, "adList_room"

    const-string v1, "default_ad_room"

    const-string v2, "attr_impression_room"

    const-string v3, "attr_click_room"

    const-string v4, "cloudList_room"

    const-string v5, "retry_tracking_table_room"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->d(Landroidx/sqlite/db/SupportSQLiteDatabase;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
