.class public final Lr6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg8i;


# direct methods
.method public constructor <init>(Lg8i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6h;->b:Lg8i;

    iput-object p2, p0, Lr6h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x3d

    return p0
.end method

.method public final zzb()Lim5;
    .locals 3

    sget-object v0, Lcye;->Uc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ls6h;

    invoke-direct {p0, v2, v1}, Ls6h;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lr6h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Ls6h;

    invoke-direct {p0, v2, v1}, Ls6h;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lr6h;->b:Lg8i;

    new-instance v1, Lq6h;

    invoke-direct {v1, v0}, Lq6h;-><init>(Landroid/content/ContentResolver;)V

    invoke-interface {p0, v1}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
