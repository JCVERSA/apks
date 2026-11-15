.class public Lcom/transsion/liblan/TranLibLAN$EventTran;
.super Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranLibLAN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventTran"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(I)V

    return-void
.end method
