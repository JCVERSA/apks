.class public final Lc7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lqef;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lqef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc7h;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lc7h;->b:Lqef;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public final zzb()Lim5;
    .locals 2

    sget-object v0, Lcye;->d3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ld7h;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld7h;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lc7h;->b:Lqef;

    invoke-virtual {v0}, Lqef;->l()Lim5;

    move-result-object v0

    new-instance v1, Lb7h;

    invoke-direct {v1}, Lb7h;-><init>()V

    iget-object p0, p0, Lc7h;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
