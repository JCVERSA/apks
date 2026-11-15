.class public abstract Landroidx/media3/decoder/h;
.super Landroidx/media3/decoder/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/decoder/h$a;
    }
.end annotation


# instance fields
.field public shouldBeSkipped:Z

.field public skippedOutputBufferCount:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/decoder/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/media3/decoder/a;->clear()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/decoder/h;->timeUs:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/media3/decoder/h;->skippedOutputBufferCount:I

    .line 10
    .line 11
    iput-boolean v0, p0, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    .line 12
    .line 13
    return-void
.end method

.method public abstract release()V
.end method
