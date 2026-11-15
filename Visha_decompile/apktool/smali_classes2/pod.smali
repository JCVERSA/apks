.class public interface abstract Lpod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpod$a;
    }
.end annotation


# virtual methods
.method public abstract a()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM hisavana_ab_room"
    .end annotation
.end method

.method public abstract a(Lnvd;)J
    .annotation build Landroidx/room/Transaction;
    .end annotation
.end method

.method public abstract b()Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM hisavana_ab_room"
    .end annotation
.end method

.method public abstract b(Lnvd;)V
    .annotation build Landroidx/room/Transaction;
    .end annotation
.end method
