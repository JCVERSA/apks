.class public Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getParentViewWrf()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;->b:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setParentViewWrf(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method
