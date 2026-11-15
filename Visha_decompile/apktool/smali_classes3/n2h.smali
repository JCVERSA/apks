.class public final Ln2h;
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
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2h;->a:Lqyi;

    iput-object p2, p0, Ln2h;->b:Lqyi;

    iput-object p3, p0, Ln2h;->c:Lqyi;

    iput-object p4, p0, Ln2h;->d:Lqyi;

    iput-object p5, p0, Ln2h;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Ln2h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Ln2h;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Latf;

    iget-object v0, p0, Ln2h;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llrh;

    iget-object v0, p0, Ln2h;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lg8i;

    iget-object p0, p0, Ln2h;->e:Lqyi;

    check-cast p0, Lx2h;

    invoke-virtual {p0}, Lx2h;->a()Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object v6

    new-instance p0, Ll2h;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ll2h;-><init>(Landroid/content/Context;Latf;Llrh;Lg8i;Lcom/google/android/gms/internal/ads/zzbdd;)V

    return-object p0
.end method
