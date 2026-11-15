.class public Ljf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/LinkedList;

.field public c:Landroid/app/Activity;

.field public final d:Ljava/util/HashMap;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljf$a;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Ljf$a;->c:Landroid/app/Activity;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljf$a;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Ljf$a;->e:I

    iput v0, p0, Ljf$a;->f:I

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Ljf$a;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public final b(Z)V
    .locals 0

    iget-object p1, p0, Ljf$a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ljf$a;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Ljf$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljf$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljf$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Ljf$a;->b:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljf$a;->b:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljf$a;->c(Landroid/app/Activity;)V

    iput-object p1, p0, Ljf$a;->c:Landroid/app/Activity;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Ljf$a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljf$a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ljf$a;->c:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ljf$a;->c:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Ljf$a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljf$a;->c(Landroid/app/Activity;)V

    iget p1, p0, Ljf$a;->e:I

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    invoke-virtual {p0, v0}, Ljf$a;->b(Z)V

    :cond_0
    iget p1, p0, Ljf$a;->f:I

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    iput p1, p0, Ljf$a;->f:I

    goto :goto_0

    :cond_1
    iget p1, p0, Ljf$a;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Ljf$a;->e:I

    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Ljf$a;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljf$a;->f:I

    goto :goto_0

    :cond_0
    iget p1, p0, Ljf$a;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljf$a;->e:I

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljf$a;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method
