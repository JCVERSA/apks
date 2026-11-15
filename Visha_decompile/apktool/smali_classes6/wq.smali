.class public final Lwq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfv4;


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvq;

    invoke-direct {v0}, Lvq;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lwq;->a:Lyi5;

    return-void
.end method

.method public static synthetic c()Luq;
    .locals 1

    invoke-static {}, Lwq;->e()Luq;

    move-result-object v0

    return-object v0
.end method

.method public static final e()Luq;
    .locals 1

    new-instance v0, Luq;

    invoke-direct {v0}, Luq;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Le15;)I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lwq;->d()Lev4;

    move-result-object p0

    invoke-interface {p0, p1}, Lev4;->a(Le15;)I

    move-result p0

    return p0
.end method

.method public b(Le15;)Ljava/util/List;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lwq;->d()Lev4;

    move-result-object p0

    invoke-interface {p0, p1}, Lev4;->b(Le15;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lev4;
    .locals 0

    iget-object p0, p0, Lwq;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lev4;

    return-object p0
.end method
