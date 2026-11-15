.class public final Lsr1;
.super Lk9b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsr1$b;
    }
.end annotation


# instance fields
.field public b:Loj8;

.field public c:Loj8;

.field public d:Loj8;

.field public e:Loj8;

.field public f:Loj8;

.field public g:Loj8;

.field public h:Loj8;

.field public i:Loj8;

.field public j:Loj8;

.field public k:Loj8;

.field public l:Loj8;

.field public m:Loj8;

.field public n:Loj8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lk9b;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lsr1;->g(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lsr1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsr1;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static e()Lk9b$a;
    .locals 2

    new-instance v0, Lsr1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsr1$b;-><init>(Lsr1$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lge3;
    .locals 0

    iget-object p0, p0, Lsr1;->h:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lge3;

    return-object p0
.end method

.method public d()Lj9b;
    .locals 0

    iget-object p0, p0, Lsr1;->n:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj9b;

    return-object p0
.end method

.method public final g(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lye3;->a()Lye3;

    move-result-object v0

    invoke-static {v0}, Lzw2;->a(Loj8;)Loj8;

    move-result-object v0

    iput-object v0, p0, Lsr1;->b:Loj8;

    invoke-static {p1}, Lj15;->a(Ljava/lang/Object;)Lal3;

    move-result-object p1

    iput-object p1, p0, Lsr1;->c:Loj8;

    invoke-static {}, Lrna;->a()Lrna;

    move-result-object v0

    invoke-static {}, Lsna;->a()Lsna;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lil1;->a(Loj8;Loj8;Loj8;)Lil1;

    move-result-object p1

    iput-object p1, p0, Lsr1;->d:Loj8;

    iget-object v0, p0, Lsr1;->c:Loj8;

    invoke-static {v0, p1}, Lbo6;->a(Loj8;Loj8;)Lbo6;

    move-result-object p1

    invoke-static {p1}, Lzw2;->a(Loj8;)Loj8;

    move-result-object p1

    iput-object p1, p0, Lsr1;->e:Loj8;

    iget-object p1, p0, Lsr1;->c:Loj8;

    invoke-static {}, Lje3;->a()Lje3;

    move-result-object v0

    invoke-static {}, Lle3;->a()Lle3;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lv29;->a(Loj8;Loj8;Loj8;)Lv29;

    move-result-object p1

    iput-object p1, p0, Lsr1;->f:Loj8;

    iget-object p1, p0, Lsr1;->c:Loj8;

    invoke-static {p1}, Lke3;->a(Loj8;)Lke3;

    move-result-object p1

    invoke-static {p1}, Lzw2;->a(Loj8;)Loj8;

    move-result-object p1

    iput-object p1, p0, Lsr1;->g:Loj8;

    invoke-static {}, Lrna;->a()Lrna;

    move-result-object p1

    invoke-static {}, Lsna;->a()Lsna;

    move-result-object v0

    invoke-static {}, Lme3;->a()Lme3;

    move-result-object v1

    iget-object v2, p0, Lsr1;->f:Loj8;

    iget-object v3, p0, Lsr1;->g:Loj8;

    invoke-static {p1, v0, v1, v2, v3}, Ld09;->a(Loj8;Loj8;Loj8;Loj8;Loj8;)Ld09;

    move-result-object p1

    invoke-static {p1}, Lzw2;->a(Loj8;)Loj8;

    move-result-object p1

    iput-object p1, p0, Lsr1;->h:Loj8;

    invoke-static {}, Lrna;->a()Lrna;

    move-result-object p1

    invoke-static {p1}, Lm29;->b(Loj8;)Lm29;

    move-result-object p1

    iput-object p1, p0, Lsr1;->i:Loj8;

    iget-object v0, p0, Lsr1;->c:Loj8;

    iget-object v1, p0, Lsr1;->h:Loj8;

    invoke-static {}, Lsna;->a()Lsna;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lo29;->a(Loj8;Loj8;Loj8;Loj8;)Lo29;

    move-result-object p1

    iput-object p1, p0, Lsr1;->j:Loj8;

    iget-object v0, p0, Lsr1;->b:Loj8;

    iget-object v1, p0, Lsr1;->e:Loj8;

    iget-object v2, p0, Lsr1;->h:Loj8;

    invoke-static {v0, v1, p1, v2, v2}, Lf42;->a(Loj8;Loj8;Loj8;Loj8;Loj8;)Lf42;

    move-result-object p1

    iput-object p1, p0, Lsr1;->k:Loj8;

    iget-object v0, p0, Lsr1;->c:Loj8;

    iget-object v1, p0, Lsr1;->e:Loj8;

    iget-object v5, p0, Lsr1;->h:Loj8;

    iget-object v3, p0, Lsr1;->j:Loj8;

    iget-object v4, p0, Lsr1;->b:Loj8;

    invoke-static {}, Lrna;->a()Lrna;

    move-result-object v6

    invoke-static {}, Lsna;->a()Lsna;

    move-result-object v7

    iget-object v8, p0, Lsr1;->h:Loj8;

    move-object v2, v5

    invoke-static/range {v0 .. v8}, Llib;->a(Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;Loj8;)Llib;

    move-result-object p1

    iput-object p1, p0, Lsr1;->l:Loj8;

    iget-object p1, p0, Lsr1;->b:Loj8;

    iget-object v0, p0, Lsr1;->h:Loj8;

    iget-object v1, p0, Lsr1;->j:Loj8;

    invoke-static {p1, v0, v1, v0}, Ldpc;->a(Loj8;Loj8;Loj8;Loj8;)Ldpc;

    move-result-object p1

    iput-object p1, p0, Lsr1;->m:Loj8;

    invoke-static {}, Lrna;->a()Lrna;

    move-result-object p1

    invoke-static {}, Lsna;->a()Lsna;

    move-result-object v0

    iget-object v1, p0, Lsr1;->k:Loj8;

    iget-object v2, p0, Lsr1;->l:Loj8;

    iget-object v3, p0, Lsr1;->m:Loj8;

    invoke-static {p1, v0, v1, v2, v3}, Ll9b;->a(Loj8;Loj8;Loj8;Loj8;Loj8;)Ll9b;

    move-result-object p1

    invoke-static {p1}, Lzw2;->a(Loj8;)Loj8;

    move-result-object p1

    iput-object p1, p0, Lsr1;->n:Loj8;

    return-void
.end method
