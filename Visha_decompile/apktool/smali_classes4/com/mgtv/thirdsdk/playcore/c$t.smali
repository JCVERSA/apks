.class Lcom/mgtv/thirdsdk/playcore/c$t;
.super Lcom/mgtv/thirdsdk/playcore/a;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/thirdsdk/playcore/a<",
        "Lcom/mgtv/thirdsdk/playcore/c;",
        ">;",
        "Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onTsSkip(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;II)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->d(Lcom/mgtv/thirdsdk/playcore/c;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onWarning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
