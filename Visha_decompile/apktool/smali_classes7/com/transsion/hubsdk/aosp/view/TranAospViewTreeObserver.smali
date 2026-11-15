.class public Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranViewTreeObserverAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;
    }
.end annotation


# instance fields
.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;",
            "Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTreeObserverExt:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;->mViewTreeObserverExt:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;

    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;-><init>(Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;->mViewTreeObserverExt:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;->registerListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;)V

    return-void
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;->mViewTreeObserverExt:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;->unregisterListener(Landroid/view/ViewTreeObserver;Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
