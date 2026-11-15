.class public final Lcom/google/android/gms/ads/internal/client/zzaz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/client/zzk;

.field public final b:Lcom/google/android/gms/ads/internal/client/zzi;

.field public final c:Lcom/google/android/gms/ads/internal/client/zzfa;

.field public final d:Ln1f;

.field public final e:Liaf;

.field public final f:Lo1f;

.field public g:Lwaf;

.field public final h:Lcom/google/android/gms/ads/internal/client/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzk;Lcom/google/android/gms/ads/internal/client/zzi;Lcom/google/android/gms/ads/internal/client/zzfa;Ln1f;Lncf;Liaf;Lo1f;Lcom/google/android/gms/ads/internal/client/zzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->a:Lcom/google/android/gms/ads/internal/client/zzk;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->b:Lcom/google/android/gms/ads/internal/client/zzi;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->c:Lcom/google/android/gms/ads/internal/client/zzfa;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->d:Ln1f;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->e:Liaf;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->f:Lo1f;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->h:Lcom/google/android/gms/ads/internal/client/zzl;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/ads/internal/client/zzi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->b:Lcom/google/android/gms/ads/internal/client/zzi;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/ads/internal/client/zzk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->a:Lcom/google/android/gms/ads/internal/client/zzk;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/ads/internal/client/zzl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->h:Lcom/google/android/gms/ads/internal/client/zzl;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/ads/internal/client/zzfa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->c:Lcom/google/android/gms/ads/internal/client/zzfa;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/ads/internal/client/zzaz;)Ln1f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->d:Ln1f;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/android/gms/ads/internal/client/zzaz;)Lo1f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->f:Lo1f;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/google/android/gms/ads/internal/client/zzaz;)Liaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->e:Liaf;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/google/android/gms/ads/internal/client/zzaz;)Lwaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->g:Lwaf;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/google/android/gms/ads/internal/client/zzaz;Lwaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaz;->g:Lwaf;

    return-void
.end method

.method public static bridge synthetic j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzc()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public final zzd(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzbt;
    .locals 1

    new-instance v0, Lume;

    invoke-direct {v0, p0, p1, p2, p3}, Lume;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/client/zzbt;

    return-object p0
.end method

.method public final zze(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 7

    new-instance v6, Leje;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Leje;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)V

    const/4 p0, 0x0

    invoke-virtual {v6, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/client/zzbx;

    return-object p0
.end method

.method public final zzf(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 7

    new-instance v6, Ljle;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljle;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)V

    const/4 p0, 0x0

    invoke-virtual {v6, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/client/zzbx;

    return-object p0
.end method

.method public final zzg(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzch;
    .locals 1

    new-instance v0, Lroe;

    invoke-direct {v0, p0, p1, p2}, Lroe;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/client/zzch;

    return-object p0
.end method

.method public final zzh(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzdt;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Liae;

    invoke-direct {v0, p0, p1, p2}, Liae;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/client/zzdt;

    return-object p0
.end method

.method public final zzj(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbfx;
    .locals 1

    new-instance v0, Lgse;

    invoke-direct {v0, p0, p2, p3, p1}, Lgse;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbfx;

    return-object p0
.end method

.method public final zzk(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzbgd;
    .locals 1

    new-instance v0, Leue;

    invoke-direct {v0, p0, p1, p2, p3}, Leue;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgd;

    return-object p0
.end method

.method public final zzn(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)Lcom/google/android/gms/internal/ads/zzbkl;
    .locals 1

    new-instance v0, Lahe;

    invoke-direct {v0, p0, p1, p2, p3}, Lahe;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbkl;

    return-object p0
.end method

.method public final zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/internal/ads/zzbsr;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lvee;

    invoke-direct {v0, p0, p1, p2}, Lvee;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbsr;

    return-object p0
.end method

.method public final zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbsy;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lu7e;

    invoke-direct {v0, p0, p1}, Lu7e;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "useClientJar flag not found in activity intent extras."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    invoke-virtual {v0, p1, v3}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbsy;

    return-object p0
.end method

.method public final zzs(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/internal/ads/zzbwd;
    .locals 1

    new-instance v0, Lz5e;

    invoke-direct {v0, p0, p1, p2, p3}, Lz5e;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbwd;

    return-object p0
.end method

.method public final zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/internal/ads/zzbyi;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lpce;

    invoke-direct {v0, p0, p1, p2}, Lpce;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbyi;

    return-object p0
.end method
