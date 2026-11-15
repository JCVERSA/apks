.class public final Lcom/transsion/baselib/db/AppDatabase$u;
.super Lx3/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lx3/b;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lz3/d;)V
    .locals 1

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS SHORT_TV_PLAY (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `totalEp` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `description` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoId` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, PRIMARY KEY(`subjectId`))"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
