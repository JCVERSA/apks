.class public Lcom/transsion/liblan/RendererItem;
.super Lcom/transsion/liblan/LANObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/RendererItem$EventTran;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/LANObject<",
        "Lcom/transsion/liblan/RendererItem$EventTran;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIBLAN_RENDERER_CAN_AUDIO:I = 0x1

.field public static final LIBLAN_RENDERER_CAN_VIDEO:I = 0x2


# instance fields
.field public final displayName:Ljava/lang/String;

.field final flags:I

.field final iconUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private final ref:J

.field final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/liblan/LANObject;-><init>()V

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    iput-object p1, p0, Lcom/transsion/liblan/RendererItem;->name:Ljava/lang/String;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/transsion/liblan/RendererItem;->displayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/liblan/RendererItem;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/liblan/RendererItem;->iconUrl:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/liblan/RendererItem;->flags:I

    iput-wide p5, p0, Lcom/transsion/liblan/RendererItem;->ref:J

    return-void
.end method

.method private native nativeReleaseItem()V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/transsion/liblan/RendererItem;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/liblan/RendererItem;->ref:J

    check-cast p1, Lcom/transsion/liblan/RendererItem;

    iget-wide p0, p1, Lcom/transsion/liblan/RendererItem;->ref:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getInstance()J
    .locals 2

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isReleased()Z
    .locals 0

    invoke-super {p0}, Lcom/transsion/liblan/LANObject;->isReleased()Z

    move-result p0

    return p0
.end method

.method public onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/RendererItem$EventTran;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance p0, Lcom/transsion/liblan/RendererItem$EventTran;

    invoke-direct {p0, p1}, Lcom/transsion/liblan/RendererItem$EventTran;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/transsion/liblan/RendererItem;->onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/RendererItem$EventTran;

    move-result-object p0

    return-object p0
.end method

.method public onReleaseNativeItem()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/RendererItem;->nativeReleaseItem()V

    return-void
.end method
