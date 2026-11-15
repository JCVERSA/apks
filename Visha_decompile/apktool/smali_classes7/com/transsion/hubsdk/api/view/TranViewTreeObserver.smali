.class public Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranViewTreeObserver"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;

.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;)V
    .locals 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->getService()Lcom/transsion/hubsdk/interfaces/view/ITranViewTreeObserverAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewTreeObserverAdapter;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;)V

    :cond_0
    return-void
.end method

.method public getService()Lcom/transsion/hubsdk/interfaces/view/ITranViewTreeObserverAdapter;
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->TAG:Ljava/lang/String;

    const-string v1, "TranAospViewTreeObserver"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;

    :cond_0
    return-object v0
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver;->getService()Lcom/transsion/hubsdk/interfaces/view/ITranViewTreeObserverAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranViewTreeObserverAdapter;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;)V

    :cond_0
    return-void
.end method
