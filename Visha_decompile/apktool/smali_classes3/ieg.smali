.class public final Lieg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final b:Lhig;

.field public final c:Lfy0;

.field public d:Lcom/google/android/gms/internal/ads/zzbhk;

.field public e:Ln3f;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lhig;Lfy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lieg;->b:Lhig;

    iput-object p2, p0, Lieg;->c:Lfy0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbhk;
    .locals 0

    iget-object p0, p0, Lieg;->d:Lcom/google/android/gms/internal/ads/zzbhk;

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lieg;->d:Lcom/google/android/gms/internal/ads/zzbhk;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lieg;->g:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lieg;->d()V

    :try_start_0
    iget-object p0, p0, Lieg;->d:Lcom/google/android/gms/internal/ads/zzbhk;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhk;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzbhk;)V
    .locals 3

    iput-object p1, p0, Lieg;->d:Lcom/google/android/gms/internal/ads/zzbhk;

    iget-object v0, p0, Lieg;->e:Ln3f;

    const-string v1, "/unconfirmedClick"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lieg;->b:Lhig;

    invoke-virtual {v2, v1, v0}, Lhig;->n(Ljava/lang/String;Ln3f;)V

    :cond_0
    new-instance v0, Lheg;

    invoke-direct {v0, p0, p1}, Lheg;-><init>(Lieg;Lcom/google/android/gms/internal/ads/zzbhk;)V

    iput-object v0, p0, Lieg;->e:Ln3f;

    iget-object p0, p0, Lieg;->b:Lhig;

    invoke-virtual {p0, v1, v0}, Lhig;->l(Ljava/lang/String;Ln3f;)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lieg;->f:Ljava/lang/String;

    iput-object v0, p0, Lieg;->g:Ljava/lang/Long;

    iget-object v1, p0, Lieg;->h:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lieg;->h:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lieg;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lieg;->f:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lieg;->g:Ljava/lang/Long;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lieg;->f:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lieg;->c:Lfy0;

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lieg;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "time_interval"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lieg;->b:Lhig;

    const-string v1, "sendMessageToNativeJs"

    invoke-virtual {v0, v1, p1}, Lhig;->j(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p0}, Lieg;->d()V

    :cond_2
    :goto_0
    return-void
.end method
