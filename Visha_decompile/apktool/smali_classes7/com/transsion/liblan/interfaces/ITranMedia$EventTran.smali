.class public Lcom/transsion/liblan/interfaces/ITranMedia$EventTran;
.super Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventTran"
.end annotation


# static fields
.field public static final DURATION_CHANGED:I = 0x2

.field public static final META_CHANGED:I = 0x0

.field public static final PARSED_CHANGED:I = 0x3

.field public static final STATE_CHANGED:I = 0x5

.field public static final SUB_ITEM_ADDED:I = 0x1

.field public static final SUB_ITEM_TREE_ADDED:I = 0x6


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public getMetaId()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method

.method public getParsedStatus()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->arg1:J

    long-to-int p0, v0

    return p0
.end method
