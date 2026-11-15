.class public final Ltth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;

.field public final i:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltth;->a:Lqyi;

    iput-object p2, p0, Ltth;->b:Lqyi;

    iput-object p3, p0, Ltth;->c:Lqyi;

    iput-object p4, p0, Ltth;->d:Lqyi;

    iput-object p5, p0, Ltth;->e:Lqyi;

    iput-object p6, p0, Ltth;->f:Lqyi;

    iput-object p7, p0, Ltth;->g:Lqyi;

    iput-object p8, p0, Ltth;->h:Lqyi;

    iput-object p9, p0, Ltth;->i:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Ltth;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lq0h;

    iget-object v0, p0, Ltth;->b:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object v0, p0, Ltth;->c:Lqyi;

    check-cast v0, Lwyf;

    invoke-virtual {v0}, Lwyf;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltth;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Ltth;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Ltth;->f:Lqyi;

    check-cast v0, Lyyf;

    invoke-virtual {v0}, Lyyf;->a()Lwmh;

    move-result-object v7

    iget-object v0, p0, Ltth;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lxmh;

    iget-object v0, p0, Ltth;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lfy0;

    iget-object p0, p0, Ltth;->i:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lfre;

    new-instance p0, Lsth;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lsth;-><init>(Lq0h;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lwmh;Lxmh;Lfy0;Lfre;)V

    return-object p0
.end method
