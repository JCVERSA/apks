.class public Lcom/transsion/tranplayer/RendererDiscoverer$Event;
.super Lcom/transsion/tranplayer/VLCEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/RendererDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final ItemAdded:I = 0x502

.field public static final ItemDeleted:I = 0x503


# instance fields
.field private item:Lcom/transsion/tranplayer/RendererItem;


# direct methods
.method public constructor <init>(IJLcom/transsion/tranplayer/RendererItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tranplayer/VLCEvent;-><init>(IJ)V

    iput-object p4, p0, Lcom/transsion/tranplayer/RendererDiscoverer$Event;->item:Lcom/transsion/tranplayer/RendererItem;

    return-void
.end method


# virtual methods
.method public getItem()Lcom/transsion/tranplayer/RendererItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/RendererDiscoverer$Event;->item:Lcom/transsion/tranplayer/RendererItem;

    return-object p0
.end method
