.class Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$TranAospProcessObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospProcessObserver"
.end annotation


# instance fields
.field mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$TranAospProcessObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$TranAospProcessObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$TranAospProcessObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;->onForegroundServicesChanged(III)V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManager$TranAospProcessObserver;->mObserver:Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;->onProcessDied(II)V

    return-void
.end method
