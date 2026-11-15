.class public interface abstract Ljjd;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM hisavana_local_ab_room"
    .end annotation
.end method

.method public abstract a(Lnod;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract a(J)Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM hisavana_local_ab_room WHERE LOCAL_AB_VERSION_CODE = :versionCode"
    .end annotation
.end method

.method public abstract b(Lnod;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
