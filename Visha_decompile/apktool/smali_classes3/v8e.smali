.class public final Lv8e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public final c:Lcae;

.field public final d:Ljava/util/List;

.field public final e:Lcom/google/android/gms/internal/ads/zzfww;

.field public final f:Lree;

.field public final g:Ldje;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcae;

    invoke-direct {v0}, Lcae;-><init>()V

    iput-object v0, p0, Lv8e;->c:Lcae;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lv8e;->d:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Lv8e;->e:Lcom/google/android/gms/internal/ads/zzfww;

    new-instance v0, Lree;

    invoke-direct {v0}, Lree;-><init>()V

    iput-object v0, p0, Lv8e;->f:Lree;

    sget-object v0, Ldje;->d:Ldje;

    iput-object v0, p0, Lv8e;->g:Ldje;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lv8e;
    .locals 0

    iput-object p1, p0, Lv8e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Landroid/net/Uri;)Lv8e;
    .locals 0

    iput-object p1, p0, Lv8e;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public final c()Lcme;
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lv8e;->b:Landroid/net/Uri;

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    iget-object v6, v0, Lv8e;->d:Ljava/util/List;

    iget-object v8, v0, Lv8e;->e:Lcom/google/android/gms/internal/ads/zzfww;

    new-instance v14, Lxge;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v14

    invoke-direct/range {v1 .. v12}, Lxge;-><init>(Landroid/net/Uri;Ljava/lang/String;Lqde;Lr7e;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfww;Ljava/lang/Object;JLile;)V

    move-object/from16 v18, v14

    goto :goto_0

    :cond_0
    move-object/from16 v18, v13

    :goto_0
    new-instance v1, Lcme;

    iget-object v2, v0, Lv8e;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    move-object/from16 v16, v2

    iget-object v2, v0, Lv8e;->c:Lcae;

    new-instance v3, Lmce;

    invoke-direct {v3, v2, v13}, Lmce;-><init>(Lcae;Lile;)V

    iget-object v2, v0, Lv8e;->f:Lree;

    new-instance v4, Lwfe;

    invoke-direct {v4, v2, v13}, Lwfe;-><init>(Lree;Lile;)V

    iget-object v0, v0, Lv8e;->g:Ldje;

    sget-object v20, Lipe;->B:Lipe;

    const/16 v22, 0x0

    move-object v15, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v0

    invoke-direct/range {v15 .. v22}, Lcme;-><init>(Ljava/lang/String;Lmce;Lxge;Lwfe;Lipe;Ldje;Lile;)V

    return-object v1
.end method
