.class public final Lrtg;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrtg;->a:Lqyi;

    iput-object p4, p0, Lrtg;->b:Lqyi;

    iput-object p5, p0, Lrtg;->c:Lqyi;

    iput-object p6, p0, Lrtg;->d:Lqyi;

    iput-object p8, p0, Lrtg;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lrtg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v3

    invoke-static {}, Lulf;->a()Lccf;

    move-result-object v4

    iget-object v0, p0, Lrtg;->b:Lqyi;

    check-cast v0, Lhlf;

    invoke-virtual {v0}, Lhlf;->a()Llof;

    move-result-object v5

    iget-object v0, p0, Lrtg;->c:Lqyi;

    check-cast v0, Ldug;

    invoke-virtual {v0}, Ldug;->a()Lcug;

    move-result-object v6

    iget-object v0, p0, Lrtg;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayDeque;

    invoke-static {}, Lrlf;->a()Lvtg;

    move-result-object v8

    iget-object p0, p0, Lrtg;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/google/android/gms/internal/ads/zzfgq;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyu;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzdyu;-><init>(Landroid/content/Context;Lg8i;Lccf;Llof;Lcug;Ljava/util/ArrayDeque;Lvtg;Lcom/google/android/gms/internal/ads/zzfgq;)V

    return-object p0
.end method
