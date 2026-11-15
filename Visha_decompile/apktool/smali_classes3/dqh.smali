.class public final Ldqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldqh;
    .locals 1

    sget-object v0, Lcqh;->a:Ldqh;

    return-object v0
.end method

.method public static b()Lg8i;
    .locals 2

    sget-object v0, Lcye;->M5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzef;->c:Lg8i;

    goto :goto_0

    :cond_0
    sget-object v0, Lcye;->L5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lzef;->a:Lg8i;

    goto :goto_0

    :cond_1
    sget-object v0, Lzef;->f:Lg8i;

    :goto_0
    invoke-static {v0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Ldqh;->b()Lg8i;

    move-result-object p0

    return-object p0
.end method
