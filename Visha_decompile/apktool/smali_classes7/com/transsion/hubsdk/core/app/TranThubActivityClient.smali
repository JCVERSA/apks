.class public Lcom/transsion/hubsdk/core/app/TranThubActivityClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityClientAdapter;


# instance fields
.field private mActivityClient:Lcom/transsion/hubsdk/app/TranActivityClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityClient;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityClient;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;->mActivityClient:Lcom/transsion/hubsdk/app/TranActivityClient;

    return-void
.end method


# virtual methods
.method public setBackToDynamicIsland(Landroid/app/Activity;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;->mActivityClient:Lcom/transsion/hubsdk/app/TranActivityClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityClient;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityClient;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;->mActivityClient:Lcom/transsion/hubsdk/app/TranActivityClient;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;->mActivityClient:Lcom/transsion/hubsdk/app/TranActivityClient;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranActivityClient;->setBackToDynamicIsland(Landroid/app/Activity;Z)V

    return-void
.end method

.method public setRecoveryWhenError(Landroid/app/Activity;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;->mActivityClient:Lcom/transsion/hubsdk/app/TranActivityClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivityClient;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivityClient;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;->mActivityClient:Lcom/transsion/hubsdk/app/TranActivityClient;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;->mActivityClient:Lcom/transsion/hubsdk/app/TranActivityClient;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranActivityClient;->setRecoveryWhenError(Landroid/app/Activity;Z)V

    return-void
.end method
