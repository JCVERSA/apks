.class public final Ljch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# static fields
.field public static c:Ljava/lang/String;


# instance fields
.field public final a:Lg8i;

.field public final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg8i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljch;->a:Lg8i;

    iput-object p2, p0, Ljch;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Ljch;)Lkch;
    .locals 2

    sget-object v0, Lcye;->m5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcye;->v5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljch;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Ljch;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v0

    invoke-interface {v0, p0}, Lzwg;->zzf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ljch;->c:Ljava/lang/String;

    :cond_0
    new-instance p0, Lkch;

    sget-object v0, Ljch;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lkch;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ljch;->b:Landroid/content/Context;

    new-instance v0, Lkch;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v1

    invoke-interface {v1, p0}, Lzwg;->zzf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkch;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance p0, Lkch;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkch;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x1b

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lich;

    invoke-direct {v0, p0}, Lich;-><init>(Ljch;)V

    iget-object p0, p0, Ljch;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
