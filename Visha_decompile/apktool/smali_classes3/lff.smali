.class public abstract Llff;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leff;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Leff;

    invoke-direct {v0}, Leff;-><init>()V

    iput-object v0, p0, Llff;->a:Leff;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Llff;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljff;

    invoke-direct {v1, p0}, Ljff;-><init>(Llff;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static bridge synthetic b(Llff;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Llff;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Llff;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iget-object p0, p0, Llff;->a:Leff;

    invoke-virtual {p0, v0}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final d(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Llff;->a:Leff;

    invoke-virtual {p0, p1}, Leff;->d(Ljava/lang/Throwable;)Z

    sget-object p0, Lcye;->L7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Llff;->a:Leff;

    invoke-virtual {p0, p1}, Leff;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Liff;Lgff;)V
    .locals 1

    new-instance v0, Lkff;

    invoke-direct {v0, p0, p1, p2}, Lkff;-><init>(Llff;Liff;Lgff;)V

    iget-object p0, p0, Llff;->a:Leff;

    sget-object p1, Lzef;->g:Lg8i;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method
