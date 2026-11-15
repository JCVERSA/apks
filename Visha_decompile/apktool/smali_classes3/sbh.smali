.class public final Lsbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Lzog;


# direct methods
.method public constructor <init>(Lg8i;Lzog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsbh;->a:Lg8i;

    iput-object p2, p0, Lsbh;->b:Lzog;

    return-void
.end method

.method public static synthetic a(Lsbh;)Ltbh;
    .locals 7

    iget-object p0, p0, Lsbh;->b:Lzog;

    new-instance v6, Ltbh;

    invoke-virtual {p0}, Lzog;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lzog;->s()Z

    move-result v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzl()Z

    move-result v3

    invoke-virtual {p0}, Lzog;->q()Z

    move-result v4

    invoke-virtual {p0}, Lzog;->t()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltbh;-><init>(Ljava/lang/String;ZZZZ)V

    return-object v6
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x17

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lrbh;

    invoke-direct {v0, p0}, Lrbh;-><init>(Lsbh;)V

    iget-object p0, p0, Lsbh;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
