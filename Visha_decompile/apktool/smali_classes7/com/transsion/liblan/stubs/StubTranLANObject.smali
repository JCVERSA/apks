.class public Lcom/transsion/liblan/stubs/StubTranLANObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranLANObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/liblan/interfaces/ITranLANObject<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranLibLAN()Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isReleased()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public retain()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
