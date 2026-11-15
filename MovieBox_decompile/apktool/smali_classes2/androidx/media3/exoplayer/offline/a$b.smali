.class final Landroidx/media3/exoplayer/offline/a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Landroidx/media3/exoplayer/offline/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/a$b;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public N()Landroidx/media3/exoplayer/offline/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/offline/a;->i(Landroid/database/Cursor;)Landroidx/media3/exoplayer/offline/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public synthetic moveToNext()Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/d;->a(Landroidx/media3/exoplayer/offline/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/a$b;->a:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
