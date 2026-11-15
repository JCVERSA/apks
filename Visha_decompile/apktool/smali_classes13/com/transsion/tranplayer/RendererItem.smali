.class public Lcom/transsion/tranplayer/RendererItem;
.super Lcom/transsion/tranplayer/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/RendererItem$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/tranplayer/VLCObject<",
        "Lcom/transsion/tranplayer/RendererItem$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIBVLC_RENDERER_CAN_AUDIO:I = 0x1

.field public static final LIBVLC_RENDERER_CAN_VIDEO:I = 0x2


# instance fields
.field public final displayName:Ljava/lang/String;

.field final flags:I

.field final iconUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private final ref:J

.field final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/RendererDiscoverer;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/VLCObject;-><init>(Lcom/transsion/tranplayer/VLCObject;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tranplayer/RendererItem;->nativeNewItem(Lcom/transsion/tranplayer/RendererDiscoverer;J)Lcom/transsion/tranplayer/RendererItem;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/transsion/tranplayer/RendererItem;->name:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/transsion/tranplayer/RendererItem;->name:Ljava/lang/String;

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p1, Lcom/transsion/tranplayer/RendererItem;->displayName:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/transsion/tranplayer/RendererItem;->displayName:Ljava/lang/String;

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_2

    .line 5
    :cond_2
    iget-object v1, p1, Lcom/transsion/tranplayer/RendererItem;->type:Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lcom/transsion/tranplayer/RendererItem;->type:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    iget-object v0, p1, Lcom/transsion/tranplayer/RendererItem;->iconUrl:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/transsion/tranplayer/RendererItem;->iconUrl:Ljava/lang/String;

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 7
    :cond_4
    iget v0, p1, Lcom/transsion/tranplayer/RendererItem;->flags:I

    :goto_4
    iput v0, p0, Lcom/transsion/tranplayer/RendererItem;->flags:I

    if-nez p1, :cond_5

    goto :goto_5

    .line 8
    :cond_5
    iget-wide p2, p1, Lcom/transsion/tranplayer/RendererItem;->ref:J

    :goto_5
    iput-wide p2, p0, Lcom/transsion/tranplayer/RendererItem;->ref:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/transsion/tranplayer/VLCObject;-><init>()V

    const/16 v0, 0x2d

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 11
    iput-object p1, p0, Lcom/transsion/tranplayer/RendererItem;->name:Ljava/lang/String;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/tranplayer/RendererItem;->displayName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/transsion/tranplayer/RendererItem;->type:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/transsion/tranplayer/RendererItem;->iconUrl:Ljava/lang/String;

    .line 15
    iput p4, p0, Lcom/transsion/tranplayer/RendererItem;->flags:I

    .line 16
    iput-wide p5, p0, Lcom/transsion/tranplayer/RendererItem;->ref:J

    return-void
.end method

.method private native nativeNewItem(Lcom/transsion/tranplayer/RendererDiscoverer;J)Lcom/transsion/tranplayer/RendererItem;
.end method

.method private native nativeReleaseItem()V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/transsion/tranplayer/RendererItem;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/tranplayer/RendererItem;->ref:J

    check-cast p1, Lcom/transsion/tranplayer/RendererItem;

    iget-wide p0, p1, Lcom/transsion/tranplayer/RendererItem;->ref:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/tranplayer/VLCObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/RendererItem$Event;
    .locals 0

    .line 2
    new-instance p0, Lcom/transsion/tranplayer/RendererItem$Event;

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/RendererItem$Event;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/VLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p11}, Lcom/transsion/tranplayer/RendererItem;->onEventNative(IJJJJFLjava/lang/String;)Lcom/transsion/tranplayer/RendererItem$Event;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNative()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tranplayer/RendererItem;->nativeReleaseItem()V

    return-void
.end method

.method public bridge synthetic setPinPVideoMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/tranplayer/VLCObject;->setPinPVideoMode(Z)V

    return-void
.end method
