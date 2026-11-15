.class public final Lta5;
.super Lu95;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lda5;Ltd9;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lu95;-><init>(Lda5;Ltd9;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lta5;->f()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lu95;->a()Ltd9;

    move-result-object v0

    invoke-static {}, Lud9;->a()Ltd9;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lqc8;

    invoke-virtual {p0}, Lu95;->d()Lda5;

    move-result-object v1

    invoke-virtual {v1}, Lda5;->l()Z

    move-result v1

    invoke-virtual {p0}, Lu95;->d()Lda5;

    move-result-object v2

    invoke-virtual {v2}, Lda5;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lqc8;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lu95;->a()Ltd9;

    move-result-object p0

    invoke-virtual {p0, v0}, Ltd9;->a(Lvd9;)V

    return-void
.end method
