.class public final Lcom/google/android/gms/ads/internal/client/zzek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbou;

.field public final b:Lcom/google/android/gms/ads/internal/client/zzq;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lcom/google/android/gms/ads/VideoController;

.field public final e:Lcom/google/android/gms/ads/internal/client/zzbc;

.field public f:Lcom/google/android/gms/ads/internal/client/zza;

.field public g:Lcom/google/android/gms/ads/AdListener;

.field public h:[Lcom/google/android/gms/ads/AdSize;

.field public i:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field public j:Lcom/google/android/gms/ads/internal/client/zzbx;

.field public k:Lcom/google/android/gms/ads/VideoOptions;

.field public l:Ljava/lang/String;

.field public final m:Landroid/view/ViewGroup;

.field public n:I

.field public o:Z

.field public p:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 7

    .line 1
    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzek;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/ads/internal/client/zzbx;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 7

    .line 2
    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzek;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/ads/internal/client/zzbx;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 7

    .line 3
    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzek;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/ads/internal/client/zzbx;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/ads/internal/client/zzbx;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbou;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbou;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzek;->a:Lcom/google/android/gms/internal/ads/zzbou;

    new-instance v3, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v3}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzek;->d:Lcom/google/android/gms/ads/VideoController;

    new-instance v3, Ls3h;

    invoke-direct {v3, v0}, Ls3h;-><init>(Lcom/google/android/gms/ads/internal/client/zzek;)V

    iput-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzek;->e:Lcom/google/android/gms/ads/internal/client/zzbc;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzek;->m:Landroid/view/ViewGroup;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzek;->b:Lcom/google/android/gms/ads/internal/client/zzq;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    .line 5
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzek;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v3, p6

    iput v3, v0, Lcom/google/android/gms/ads/internal/client/zzek;->n:I

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    :try_start_0
    new-instance v5, Lcom/google/android/gms/ads/internal/client/zzz;

    .line 7
    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/ads/internal/client/zzz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move/from16 v2, p3

    .line 8
    invoke-virtual {v5, v2}, Lcom/google/android/gms/ads/internal/client/zzz;->zzb(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/client/zzz;->zza()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    aget-object v4, v5, v4

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzek;->n:I

    .line 11
    sget-object v5, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzr;

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 13
    const-string v7, "invalid"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v21}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzr;ZZZZZZZZ)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v5, Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzek;->b(I)Z

    move-result v0

    iput-boolean v0, v5, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    move-object v0, v5

    .line 15
    :goto_0
    const-string v3, "Ads by Google"

    .line 16
    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzn(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzr;

    sget-object v5, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v2, v1, v4, v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzm(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 20

    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzr;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v5, "invalid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v19}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzr;ZZZZZZZZ)V

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzr;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->b(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    return-object v1
.end method

.method public static b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/ads/internal/client/zzek;)Lcom/google/android/gms/ads/VideoController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->d:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method

.method public static synthetic zzk(Lcom/google/android/gms/ads/internal/client/zzek;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->m:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final zzA()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzY()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzB()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzZ()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzC()[Lcom/google/android/gms/ads/AdSize;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/ads/AdListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->g:Lcom/google/android/gms/ads/AdListener;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/ads/AdSize;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzg()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/zzc;->zzc(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->p:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzk()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/ads/VideoController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->d:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/ads/VideoOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->k:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->i:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzl()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final zzl()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzx()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/internal/client/zzeh;)V
    .locals 13

    const-string v0, "#007 Could not call remote method."

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzek;->m:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    iget v5, p0, Lcom/google/android/gms/ads/internal/client/zzek;->n:I

    invoke-static {v10, v4, v5}, Lcom/google/android/gms/ads/internal/client/zzek;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v7

    const-string v4, "search_v2"

    iget-object v5, v7, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;

    new-instance v6, Lhke;

    invoke-direct {v6, v4, v10, v7, v5}, Lhke;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/internal/client/zzbx;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/client/zzek;->a:Lcom/google/android/gms/internal/ads/zzbou;

    new-instance v12, Leie;

    move-object v4, v12

    move-object v6, v10

    invoke-direct/range {v4 .. v9}, Leie;-><init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)V

    invoke-virtual {v12, v10, v11}, Liwe;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/internal/client/zzbx;

    :goto_0
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    new-instance v5, Lcom/google/android/gms/ads/internal/client/zzg;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/client/zzek;->e:Lcom/google/android/gms/ads/internal/client/zzbc;

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/internal/client/zzg;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzD(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->f:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    new-instance v6, Lcom/google/android/gms/ads/internal/client/zzb;

    invoke-direct {v6, v4}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    invoke-interface {v5, v6}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzC(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->i:Lcom/google/android/gms/ads/admanager/AppEventListener;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzayv;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/zzayv;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    invoke-interface {v5, v6}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzG(Lcom/google/android/gms/ads/internal/client/zzcl;)V

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->k:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    new-instance v5, Lcom/google/android/gms/ads/internal/client/zzfw;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/client/zzek;->k:Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/internal/client/zzfw;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzU(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    new-instance v5, Lcom/google/android/gms/ads/internal/client/zzfo;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/client/zzek;->p:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/internal/client/zzfo;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzP(Lcom/google/android/gms/ads/internal/client/zzdq;)V

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    iget-boolean v5, p0, Lcom/google/android/gms/ads/internal/client/zzek;->o:Z

    invoke-interface {v4, v5}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzN(Z)V

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-interface {v4}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v5, Lxze;->f:Leze;

    invoke-virtual {v5}, Leze;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcye;->nb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v3, Lcom/google/android/gms/ads/internal/util/client/zzf;->zza:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/ads/internal/client/zzei;

    invoke-direct {v5, p0, v4}, Lcom/google/android/gms/ads/internal/client/zzei;-><init>(Lcom/google/android/gms/ads/internal/client/zzek;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {v0, v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzeh;->zzo(J)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->b:Lcom/google/android/gms/ads/internal/client/zzq;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->m:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, p0, p1}, Lcom/google/android/gms/ads/internal/client/zzq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzeh;)Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    return-void

    :cond_8
    const/4 p0, 0x0

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzn()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzz()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzo()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzA()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzp()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzB()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/ads/internal/client/zza;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/internal/client/zza;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->f:Lcom/google/android/gms/ads/internal/client/zza;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzC(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/ads/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->g:Lcom/google/android/gms/ads/AdListener;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->e:Lcom/google/android/gms/ads/internal/client/zzbc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbc;->zza(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final varargs zzs([Lcom/google/android/gms/ads/AdSize;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzt([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The ad size can only be set once on AdView."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs zzt([Lcom/google/android/gms/ads/AdSize;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->h:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->n:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzek;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzF(Lcom/google/android/gms/ads/internal/client/zzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->m:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final zzu(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->l:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The ad unit ID can only be set once on AdView."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzv(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/admanager/AppEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->i:Lcom/google/android/gms/ads/admanager/AppEventListener;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzayv;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzG(Lcom/google/android/gms/ads/internal/client/zzcl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->o:Z

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzN(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->p:Lcom/google/android/gms/ads/OnPaidEventListener;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzfo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzfo;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzP(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->k:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzfw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzfw;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object p1, v0

    :goto_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzU(Lcom/google/android/gms/ads/internal/client/zzfw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/ads/internal/client/zzbx;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzn()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->m:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->j:Lcom/google/android/gms/ads/internal/client/zzbx;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
