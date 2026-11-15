.class public final Lleh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg8i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg8i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lleh;->a:Landroid/content/Context;

    iput-object p2, p0, Lleh;->b:Lg8i;

    return-void
.end method

.method public static synthetic a(Lleh;)Lmeh;
    .locals 2

    iget-object p0, p0, Lleh;->a:Landroid/content/Context;

    new-instance v0, Lmeh;

    invoke-static {p0}, Ljxe;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Ljxe;->a(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lmeh;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x3b

    return p0
.end method

.method public final zzb()Lim5;
    .locals 2

    sget-object v0, Lrze;->b:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lleh;->b:Lg8i;

    new-instance v1, Lkeh;

    invoke-direct {v1, p0}, Lkeh;-><init>(Lleh;)V

    invoke-interface {v0, v1}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lmeh;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lmeh;-><init>(II)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
