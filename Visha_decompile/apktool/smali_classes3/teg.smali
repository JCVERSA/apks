.class public final Lteg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lujg;

.field public final b:Lhig;

.field public final c:Lzqf;

.field public final d:Lldg;


# direct methods
.method public constructor <init>(Lujg;Lhig;Lzqf;Lldg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteg;->a:Lujg;

    iput-object p2, p0, Lteg;->b:Lhig;

    iput-object p3, p0, Lteg;->c:Lzqf;

    iput-object p4, p0, Lteg;->d:Lldg;

    return-void
.end method

.method public static synthetic b(Lteg;Lejf;Ljava/util/Map;)V
    .locals 0

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Hiding native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    invoke-interface {p1}, Lejf;->zzF()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lteg;->c:Lzqf;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lzqf;->d(Z)V

    return-void
.end method

.method public static synthetic c(Lteg;Lejf;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lteg;->b:Lhig;

    const-string p1, "sendMessageToNativeJs"

    invoke-virtual {p0, p1, p2}, Lhig;->j(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic d(Lteg;Lejf;Ljava/util/Map;)V
    .locals 0

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Showing native ads overlay."

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    invoke-interface {p1}, Lejf;->zzF()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lteg;->c:Lzqf;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzqf;->d(Z)V

    return-void
.end method

.method public static synthetic e(Lteg;Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "messageType"

    const-string p4, "htmlLoaded"

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "id"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lteg;->b:Lhig;

    const-string p1, "sendMessageToNativeJs"

    invoke-virtual {p0, p1, p2}, Lhig;->j(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic f(Lteg;Lejf;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lteg;->d:Lldg;

    invoke-interface {p0}, Lldg;->zzi()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lteg;->a:Lujg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lujg;->a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;

    move-result-object v0

    invoke-interface {v0}, Lejf;->zzF()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lkeg;

    invoke-direct {v1, p0}, Lkeg;-><init>(Lteg;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    new-instance v1, Lleg;

    invoke-direct {v1, p0}, Lleg;-><init>(Lteg;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lpeg;

    invoke-direct {v2, p0}, Lpeg;-><init>(Lteg;)V

    iget-object v3, p0, Lteg;->b:Lhig;

    const-string v4, "/loadHtml"

    invoke-virtual {v3, v1, v4, v2}, Lhig;->m(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ln3f;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lqeg;

    invoke-direct {v2, p0}, Lqeg;-><init>(Lteg;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v3, v1, v4, v2}, Lhig;->m(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ln3f;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lreg;

    invoke-direct {v2, p0}, Lreg;-><init>(Lteg;)V

    const-string p0, "/hideOverlay"

    invoke-virtual {v3, v1, p0, v2}, Lhig;->m(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ln3f;)V

    invoke-interface {v0}, Lejf;->zzF()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
