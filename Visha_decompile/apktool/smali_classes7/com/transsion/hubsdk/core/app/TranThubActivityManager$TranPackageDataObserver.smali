.class Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;
.super Lcom/transsion/hubsdk/app/ITranPackageDataObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranPackageDataObserver"
.end annotation


# instance fields
.field private mTranPackageDataObserver:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;->this$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/app/ITranPackageDataObserver$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;->mTranPackageDataObserver:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;->mTranPackageDataObserver:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
