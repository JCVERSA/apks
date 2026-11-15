.class public Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;
.super Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranRendererDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventTran"
.end annotation


# static fields
.field public static final ITEM_ADDED:I = 0x502

.field public static final ITEM_DELETED:I = 0x503


# instance fields
.field private final item:Lcom/transsion/liblan/RendererItem;


# direct methods
.method public constructor <init>(IJLcom/transsion/liblan/RendererItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(IJ)V

    iput-object p4, p0, Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;->item:Lcom/transsion/liblan/RendererItem;

    invoke-virtual {p4}, Lcom/transsion/liblan/LANObject;->retain()Z

    return-void
.end method


# virtual methods
.method public getItem()Lcom/transsion/liblan/RendererItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;->item:Lcom/transsion/liblan/RendererItem;

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/TranRendererDiscoverer$EventTran;->item:Lcom/transsion/liblan/RendererItem;

    invoke-virtual {v0}, Lcom/transsion/liblan/LANObject;->release()V

    invoke-super {p0}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->release()V

    return-void
.end method
