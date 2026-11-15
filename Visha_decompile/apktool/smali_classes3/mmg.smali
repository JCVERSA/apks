.class public final Lmmg;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmmg;->a:Lqyi;

    iput-object p2, p0, Lmmg;->b:Lqyi;

    iput-object p3, p0, Lmmg;->c:Lqyi;

    iput-object p4, p0, Lmmg;->d:Lqyi;

    iput-object p5, p0, Lmmg;->e:Lqyi;

    iput-object p6, p0, Lmmg;->f:Lqyi;

    iput-object p7, p0, Lmmg;->g:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lmmg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lmmg;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lxmg;

    iget-object v0, p0, Lmmg;->c:Lqyi;

    check-cast v0, Lnlf;

    invoke-virtual {v0}, Lnlf;->a()Ltef;

    move-result-object v4

    iget-object v0, p0, Lmmg;->d:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v5

    iget-object v0, p0, Lmmg;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lmmg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object p0, p0, Lmmg;->g:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/google/android/gms/ads/internal/zzk;

    new-instance p0, Llmg;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Llmg;-><init>(Landroid/content/Context;Lxmg;Ltef;Lenh;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzk;)V

    return-object p0
.end method
