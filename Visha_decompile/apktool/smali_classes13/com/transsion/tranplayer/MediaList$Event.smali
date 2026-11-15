.class public Lcom/transsion/tranplayer/MediaList$Event;
.super Lcom/transsion/tranplayer/VLCEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final EndReached:I = 0x204

.field public static final ItemAdded:I = 0x200

.field public static final ItemDeleted:I = 0x202


# instance fields
.field public final index:I

.field public final media:Lcom/transsion/tranplayer/Media;

.field private final retain:Z


# direct methods
.method public constructor <init>(ILcom/transsion/tranplayer/Media;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCEvent;-><init>(I)V

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/tranplayer/Media;->retain()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid media reference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/transsion/tranplayer/MediaList$Event;->media:Lcom/transsion/tranplayer/Media;

    iput-boolean p3, p0, Lcom/transsion/tranplayer/MediaList$Event;->retain:Z

    iput p4, p0, Lcom/transsion/tranplayer/MediaList$Event;->index:I

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/tranplayer/MediaList$Event;->retain:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tranplayer/MediaList$Event;->media:Lcom/transsion/tranplayer/Media;

    invoke-virtual {p0}, Lcom/transsion/tranplayer/Media;->release()V

    :cond_0
    return-void
.end method
