.class public final Lxof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loof;


# instance fields
.field public final a:Lixg;


# direct methods
.method public constructor <init>(Lixg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxof;->a:Lixg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2

    sget-object p1, Lcye;->za:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lxof;->a:Lixg;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lixg;->a(Z)Lim5;

    move-result-object p0

    invoke-static {p0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p0

    new-instance p1, Lwof;

    invoke-direct {p1}, Lwof;-><init>()V

    sget-object v0, Lzef;->a:Lg8i;

    const-class v1, Ljava/lang/Throwable;

    invoke-static {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lq7i;

    return-void
.end method
