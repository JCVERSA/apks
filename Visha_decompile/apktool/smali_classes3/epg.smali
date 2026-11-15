.class public final Lepg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepg;->a:Lqyi;

    iput-object p2, p0, Lepg;->b:Lqyi;

    iput-object p3, p0, Lepg;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lepg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lepg;->b:Lqyi;

    check-cast v0, Ltkf;

    invoke-virtual {v0}, Ltkf;->a()Ljava/lang/ref/WeakReference;

    move-result-object v3

    iget-object p0, p0, Lepg;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljpg;

    new-instance v5, Lzpg;

    invoke-direct {v5}, Lzpg;-><init>()V

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v6

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdva;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdva;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljpg;Lzpg;Lg8i;)V

    return-object p0
.end method
