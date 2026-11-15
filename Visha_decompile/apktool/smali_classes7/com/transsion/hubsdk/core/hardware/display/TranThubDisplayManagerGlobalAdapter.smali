.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManagerGlobalAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerGlobalAdapter;


# instance fields
.field private mDisplayManagerGlobal:Lcom/transsion/hubsdk/hardware/display/TranDisplayManagerGlobal;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/hardware/display/TranDisplayManagerGlobal;

    invoke-direct {v0}, Lcom/transsion/hubsdk/hardware/display/TranDisplayManagerGlobal;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManagerGlobalAdapter;->mDisplayManagerGlobal:Lcom/transsion/hubsdk/hardware/display/TranDisplayManagerGlobal;

    return-void
.end method


# virtual methods
.method public getRealDisplay(I)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManagerGlobalAdapter;->mDisplayManagerGlobal:Lcom/transsion/hubsdk/hardware/display/TranDisplayManagerGlobal;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/hardware/display/TranDisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
