.class public Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranWindowConfigurationAdapter;


# instance fields
.field private mWindowConfiguration:Lcom/transsion/hubsdk/app/TranWindowConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/app/TranWindowConfiguration;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranWindowConfiguration;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;->mWindowConfiguration:Lcom/transsion/hubsdk/app/TranWindowConfiguration;

    return-void
.end method


# virtual methods
.method public getBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;->mWindowConfiguration:Lcom/transsion/hubsdk/app/TranWindowConfiguration;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranWindowConfiguration;->getBounds(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMultiWindowingId(Landroid/content/res/Configuration;)I
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/app/TranWindowConfiguration;->getMultiWindowingId(Landroid/content/res/Configuration;)I

    move-result p0

    return p0
.end method

.method public getMultiWindowingMode(Landroid/content/res/Configuration;)I
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/app/TranWindowConfiguration;->getMultiWindowingMode(Landroid/content/res/Configuration;)I

    move-result p0

    return p0
.end method

.method public inMultiWindowMode(I)Z
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/app/TranWindowConfiguration;->inMultiWindowMode(I)Z

    move-result p0

    return p0
.end method

.method public isThunderbackWindow(Landroid/content/res/Configuration;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubWindowConfiguration;->mWindowConfiguration:Lcom/transsion/hubsdk/app/TranWindowConfiguration;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranWindowConfiguration;->isThunderbackWindow(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method
