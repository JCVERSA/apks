.class public final Lro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltu4;


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqo;

    invoke-direct {v0}, Lqo;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lro;->a:Lyi5;

    return-void
.end method

.method public static synthetic c()Lpo;
    .locals 1

    invoke-static {}, Lro;->e()Lpo;

    move-result-object v0

    return-object v0
.end method

.method public static final e()Lpo;
    .locals 1

    new-instance v0, Lpo;

    invoke-direct {v0}, Lpo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lg82;)I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lro;->d()Lsu4;

    move-result-object p0

    invoke-interface {p0, p1}, Lsu4;->a(Lg82;)I

    move-result p0

    return p0
.end method

.method public b(Lg82;)Ljava/util/List;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lro;->d()Lsu4;

    move-result-object p0

    invoke-interface {p0, p1}, Lsu4;->b(Lg82;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lsu4;
    .locals 0

    iget-object p0, p0, Lro;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsu4;

    return-object p0
.end method
