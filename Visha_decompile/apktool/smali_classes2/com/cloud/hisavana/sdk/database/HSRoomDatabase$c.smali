.class public Lcom/cloud/hisavana/sdk/database/HSRoomDatabase$c;
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
    .locals 0

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->c(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->f(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->i(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method
