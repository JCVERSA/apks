.class public final Lqrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lprh;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqrh;->a:Lqyi;

    iput-object p3, p0, Lqrh;->b:Lqyi;

    iput-object p4, p0, Lqrh;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lqrh;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lqrh;->b:Lqyi;

    check-cast v1, Lklf;

    invoke-virtual {v1}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object p0, p0, Lqrh;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfgq;

    new-instance v2, Lu6f;

    invoke-direct {v2}, Lu6f;-><init>()V

    invoke-virtual {v2, v0, v1, p0}, Lu6f;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
