.class Lcom/mgmi/platform/view/ViewGroup/widget/b$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/platform/view/ViewGroup/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/platform/view/ViewGroup/widget/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgmi/platform/view/ViewGroup/widget/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b$b;->a:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a(Lcom/mgmi/platform/view/ViewGroup/widget/b;)V

    :cond_1
    return-void
.end method
