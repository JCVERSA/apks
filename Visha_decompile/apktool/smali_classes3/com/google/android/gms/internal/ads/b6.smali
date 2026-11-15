.class public final Lcom/google/android/gms/internal/ads/b6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwuh;

.field public final b:Landroid/webkit/WebView;

.field public c:Llwh;

.field public final d:Ljava/util/HashMap;

.field public final e:Lgvh;


# direct methods
.method public constructor <init>(Lwuh;Landroid/webkit/WebView;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b6;->d:Ljava/util/HashMap;

    new-instance v0, Lgvh;

    invoke-direct {v0}, Lgvh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/b6;->e:Lgvh;

    invoke-static {}, Lzvh;->a()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b6;->a:Lwuh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b6;->b:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/b6;->a()Landroid/view/View;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpuh;

    invoke-virtual {p3, p2}, Lpuh;->d(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Llwh;

    invoke-direct {p1, p2}, Llwh;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b6;->c:Llwh;

    :goto_1
    const-string p1, "WEB_MESSAGE_LISTENER"

    invoke-static {p1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/b6;->h()V

    new-instance p1, Lvuh;

    invoke-direct {p1, p0}, Lvuh;-><init>(Lcom/google/android/gms/internal/ads/b6;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b6;->b:Landroid/webkit/WebView;

    new-instance p2, Ljava/util/HashSet;

    const-string p3, "*"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p3, "omidJsSessionService"

    invoke-static {p0, p3, p2, p1}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The JavaScriptSessionService cannot be supported in this WebView version."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lwuh;Landroid/webkit/WebView;Z)Lcom/google/android/gms/internal/ads/b6;
    .locals 1

    new-instance p2, Lcom/google/android/gms/internal/ads/b6;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/b6;-><init>(Lwuh;Landroid/webkit/WebView;Z)V

    return-object p2
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/b6;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b6;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpuh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpuh;->c()V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/internal/ads/b6;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/b6;->h()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/b6;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lsuh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfka;->zza:Lcom/google/android/gms/internal/ads/zzfka;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfkd;->zza:Lcom/google/android/gms/internal/ads/zzfkd;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfkh;->zzb:Lcom/google/android/gms/internal/ads/zzfkh;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v3, v4}, Lquh;->a(Lcom/google/android/gms/internal/ads/zzfka;Lcom/google/android/gms/internal/ads/zzfkd;Lcom/google/android/gms/internal/ads/zzfkh;Lcom/google/android/gms/internal/ads/zzfkh;Z)Lquh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/b6;->a:Lwuh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/b6;->b:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lruh;->b(Lwuh;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lruh;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lsuh;-><init>(Lquh;Lruh;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b6;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/b6;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpuh;->d(Landroid/view/View;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b6;->e:Lgvh;

    invoke-virtual {p0}, Lgvh;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfvh;

    invoke-virtual {p1}, Lfvh;->b()Llwh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1}, Lfvh;->a()Lcom/google/android/gms/internal/ads/zzfkc;

    move-result-object v2

    invoke-virtual {p1}, Lfvh;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lpuh;->b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lpuh;->e()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b6;->c:Llwh;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final f(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V
    .locals 2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/b6;->d:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "Ad overlay"

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpuh;

    invoke-virtual {v0, p1, p2, v1}, Lpuh;->b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b6;->e:Lgvh;

    invoke-virtual {p0, p1, p2, v1}, Lgvh;->b(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfkc;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lojf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b6;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpuh;

    invoke-virtual {v1}, Lpuh;->c()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfke;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfke;-><init>(Lcom/google/android/gms/internal/ads/b6;Lojf;Ljava/util/Timer;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/b6;->b:Landroid/webkit/WebView;

    const-string v0, "omidJsSessionService"

    invoke-static {p0, v0}, Landroidx/webkit/WebViewCompat;->removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
