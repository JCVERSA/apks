.class public final Lup8;
.super Lqp8;
.source "SourceFile"

# interfaces
.implements Lp65;


# instance fields
.field public final c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lby6;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "values"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqp8;-><init>(Lby6;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lup8;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 6

    iget-object p0, p0, Lup8;->c:[Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    sget-object v4, Lqp8;->b:Lqp8$a;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lqp8$a;->a(Ljava/lang/Object;Lby6;)Lqp8;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
