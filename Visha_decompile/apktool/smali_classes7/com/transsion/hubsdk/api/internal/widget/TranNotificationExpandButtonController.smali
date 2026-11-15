.class public Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNotificationExpandButtonController"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranNotificationExpandButtonAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->TAG:Ljava/lang/String;

    const-string v0, "TranThubNotificationExpandButton"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->mThubService:Lcom/transsion/hubsdk/core/internal/widget/TranThubNotificationExpandButton;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->TAG:Ljava/lang/String;

    const-string v0, "TranAospNotificationExpandButton"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->mAospService:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospNotificationExpandButton;

    :cond_2
    return-object p1
.end method

.method public setExpandedVisibility(Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/widget/TranNotificationExpandButtonController;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/widget/ITranNotificationExpandButtonAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/internal/widget/ITranNotificationExpandButtonAdapter;->setExpandedVisibility(Ljava/lang/Object;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "button is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
