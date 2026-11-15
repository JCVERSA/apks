.class public Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;


# instance fields
.field private mTranViewConfiguration:Lcom/transsion/hubsdk/view/TranViewConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/view/TranViewConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranViewConfiguration;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;->mTranViewConfiguration:Lcom/transsion/hubsdk/view/TranViewConfiguration;

    return-void
.end method


# virtual methods
.method public getHoverTapSlop()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;->mTranViewConfiguration:Lcom/transsion/hubsdk/view/TranViewConfiguration;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranViewConfiguration;->getHoverTapSlop()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x14

    return p0
.end method

.method public getHoverTapTimeout()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;->mTranViewConfiguration:Lcom/transsion/hubsdk/view/TranViewConfiguration;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranViewConfiguration;->getHoverTapTimeout()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x96

    return p0
.end method
