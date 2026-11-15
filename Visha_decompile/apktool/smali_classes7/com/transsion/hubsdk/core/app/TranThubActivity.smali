.class public Lcom/transsion/hubsdk/core/app/TranThubActivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubActivity"


# instance fields
.field private mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReferrer(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public sceneHappen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivity;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivity;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    :cond_1
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/hubsdk/app/TranActivity;->sceneHappen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setupAlert(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActivity;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActivity;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivity;->mTranActivity:Lcom/transsion/hubsdk/app/TranActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranActivity;->setupAlert(Ljava/lang/Object;)V

    return-void
.end method
