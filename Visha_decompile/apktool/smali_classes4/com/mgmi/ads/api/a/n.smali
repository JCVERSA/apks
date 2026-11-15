.class public Lcom/mgmi/ads/api/a/n;
.super Lcom/mgmi/ads/api/a/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/mgmi/ads/api/i;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/i;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/ads/api/a/c;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ads/api/a/n;->a:Lcom/mgmi/ads/api/i;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mgmi/ads/api/a/n;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public u()Lcom/mgmi/ads/api/i;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/n;->a:Lcom/mgmi/ads/api/i;

    return-object p0
.end method

.method public v()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/ads/api/a/n;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
