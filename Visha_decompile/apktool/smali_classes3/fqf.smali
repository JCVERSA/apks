.class public final Lfqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lgqf;


# direct methods
.method public constructor <init>(Lgqf;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lfqf;->a:Ljava/lang/String;

    iput-object p1, p0, Lfqf;->b:Lgqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 7

    iget-object v4, p0, Lfqf;->a:Ljava/lang/String;

    iget-object p0, p0, Lfqf;->b:Lgqf;

    invoke-static {p0}, Lgqf;->o(Lgqf;)Lsnh;

    move-result-object p1

    invoke-static {p0}, Lgqf;->p(Lgqf;)Lsth;

    move-result-object v0

    invoke-static {p0}, Lgqf;->n(Lgqf;)Lvmh;

    move-result-object v1

    invoke-static {p0}, Lgqf;->k(Lgqf;)Lhmh;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {p0}, Lgqf;->q(Lgqf;)Ljava/util/List;

    move-result-object v6

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lsth;->e(Lvmh;Lhmh;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lsnh;->a(Ljava/util/List;La2g;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lfqf;->b:Lgqf;

    iget-object v5, p0, Lfqf;->a:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static {v0}, Lgqf;->o(Lgqf;)Lsnh;

    move-result-object p0

    invoke-static {v0}, Lgqf;->p(Lgqf;)Lsth;

    move-result-object v1

    invoke-static {v0}, Lgqf;->n(Lgqf;)Lvmh;

    move-result-object v2

    invoke-static {v0}, Lgqf;->k(Lgqf;)Lhmh;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0}, Lgqf;->q(Lgqf;)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lsth;->e(Lvmh;Lhmh;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lgqf;->g(Lgqf;)La2g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lsnh;->a(Ljava/util/List;La2g;)V

    return-void
.end method
