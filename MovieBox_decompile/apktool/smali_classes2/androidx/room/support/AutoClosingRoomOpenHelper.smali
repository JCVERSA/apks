.class public final Landroidx/room/support/AutoClosingRoomOpenHelper;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lz3/e;
.implements Landroidx/room/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;,
        Landroidx/room/support/AutoClosingRoomOpenHelper$a;,
        Landroidx/room/support/AutoClosingRoomOpenHelper$b;
    }
.end annotation


# instance fields
.field private final a:Lz3/e;

.field private final b:Landroidx/room/support/AutoCloser;

.field private final c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;


# direct methods
.method public constructor <init>(Lz3/e;Landroidx/room/support/AutoCloser;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "autoCloser"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->a:Lz3/e;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->b:Landroidx/room/support/AutoCloser;

    .line 17
    .line 18
    new-instance p1, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 19
    .line 20
    invoke-direct {p1, p2}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;-><init>(Landroidx/room/support/AutoCloser;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->getDelegate()Lz3/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Landroidx/room/support/AutoCloser;->l(Lz3/e;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()Landroidx/room/support/AutoCloser;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->b:Landroidx/room/support/AutoCloser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->a:Lz3/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lz3/e;->getDatabaseName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDelegate()Lz3/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->a:Lz3/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReadableDatabase()Lz3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->p()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 7
    .line 8
    return-object v0
.end method

.method public getWritableDatabase()Lz3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->p()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->c:Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 7
    .line 8
    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/AutoClosingRoomOpenHelper;->a:Lz3/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lz3/e;->setWriteAheadLoggingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
