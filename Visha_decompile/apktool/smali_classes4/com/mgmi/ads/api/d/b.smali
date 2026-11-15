.class public abstract Lcom/mgmi/ads/api/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/mgmi/ads/api/e/b;

.field protected b:Lcom/mgmi/ads/api/c/a;

.field protected c:Lcom/mgmi/ads/api/a;

.field protected d:Lcom/mgmi/model/r;

.field e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/d/b;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;Lcom/mgmi/ads/api/c/a;)V
.end method

.method public a(Lcom/mgmi/model/r;Lcom/mgmi/ads/api/e/b;Lcom/mgmi/ads/api/c/a;Lcom/mgmi/ads/api/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/ads/api/d/b;->d:Lcom/mgmi/model/r;

    .line 3
    iput-object p2, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    .line 4
    iput-object p3, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    .line 5
    iput-object p4, p0, Lcom/mgmi/ads/api/d/b;->c:Lcom/mgmi/ads/api/a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ads/api/d/b;->d:Lcom/mgmi/model/r;

    iput-object v0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    iput-object v0, p0, Lcom/mgmi/ads/api/d/b;->b:Lcom/mgmi/ads/api/c/a;

    iput-object v0, p0, Lcom/mgmi/ads/api/d/b;->c:Lcom/mgmi/ads/api/a;

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public i()Lcom/mgmi/ads/api/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/d/b;->c:Lcom/mgmi/ads/api/a;

    return-object p0
.end method

.method public j()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/ads/api/d/b;->a:Lcom/mgmi/ads/api/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/b;->c()Z

    const-string p0, "mgmiad"

    const-string v0, "BaseViewMode.startManager"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
