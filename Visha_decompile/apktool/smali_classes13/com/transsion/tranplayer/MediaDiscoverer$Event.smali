.class public Lcom/transsion/tranplayer/MediaDiscoverer$Event;
.super Lcom/transsion/tranplayer/VLCEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/MediaDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final Ended:I = 0x501

.field public static final Started:I = 0x500


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCEvent;-><init>(I)V

    return-void
.end method
