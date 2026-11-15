.class public Lpgd$e;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpgd;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpgd;


# direct methods
.method public constructor <init>(Lpgd;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lpgd$e;->a:Lpgd;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = 0"

    return-object p0
.end method
