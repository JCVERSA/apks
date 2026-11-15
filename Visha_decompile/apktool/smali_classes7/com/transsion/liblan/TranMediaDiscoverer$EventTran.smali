.class public Lcom/transsion/liblan/TranMediaDiscoverer$EventTran;
.super Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranMediaDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventTran"
.end annotation


# static fields
.field public static final ENDED:I = 0x501

.field public static final STARTED:I = 0x500


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;-><init>(I)V

    return-void
.end method
