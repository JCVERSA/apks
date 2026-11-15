.class public Lcom/transsion/tranplayer/Media$Event;
.super Lcom/transsion/tranplayer/VLCEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final DurationChanged:I = 0x2

.field public static final MetaChanged:I = 0x0

.field public static final ParsedChanged:I = 0x3

.field public static final StateChanged:I = 0x5

.field public static final SubItemAdded:I = 0x1

.field public static final SubItemTreeAdded:I = 0x6


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCEvent;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tranplayer/VLCEvent;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public getMetaId()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getParsedStatus()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tranplayer/VLCEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method
