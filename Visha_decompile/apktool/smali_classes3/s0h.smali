.class public final Ls0h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lynh;

.field public final b:Lgkg;

.field public final c:Lsmg;


# direct methods
.method public constructor <init>(Lynh;Lgkg;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0h;->a:Lynh;

    iput-object p2, p0, Ls0h;->b:Lgkg;

    iput-object p3, p0, Ls0h;->c:Lsmg;

    return-void
.end method


# virtual methods
.method public final a(Lkmh;Lhmh;ILcom/google/android/gms/internal/ads/zzecj;J)V
    .locals 2

    iget-object v0, p0, Ls0h;->c:Lsmg;

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrmg;->d(Lkmh;)Lrmg;

    invoke-virtual {v0, p2}, Lrmg;->c(Lhmh;)Lrmg;

    const-string p1, "action"

    const-string v1, "adapter_status"

    invoke-virtual {v0, p1, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p1, "adapter_l"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p1, p5}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p1, "sc"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzecj;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "arec"

    invoke-virtual {v0, p3, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget-object p1, p0, Ls0h;->a:Lynh;

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lynh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, "areec"

    invoke-virtual {v0, p3, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_0
    iget-object p0, p0, Ls0h;->b:Lgkg;

    iget-object p1, p2, Lhmh;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lgkg;->a(Ljava/lang/String;)Lfkg;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    const-string p0, "ancn"

    iget-object p1, p2, Lfkg;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget-object p0, p2, Lfkg;->b:Lcom/google/android/gms/internal/ads/zzbrm;

    if-eqz p0, :cond_3

    const-string p1, "adapter_v"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbrm;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_3
    iget-object p0, p2, Lfkg;->c:Lcom/google/android/gms/internal/ads/zzbrm;

    if-eqz p0, :cond_4

    const-string p1, "adapter_sv"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbrm;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_4
    invoke-virtual {v0}, Lrmg;->j()V

    return-void
.end method
