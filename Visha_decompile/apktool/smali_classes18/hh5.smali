.class public abstract Lhh5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmq6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmq6;

    const-string v1, "KotlinTypeRefiner"

    invoke-direct {v0, v1}, Lmq6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhh5;->a:Lmq6;

    return-void
.end method

.method public static final a()Lmq6;
    .locals 1

    sget-object v0, Lhh5;->a:Lmq6;

    return-object v0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/types/checker/c;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh5;

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->h(Lgh5;)Leh5;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
