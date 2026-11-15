.class public final Lc6e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lerj;

.field public final synthetic b:Le6e;


# direct methods
.method public synthetic constructor <init>(Le6e;Ld6e;)V
    .locals 0

    iput-object p1, p0, Lc6e;->b:Le6e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lzhf;)V
    .locals 2

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    iget v1, p1, Lzhf;->a:I

    invoke-virtual {v0, v1}, Lgpj;->J(I)Lgpj;

    iget p1, p1, Lzhf;->b:I

    invoke-virtual {v0, p1}, Lgpj;->m(I)Lgpj;

    const-string p1, "video/raw"

    invoke-virtual {v0, p1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object p1

    iput-object p1, p0, Lc6e;->a:Lerj;

    return-void
.end method

.method public final b(JJZ)V
    .locals 7

    iget-object p5, p0, Lc6e;->a:Lerj;

    if-nez p5, :cond_0

    new-instance p5, Lgpj;

    invoke-direct {p5}, Lgpj;-><init>()V

    invoke-virtual {p5}, Lgpj;->K()Lerj;

    move-result-object p5

    :cond_0
    move-object v5, p5

    iget-object p0, p0, Lc6e;->b:Le6e;

    invoke-static {p0}, Le6e;->g(Le6e;)Lu6e;

    move-result-object v0

    const/4 v6, 0x0

    move-wide v1, p3

    move-wide v3, p1

    invoke-interface/range {v0 .. v6}, Lu6e;->a(JJLerj;Landroid/media/MediaFormat;)V

    invoke-static {p0}, Le6e;->h(Le6e;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
