.class public final Leqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lgqf;


# direct methods
.method public constructor <init>(Lgqf;)V
    .locals 0

    iput-object p1, p0, Leqf;->a:Lgqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 7

    iget-object p0, p0, Leqf;->a:Lgqf;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static {p0}, Lgqf;->o(Lgqf;)Lsnh;

    move-result-object p1

    invoke-static {p0}, Lgqf;->p(Lgqf;)Lsth;

    move-result-object v0

    invoke-static {p0}, Lgqf;->n(Lgqf;)Lvmh;

    move-result-object v1

    invoke-static {p0}, Lgqf;->k(Lgqf;)Lhmh;

    move-result-object v2

    invoke-static {p0}, Lgqf;->k(Lgqf;)Lhmh;

    move-result-object v3

    iget-object v6, v3, Lhmh;->c:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual/range {v0 .. v6}, Lsth;->e(Lvmh;Lhmh;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-static {p0}, Lgqf;->b(Lgqf;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lqef;->a(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lsnh;->c(Ljava/util/List;I)V

    return-void
.end method
