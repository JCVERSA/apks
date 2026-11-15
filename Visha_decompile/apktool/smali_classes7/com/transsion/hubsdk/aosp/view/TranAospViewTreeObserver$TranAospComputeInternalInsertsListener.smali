.class public Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/view/TranViewTreeObserverExt$ITranOnComputeInternalInsetsListenerExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospComputeInternalInsertsListener"
.end annotation


# instance fields
.field mListener:Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;->this$0:Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;->mListener:Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospViewTreeObserver$TranAospComputeInternalInsertsListener;->mListener:Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/view/TranViewTreeObserver$ITranOnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/graphics/Region;)V

    return-void
.end method
