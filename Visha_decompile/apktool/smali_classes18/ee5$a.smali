.class public final Lee5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lee5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leh5;)Lpf1;
    .locals 4

    const-string p0, "argumentType"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfh5;->a(Leh5;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    move v2, p0

    move-object v1, p1

    :goto_0
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->c0(Leh5;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Leh5;->G0()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Li81;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmcb;

    invoke-interface {v1}, Lmcb;->getType()Leh5;

    move-result-object v1

    const-string v3, "type.arguments.single().type"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Leh5;->I0()Lsbb;

    move-result-object v1

    invoke-interface {v1}, Lsbb;->c()Lpx0;

    move-result-object v1

    instance-of v3, v1, Lqw0;

    if-eqz v3, :cond_3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->k(Lpx0;)Lxw0;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Lee5;

    new-instance v0, Lee5$b$a;

    invoke-direct {v0, p1}, Lee5$b$a;-><init>(Leh5;)V

    invoke-direct {p0, v0}, Lee5;-><init>(Lee5$b;)V

    return-object p0

    :cond_2
    new-instance v0, Lee5;

    invoke-direct {v0, p0, v2}, Lee5;-><init>(Lxw0;I)V

    goto :goto_1

    :cond_3
    instance-of p1, v1, Lhcb;

    if-eqz p1, :cond_4

    new-instance v0, Lee5;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->b:Lp54;

    invoke-virtual {p1}, Lp54;->l()Lo54;

    move-result-object p1

    invoke-static {p1}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object p1

    const-string v1, "topLevel(StandardNames.FqNames.any.toSafe())"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0}, Lee5;-><init>(Lxw0;I)V

    :cond_4
    :goto_1
    return-object v0
.end method
