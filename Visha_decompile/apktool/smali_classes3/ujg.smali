.class public final Lujg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lfre;

.field public final c:Lbze;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final e:Lcom/google/android/gms/ads/internal/zza;

.field public final f:Lcom/google/android/gms/internal/ads/o0;

.field public final g:Lcom/google/android/gms/internal/ads/i4;

.field public final h:Lcom/google/android/gms/internal/ads/zzebe;

.field public final i:Linh;

.field public final j:Lsmg;


# direct methods
.method public constructor <init>(Lmjf;Landroid/content/Context;Lfre;Lbze;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Lcom/google/android/gms/internal/ads/i4;Lcom/google/android/gms/internal/ads/zzebe;Linh;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lujg;->a:Landroid/content/Context;

    iput-object p3, p0, Lujg;->b:Lfre;

    iput-object p4, p0, Lujg;->c:Lbze;

    iput-object p5, p0, Lujg;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lujg;->e:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lujg;->f:Lcom/google/android/gms/internal/ads/o0;

    iput-object p8, p0, Lujg;->g:Lcom/google/android/gms/internal/ads/i4;

    iput-object p9, p0, Lujg;->h:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p10, p0, Lujg;->i:Linh;

    iput-object p11, p0, Lujg;->j:Lsmg;

    return-void
.end method

.method public static bridge synthetic b(Lujg;)Lcom/google/android/gms/internal/ads/i4;
    .locals 0

    iget-object p0, p0, Lujg;->g:Lcom/google/android/gms/internal/ads/i4;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/client/zzr;Lhmh;Lkmh;)Lejf;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {p1 .. p1}, Lkkf;->c(Lcom/google/android/gms/ads/internal/client/zzr;)Lkkf;

    move-result-object v2

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    new-instance v1, Lgjg;

    move-object v10, v1

    invoke-direct {v1, v0}, Lgjg;-><init>(Lujg;)V

    iget-object v15, v0, Lujg;->h:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v1, v0, Lujg;->i:Linh;

    move-object/from16 v16, v1

    iget-object v1, v0, Lujg;->j:Lsmg;

    move-object/from16 v17, v1

    iget-object v11, v0, Lujg;->e:Lcom/google/android/gms/ads/internal/zza;

    iget-object v12, v0, Lujg;->f:Lcom/google/android/gms/internal/ads/o0;

    iget-object v6, v0, Lujg;->b:Lfre;

    iget-object v7, v0, Lujg;->c:Lbze;

    iget-object v8, v0, Lujg;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v0, Lujg;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v17}, Lmjf;->a(Landroid/content/Context;Lkkf;Ljava/lang/String;ZZLfre;Lbze;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lqye;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/o0;Lhmh;Lkmh;Lcom/google/android/gms/internal/ads/zzebe;Linh;Lsmg;)Lejf;

    move-result-object v0

    return-object v0
.end method
