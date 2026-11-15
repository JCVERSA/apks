.class public final Lihg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lzqf;

.field public final c:Lk8g;

.field public final d:Lwpf;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lzqf;Lk8g;Lwpf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lihg;->a:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lihg;->c:Lk8g;

    iput-object p2, p0, Lihg;->b:Lzqf;

    iput-object p4, p0, Lihg;->d:Lwpf;

    return-void
.end method

.method public static synthetic a(Lihg;Lejf;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lihg;->b:Lzqf;

    invoke-virtual {p0}, Lzqf;->b()V

    return-void
.end method

.method public static synthetic b(Lihg;Lejf;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lihg;->b:Lzqf;

    invoke-virtual {p0}, Lzqf;->c()V

    return-void
.end method


# virtual methods
.method public final c(Lejf;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lihg;->c:Lk8g;

    invoke-interface {p1}, Lejf;->zzF()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk8g;->F(Landroid/view/View;)V

    new-instance v1, Lehg;

    invoke-direct {v1, p1}, Lehg;-><init>(Lejf;)V

    iget-object v2, p0, Lihg;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lfhg;

    invoke-direct {v1, p1}, Lfhg;-><init>(Lejf;)V

    invoke-virtual {v0, v1, v2}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lihg;->b:Lzqf;

    invoke-virtual {v0, v1, v2}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, p1}, Lzqf;->e(Lejf;)V

    invoke-interface {p1}, Lejf;->zzN()Likf;

    move-result-object v0

    sget-object v1, Lcye;->la:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lihg;->d:Lwpf;

    invoke-interface {v0, v1}, Likf;->l(Lwpf;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Likf;->f(Lwpf;Ldwg;Lsmg;)V

    :cond_1
    new-instance v0, Lghg;

    invoke-direct {v0, p0}, Lghg;-><init>(Lihg;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    new-instance v0, Lhhg;

    invoke-direct {v0, p0}, Lhhg;-><init>(Lihg;)V

    const-string p0, "/untrackActiveViewUnit"

    invoke-interface {p1, p0, v0}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    return-void
.end method
