.class Lcom/blankj/utilcode/util/ToastUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->a()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->a()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/blankj/utilcode/util/ToastUtils$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/blankj/utilcode/util/ToastUtils$b;->cancel()V

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method
