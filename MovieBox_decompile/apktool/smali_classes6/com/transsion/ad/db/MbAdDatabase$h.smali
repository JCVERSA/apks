.class public final Lcom/transsion/ad/db/MbAdDatabase$h;
.super Lx3/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/db/MbAdDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x6

    .line 3
    invoke-direct {p0, v0, v1}, Lx3/b;-><init>(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lz3/d;)V
    .locals 1

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ALTER TABLE ps_link_ad ADD COLUMN updateTimestamp INTEGER"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS `attribution_points` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `psId` TEXT NOT NULL, `failCount` INTEGER NOT NULL, `reportUrl` TEXT NOT NULL, `type` TEXT NOT NULL, `updateTimestamp` INTEGER NOT NULL)"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
