.class public Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;


# instance fields
.field private mTranFollowDisplayOrientationManager:Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;->mTranFollowDisplayOrientationManager:Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;->mTranFollowDisplayOrientationManager:Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;->commit()V

    return-void
.end method

.method public getFollowDisplayOrientionType(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;->mTranFollowDisplayOrientationManager:Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;->getFollowDisplayOrientionType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;->mTranFollowDisplayOrientationManager:Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;->init()V

    return-void
.end method

.method public isEnabledPackage(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;->mTranFollowDisplayOrientationManager:Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;->isEnabledPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setEnabledPackage(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;->mTranFollowDisplayOrientationManager:Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;->setEnabledPackage(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setFollowDisplayOrientationType(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;->mTranFollowDisplayOrientationManager:Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranFollowDisplayOrientationManager;->setFollowDisplayOrientationType(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
