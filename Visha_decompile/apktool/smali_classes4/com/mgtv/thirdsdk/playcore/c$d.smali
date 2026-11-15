.class Lcom/mgtv/thirdsdk/playcore/c$d;
.super Lcom/mgtv/thirdsdk/playcore/a;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/thirdsdk/playcore/a<",
        "Lcom/mgtv/thirdsdk/playcore/c;",
        ">;",
        "Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onUpdateStatus(ZZZ)V
    .locals 0

    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/mgtv/thirdsdk/playcore/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p3}, Lcom/mgtv/thirdsdk/playcore/c;->e(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    move-result-object p3

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;Z)V

    :cond_1
    :goto_0
    return-void
.end method
