.class public final Lhch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhch;->a:Lqyi;

    iput-object p3, p0, Lhch;->b:Lqyi;

    iput-object p4, p0, Lhch;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object v1, p0, Lhch;->a:Lqyi;

    check-cast v1, Lzyf;

    invoke-virtual {v1}, Lzyf;->a()Lenh;

    move-result-object v1

    iget-object v2, p0, Lhch;->b:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Lhch;->c:Lqyi;

    check-cast p0, Lpkf;

    invoke-virtual {p0}, Lpkf;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p0

    new-instance v3, Ldch;

    invoke-direct {v3, v0, v1, v2, p0}, Ldch;-><init>(Lg8i;Lenh;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v3
.end method
