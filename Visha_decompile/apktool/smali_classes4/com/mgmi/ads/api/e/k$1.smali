.class Lcom/mgmi/ads/api/e/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/e/k;->a(Lcom/mgmi/ads/api/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/h;

.field final synthetic b:Lcom/mgmi/ads/api/e/k;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/e/k;Lcom/mgmi/ads/api/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/e/k$1;->b:Lcom/mgmi/ads/api/e/k;

    iput-object p2, p0, Lcom/mgmi/ads/api/e/k$1;->a:Lcom/mgmi/ads/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/k$1;->b:Lcom/mgmi/ads/api/e/k;

    invoke-static {v0}, Lcom/mgmi/ads/api/e/k;->a(Lcom/mgmi/ads/api/e/k;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/e/k$1;->b:Lcom/mgmi/ads/api/e/k;

    invoke-static {v0}, Lcom/mgmi/ads/api/e/k;->a(Lcom/mgmi/ads/api/e/k;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/e/k$1;->b:Lcom/mgmi/ads/api/e/k;

    invoke-static {v0}, Lcom/mgmi/ads/api/e/k;->a(Lcom/mgmi/ads/api/e/k;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ads/api/f/a;

    iget-object p0, p0, Lcom/mgmi/ads/api/e/k$1;->a:Lcom/mgmi/ads/api/h;

    invoke-interface {v0, p0}, Lcom/mgmi/ads/api/f/a;->a(Lcom/mgmi/ads/api/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
