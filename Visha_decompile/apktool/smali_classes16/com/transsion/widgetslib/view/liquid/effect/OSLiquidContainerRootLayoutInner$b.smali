.class public final Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc74;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
