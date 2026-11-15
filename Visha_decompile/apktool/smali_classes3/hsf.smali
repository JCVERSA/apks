.class public final Lhsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lasf;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhsf;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lhsf;->a:Lqyi;

    check-cast p0, Lktf;

    invoke-virtual {p0}, Lktf;->a()Ljtf;

    move-result-object p0

    sget-object v0, Lcye;->Hc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Li8g;

    sget-object v1, Lzef;->a:Lg8i;

    invoke-direct {v0, p0, v1}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxb;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxb;->zzn()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
