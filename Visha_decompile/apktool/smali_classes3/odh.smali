.class public final Lodh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lrdf;

.field public final b:Lg8i;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lrdf;Lg8i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lodh;->a:Lrdf;

    iput-object p2, p0, Lodh;->b:Lg8i;

    iput-object p3, p0, Lodh;->c:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lodh;)Lpdh;
    .locals 9

    iget-object v0, p0, Lodh;->a:Lrdf;

    iget-object p0, p0, Lodh;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lrdf;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lpdh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lpdh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    :cond_0
    invoke-virtual {v0, p0}, Lrdf;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    invoke-virtual {v0, p0}, Lrdf;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    invoke-virtual {v0, p0}, Lrdf;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v6, v2

    goto :goto_2

    :cond_3
    move-object v6, v1

    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Lrdf;->p(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eq v1, p0, :cond_4

    move-object p0, v0

    goto :goto_3

    :cond_4
    const-string p0, "fa"

    :goto_3
    const-string v1, "TIME_OUT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcye;->x0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_5
    move-object v8, v0

    if-nez p0, :cond_6

    move-object v7, v2

    goto :goto_4

    :cond_6
    move-object v7, p0

    :goto_4
    new-instance p0, Lpdh;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lpdh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_5
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x22

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lndh;

    invoke-direct {v0, p0}, Lndh;-><init>(Lodh;)V

    iget-object p0, p0, Lodh;->b:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
