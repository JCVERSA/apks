.class public final Lsgf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lchf;

.field public final c:Landroid/view/ViewGroup;

.field public final d:Lsmg;

.field public e:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lejf;Lsmg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lsgf;->a:Landroid/content/Context;

    iput-object p2, p0, Lsgf;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lsgf;->b:Lchf;

    const/4 p1, 0x0

    iput-object p1, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    iput-object p4, p0, Lsgf;->d:Lsmg;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzcau;
    .locals 0

    iget-object p0, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    return-object p0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcau;->zzl()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcau;->zzF(IIII)V

    :cond_0
    return-void
.end method

.method public final d(IIIIIZLbhf;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lsgf;->b:Lchf;

    invoke-interface {v1}, Lchf;->zzl()Loye;

    move-result-object v2

    invoke-virtual {v2}, Loye;->a()Lqye;

    move-result-object v2

    invoke-interface {v1}, Lchf;->zzk()Lnye;

    move-result-object v3

    const-string v4, "vpr2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Liye;->a(Lqye;Lnye;[Ljava/lang/String;)Z

    iget-object v3, v0, Lsgf;->a:Landroid/content/Context;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcau;

    invoke-interface {v1}, Lchf;->zzl()Loye;

    move-result-object v2

    invoke-virtual {v2}, Loye;->a()Lqye;

    move-result-object v7

    iget-object v9, v0, Lsgf;->d:Lsmg;

    move-object v2, v10

    move-object v4, v1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzcau;-><init>(Landroid/content/Context;Lchf;IZLqye;Lbhf;Lsmg;)V

    iput-object v10, v0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    iget-object v2, v0, Lsgf;->c:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcau;->zzF(IIII)V

    invoke-interface {v1, v4}, Lchf;->zzz(Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcau;->zzq()V

    iget-object v0, p0, Lsgf;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcau;->zzu()V

    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 0

    iget-object p0, p0, Lsgf;->e:Lcom/google/android/gms/internal/ads/zzcau;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcau;->zzC(I)V

    :cond_0
    return-void
.end method
