.class public final Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lqc2;

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lqc2;Landroid/view/View;)V
    .locals 1

    const-string v0, "disposable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;->a:Lqc2;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;->a:Lqc2;

    invoke-interface {p0}, Lqc2;->close()V

    return-void
.end method

.method public final b()Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver$a;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
