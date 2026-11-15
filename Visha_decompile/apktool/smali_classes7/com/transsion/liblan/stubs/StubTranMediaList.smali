.class public Lcom/transsion/liblan/stubs/StubTranMediaList;
.super Lcom/transsion/liblan/stubs/StubTranLANObject;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranMediaList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/liblan/stubs/StubTranLANObject<",
        "Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;",
        ">;",
        "Lcom/transsion/liblan/interfaces/ITranMediaList;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/liblan/stubs/StubTranLANObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaOfIndex(I)Lcom/transsion/liblan/interfaces/ITranMedia;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBeLocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setTranEventListener(Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method
