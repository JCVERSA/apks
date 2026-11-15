.class Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerContentObserver"
.end annotation


# instance fields
.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->access$500(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V

    :cond_0
    return-void
.end method
