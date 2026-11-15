.class public final Llrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llsg;


# static fields
.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljqg;

.field public final b:Lg8i;

.field public final c:Lenh;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lpug;

.field public final f:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llrg;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lenh;Ljqg;Lg8i;Ljava/util/concurrent/ScheduledExecutorService;Lpug;Lcom/google/android/gms/internal/ads/zzfgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llrg;->g:Landroid/content/Context;

    iput-object p2, p0, Llrg;->c:Lenh;

    iput-object p3, p0, Llrg;->a:Ljqg;

    iput-object p4, p0, Llrg;->b:Lg8i;

    iput-object p5, p0, Llrg;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Llrg;->e:Lpug;

    iput-object p7, p0, Llrg;->f:Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method

.method public static bridge synthetic b(Llrg;)Lpug;
    .locals 0

    iget-object p0, p0, Llrg;->e:Lpug;

    return-object p0
.end method

.method public static synthetic c(Llrg;Lmsg;)Lim5;
    .locals 3

    new-instance v0, Lvmh;

    new-instance v1, Lsmh;

    iget-object p0, p0, Llrg;->c:Lenh;

    invoke-direct {v1, p0}, Lsmh;-><init>(Lenh;)V

    new-instance p0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lmsg;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lmsg;->a()Lcom/google/android/gms/internal/ads/zzbuy;

    move-result-object p1

    invoke-static {p0, p1}, Lumh;->a(Ljava/io/Reader;Lcom/google/android/gms/internal/ads/zzbuy;)Lumh;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lvmh;-><init>(Lsmh;Lumh;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Llrg;->h:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 5

    iget-object v0, p0, Llrg;->g:Landroid/content/Context;

    iget-object v1, p0, Llrg;->a:Ljqg;

    invoke-virtual {v1, p1}, Ljqg;->c(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;

    move-result-object p1

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v0

    invoke-static {p1, v0}, Lgsh;->d(Lim5;Lwrh;)V

    new-instance v1, Lirg;

    invoke-direct {v1, p0}, Lirg;-><init>(Llrg;)V

    iget-object v2, p0, Llrg;->b:Lg8i;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    sget-object v1, Lcye;->E5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcye;->F5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Llrg;->d:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p1

    new-instance v1, Ljrg;

    invoke-direct {v1}, Ljrg;-><init>()V

    sget-object v2, Lzef;->g:Lg8i;

    const-class v3, Ljava/util/concurrent/TimeoutException;

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Llrg;->f:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-static {p1, v1, v0}, Lgsh;->a(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    new-instance v0, Lkrg;

    invoke-direct {v0, p0}, Lkrg;-><init>(Llrg;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
