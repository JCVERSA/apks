.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Lic1;)Llb;
    .locals 3

    const-class v0, Lzv3;

    invoke-interface {p0, v0}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzv3;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Le2a;

    invoke-interface {p0, v2}, Lic1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le2a;

    invoke-static {v0, v1, p0}, Lmb;->c(Lzv3;Landroid/content/Context;Le2a;)Llb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzb1;",
            ">;"
        }
    .end annotation

    const-class p0, Llb;

    invoke-static {p0}, Lzb1;->e(Ljava/lang/Class;)Lzb1$b;

    move-result-object p0

    const-class v0, Lzv3;

    invoke-static {v0}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    const-class v0, Le2a;

    invoke-static {v0}, Lk82;->k(Ljava/lang/Class;)Lk82;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzb1$b;->b(Lk82;)Lzb1$b;

    move-result-object p0

    sget-object v0, Lvve;->a:Lvve;

    invoke-virtual {p0, v0}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->e()Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->d()Lzb1;

    move-result-object p0

    const-string v0, "fire-analytics"

    const-string v1, "21.1.1"

    invoke-static {v0, v1}, Lqk5;->b(Ljava/lang/String;Ljava/lang/String;)Lzb1;

    move-result-object v0

    filled-new-array {p0, v0}, [Lzb1;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
