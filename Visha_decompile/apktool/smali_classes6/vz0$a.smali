.class public final Lvz0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Lipa;

.field public f:Lxfb;

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "visha"

    iput-object v0, p0, Lvz0$a;->b:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lvz0$a;->g:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lvz0$a;->h:Z

    iput v0, p0, Lvz0$a;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lvz0;
    .locals 2

    iget-object v0, p0, Lvz0$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvz0$a;->e:Lipa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvz0$a;->f:Lxfb;

    if-eqz v0, :cond_0

    new-instance v0, Lvz0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvz0;-><init>(Lvz0$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "UniqueIdFetcher must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TokenFetcher must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppId must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvz0$a;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "appId"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvz0$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lvz0$a;->k:I

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lvz0$a;->h:Z

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lvz0$a;->d:Z

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lvz0$a;->j:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lvz0$a;->g:I

    return p0
.end method

.method public final i()Lipa;
    .locals 0

    iget-object p0, p0, Lvz0$a;->e:Lipa;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "tokenFetcher"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Lxfb;
    .locals 0

    iget-object p0, p0, Lvz0$a;->f:Lxfb;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "uniqueIdFetcher"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lvz0$a;->i:I

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lvz0$a;->c:Z

    return p0
.end method

.method public final m(Ljava/lang/String;)Lvz0$a;
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lvz0$a;->n(Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lvz0$a;->a:Ljava/lang/String;

    return-void
.end method

.method public final o(Ljava/lang/String;)Lvz0$a;
    .locals 0

    iput-object p1, p0, Lvz0$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final p(Z)Lvz0$a;
    .locals 0

    iput-boolean p1, p0, Lvz0$a;->d:Z

    return-object p0
.end method

.method public final q(Z)Lvz0$a;
    .locals 0

    iput-boolean p1, p0, Lvz0$a;->c:Z

    return-object p0
.end method

.method public final r(Lipa;)Lvz0$a;
    .locals 1

    const-string v0, "tokenFetcher"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lvz0$a;->s(Lipa;)V

    return-object p0
.end method

.method public final s(Lipa;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lvz0$a;->e:Lipa;

    return-void
.end method

.method public final t(Lxfb;)Lvz0$a;
    .locals 1

    const-string v0, "uniqueIdFetcher"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lvz0$a;->u(Lxfb;)V

    return-object p0
.end method

.method public final u(Lxfb;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lvz0$a;->f:Lxfb;

    return-void
.end method
