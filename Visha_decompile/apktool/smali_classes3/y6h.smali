.class public final Ly6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Lenh;

.field public final c:Ltef;


# direct methods
.method public constructor <init>(Lg8i;Lenh;Ltef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6h;->a:Lg8i;

    iput-object p2, p0, Ly6h;->b:Lenh;

    iput-object p3, p0, Ly6h;->c:Ltef;

    return-void
.end method

.method public static synthetic a(Ly6h;)Lz6h;
    .locals 2

    new-instance v0, Lz6h;

    iget-object v1, p0, Ly6h;->c:Ltef;

    iget-object p0, p0, Ly6h;->b:Lenh;

    iget-object p0, p0, Lenh;->j:Lcom/google/android/gms/ads/internal/client/zzx;

    invoke-virtual {v1}, Ltef;->l()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lz6h;-><init>(Lcom/google/android/gms/ads/internal/client/zzx;Z)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lx6h;

    invoke-direct {v0, p0}, Lx6h;-><init>(Ly6h;)V

    iget-object p0, p0, Ly6h;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
