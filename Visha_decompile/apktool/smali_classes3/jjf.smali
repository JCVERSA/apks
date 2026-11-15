.class public final synthetic Ljjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj7i;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lfre;

.field public final synthetic c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final synthetic d:Lcom/google/android/gms/ads/internal/zza;

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzebe;

.field public final synthetic f:Linh;

.field public final synthetic g:Lsmg;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lfre;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzebe;Linh;Lsmg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljjf;->a:Landroid/content/Context;

    iput-object p2, p0, Ljjf;->b:Lfre;

    iput-object p3, p0, Ljjf;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Ljjf;->d:Lcom/google/android/gms/ads/internal/zza;

    iput-object p5, p0, Ljjf;->e:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p6, p0, Ljjf;->f:Linh;

    iput-object p7, p0, Ljjf;->g:Lsmg;

    iput-object p8, p0, Ljjf;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lim5;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzA()Lmjf;

    iget-object v1, v0, Ljjf;->a:Landroid/content/Context;

    iget-object v15, v0, Ljjf;->e:Lcom/google/android/gms/internal/ads/zzebe;

    invoke-static {}, Lkkf;->a()Lkkf;

    move-result-object v2

    iget-object v6, v0, Ljjf;->b:Lfre;

    iget-object v3, v0, Ljjf;->f:Linh;

    move-object/from16 v16, v3

    iget-object v11, v0, Ljjf;->d:Lcom/google/android/gms/ads/internal/zza;

    iget-object v8, v0, Ljjf;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v0, Ljjf;->g:Lsmg;

    move-object/from16 v17, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/o0;->a()Lcom/google/android/gms/internal/ads/o0;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v17}, Lmjf;->a(Landroid/content/Context;Lkkf;Ljava/lang/String;ZZLfre;Lbze;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lqye;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Lhmh;Lkmh;Lcom/google/android/gms/internal/ads/zzebe;Linh;Lsmg;)Lejf;

    move-result-object v1

    invoke-static {v1}, Ldff;->e(Ljava/lang/Object;)Ldff;

    move-result-object v2

    invoke-interface {v1}, Lejf;->zzN()Likf;

    move-result-object v3

    new-instance v4, Lkjf;

    invoke-direct {v4, v2}, Lkjf;-><init>(Ldff;)V

    invoke-interface {v3, v4}, Likf;->v(Lgkf;)V

    iget-object v0, v0, Ljjf;->h:Ljava/lang/String;

    invoke-interface {v1, v0}, Lejf;->loadUrl(Ljava/lang/String;)V

    return-object v2
.end method
