.class public final Lwmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkkh;


# instance fields
.field public final a:Lzlf;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;


# direct methods
.method public constructor <init>(Lzlf;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lwmf;->a:Lzlf;

    invoke-static/range {p2 .. p2}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object v9

    iput-object v9, v0, Lwmf;->b:Lqyi;

    invoke-static/range {p4 .. p4}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object v10

    iput-object v10, v0, Lwmf;->c:Lqyi;

    invoke-static/range {p3 .. p3}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object v11

    iput-object v11, v0, Lwmf;->d:Lqyi;

    iget-object v12, v1, Lzlf;->N:Lqyi;

    new-instance v2, Ll4h;

    invoke-direct {v2, v12}, Ll4h;-><init>(Lqyi;)V

    invoke-static {v2}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v13

    iput-object v13, v0, Lwmf;->e:Lqyi;

    iget-object v2, v1, Lzlf;->i1:Lqyi;

    new-instance v3, Lilh;

    invoke-direct {v3, v2}, Lilh;-><init>(Lqyi;)V

    invoke-static {v3}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v14

    iput-object v14, v0, Lwmf;->f:Lqyi;

    iget-object v4, v1, Lzlf;->d:Lqyi;

    iget-object v5, v1, Lzlf;->T:Lqyi;

    invoke-static {}, Lgnh;->a()Lgnh;

    move-result-object v8

    new-instance v15, Lekh;

    move-object v2, v15

    move-object v3, v9

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v2 .. v8}, Lekh;-><init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V

    invoke-static {v15}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v5

    iput-object v5, v0, Lwmf;->g:Lqyi;

    iget-object v8, v1, Lzlf;->m:Lqyi;

    iget-object v15, v1, Lzlf;->V:Lqyi;

    new-instance v16, Lv4h;

    move-object/from16 v1, v16

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v9, v15

    move-object v10, v12

    invoke-direct/range {v1 .. v10}, Lv4h;-><init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V

    invoke-static/range {v16 .. v16}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v1

    iput-object v1, v0, Lwmf;->h:Lqyi;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzejz;
    .locals 0

    iget-object p0, p0, Lwmf;->h:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzejz;

    return-object p0
.end method
