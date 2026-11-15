.class public abstract Lmxa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x3fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lna;

    sget-object v2, Lawa;->a:Lawa;

    invoke-virtual {v2}, Lawa;->a()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    invoke-direct {v1, v3, v4}, Lna;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/16 v0, 0x3fd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lna;

    invoke-virtual {v2}, Lawa;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4}, Lna;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/16 v0, 0x406

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lna;

    invoke-virtual {v2}, Lawa;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x800

    invoke-direct {v1, v3, v7}, Lna;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lna;

    invoke-virtual {v2}, Lawa;->e()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v7}, Lna;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v1, 0x41a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lna;

    invoke-virtual {v2}, Lawa;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, v4}, Lna;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v1, 0x424

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lna;

    invoke-virtual {v2}, Lawa;->g()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10, v7}, Lna;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lna;

    invoke-virtual {v2}, Lawa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4}, Lna;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    move-object v7, v0

    filled-new-array/range {v5 .. v11}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lmxa;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a(I)Lna;
    .locals 2

    sget-object v0, Lmxa;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lna;

    if-nez p0, :cond_0

    new-instance p0, Lna;

    const-string v0, "unknown"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lna;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object p0
.end method
