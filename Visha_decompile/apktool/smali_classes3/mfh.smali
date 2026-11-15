.class public final Lmfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/w3;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmfh;->a:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lmfh;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lmfh;Ljava/lang/Throwable;)Lim5;
    .locals 0

    new-instance p1, Lnfh;

    iget-object p0, p0, Lmfh;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lnfh;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x29

    return p0
.end method

.method public final zzb()Lim5;
    .locals 3

    iget-object v0, p0, Lmfh;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v1, Lifh;

    invoke-direct {v1}, Lifh;-><init>()V

    iget-object v2, p0, Lmfh;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    new-instance v1, Llfh;

    invoke-direct {v1, p0}, Llfh;-><init>(Lmfh;)V

    const-class p0, Ljava/lang/Throwable;

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
