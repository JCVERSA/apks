.class public final Lbeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lg8i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbeh;->a:Lg8i;

    iput-object p2, p0, Lbeh;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lbeh;)Laeh;
    .locals 2

    sget-object v0, Lcye;->e6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lbeh;->b:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzad;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    new-instance v0, Laeh;

    invoke-direct {v0, p0}, Laeh;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x25

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lzdh;

    invoke-direct {v0, p0}, Lzdh;-><init>(Lbeh;)V

    iget-object p0, p0, Lbeh;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
