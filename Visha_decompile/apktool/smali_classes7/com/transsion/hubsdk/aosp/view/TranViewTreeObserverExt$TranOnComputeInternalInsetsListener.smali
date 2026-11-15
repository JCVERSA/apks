.class public Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranOnComputeInternalInsetsListener"
.end annotation


# instance fields
.field private mListener:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;->this$0:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;->mListener:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$TranOnComputeInternalInsetsListener;->mListener:Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;->onComputeInternalInsets(Landroid/graphics/Region;)V

    return-void
.end method
