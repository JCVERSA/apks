.class public final Lfbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1g;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Ld0g;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lejf;

.field public final d:Lhmh;

.field public final e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final f:Laxg;

.field public g:Lfxg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lejf;Lhmh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Laxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbg;->b:Landroid/content/Context;

    iput-object p2, p0, Lfbg;->c:Lejf;

    iput-object p3, p0, Lfbg;->d:Lhmh;

    iput-object p4, p0, Lfbg;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lfbg;->f:Laxg;

    return-void
.end method

.method private final a()Z
    .locals 2

    sget-object v0, Lcye;->p5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfbg;->f:Laxg;

    invoke-virtual {p0}, Laxg;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zzdE()V
    .locals 0

    return-void
.end method

.method public final zzdi()V
    .locals 0

    return-void
.end method

.method public final zzdo()V
    .locals 0

    return-void
.end method

.method public final zzdp()V
    .locals 2

    sget-object v0, Lcye;->s5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfbg;->c:Lejf;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lfbg;->g:Lfxg;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfbg;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lfbg;->g:Lfxg;

    if-eqz v1, :cond_1

    new-instance p0, Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "onSdkImpression"

    invoke-interface {v0, v1, p0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object p0, p0, Lfbg;->f:Laxg;

    invoke-virtual {p0}, Laxg;->b()V

    :cond_2
    return-void
.end method

.method public final zzdr()V
    .locals 0

    return-void
.end method

.method public final zzds(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lfbg;->g:Lfxg;

    return-void
.end method

.method public final zzs()V
    .locals 2

    invoke-direct {p0}, Lfbg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfbg;->f:Laxg;

    invoke-virtual {p0}, Laxg;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lfbg;->g:Lfxg;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lfbg;->c:Lejf;

    if-eqz p0, :cond_1

    sget-object v0, Lcye;->s5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "onSdkImpression"

    invoke-interface {p0, v1, v0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final zzt()V
    .locals 14

    iget-object v0, p0, Lfbg;->d:Lhmh;

    iget-boolean v1, v0, Lhmh;->T:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lfbg;->c:Lejf;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lfbg;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v3

    invoke-interface {v3, v2}, Lzwg;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lfbg;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lfbg;->f:Laxg;

    invoke-virtual {p0}, Laxg;->c()V

    return-void

    :cond_0
    iget-object v2, p0, Lfbg;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v3, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lhmh;->V:Lhnh;

    invoke-virtual {v2}, Lhnh;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lhnh;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzebw;->zzc:Lcom/google/android/gms/internal/ads/zzebw;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzebx;->zzb:Lcom/google/android/gms/internal/ads/zzebx;

    move-object v12, v2

    move-object v11, v3

    goto :goto_1

    :cond_1
    iget v2, v0, Lhmh;->Y:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzebx;->zzd:Lcom/google/android/gms/internal/ads/zzebx;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzebx;->zza:Lcom/google/android/gms/internal/ads/zzebx;

    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzebw;->zza:Lcom/google/android/gms/internal/ads/zzebw;

    move-object v11, v2

    move-object v12, v3

    :goto_1
    iget-object v13, v0, Lhmh;->l0:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v5

    invoke-interface {v1}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v7

    const-string v8, ""

    const-string v9, "javascript"

    invoke-interface/range {v5 .. v13}, Lzwg;->d(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;)Lfxg;

    move-result-object v0

    iput-object v0, p0, Lfbg;->g:Lfxg;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lfxg;->a()Lpuh;

    move-result-object v0

    sget-object v2, Lcye;->o5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v2

    invoke-interface {v1}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lzwg;->c(Lpuh;Landroid/view/View;)V

    invoke-interface {v1}, Lejf;->zzV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lzwg;->e(Lpuh;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lejf;->zzF()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lzwg;->c(Lpuh;Landroid/view/View;)V

    :cond_4
    iget-object p0, p0, Lfbg;->g:Lfxg;

    invoke-interface {v1, p0}, Lejf;->zzat(Lfxg;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object p0

    invoke-interface {p0, v0}, Lzwg;->h(Lpuh;)V

    new-instance p0, Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v0, "onSdkLoaded"

    invoke-interface {v1, v0, p0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method
