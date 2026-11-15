.class public Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranActivityInfoAdapter;


# instance fields
.field private mTranActivityInfo:Lcom/transsion/hubsdk/content/pm/TranActivityInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;->mTranActivityInfo:Lcom/transsion/hubsdk/content/pm/TranActivityInfo;

    new-instance v0, Lcom/transsion/hubsdk/content/pm/TranActivityInfo;

    invoke-direct {v0}, Lcom/transsion/hubsdk/content/pm/TranActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;->mTranActivityInfo:Lcom/transsion/hubsdk/content/pm/TranActivityInfo;

    return-void
.end method


# virtual methods
.method public isResizeableMode(I)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;->mTranActivityInfo:Lcom/transsion/hubsdk/content/pm/TranActivityInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranActivityInfo;->isResizeableMode(I)Z

    move-result p0

    return p0
.end method

.method public resizeMode(Landroid/content/pm/ActivityInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubActivityInfo;->mTranActivityInfo:Lcom/transsion/hubsdk/content/pm/TranActivityInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranActivityInfo;->resizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result p0

    return p0
.end method
