.class public final Llz4;
.super Lkotlin/reflect/jvm/internal/impl/types/l;
.source "SourceFile"


# instance fields
.field public final c:[Lhcb;

.field public final d:[Lmcb;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    const-string v0, "parameters"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argumentsList"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [Lhcb;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Lhcb;

    .line 9
    check-cast p2, Ljava/util/Collection;

    .line 10
    new-array p1, v0, [Lmcb;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Lmcb;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 11
    invoke-direct/range {v1 .. v6}, Llz4;-><init>([Lhcb;[Lmcb;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([Lhcb;[Lmcb;Z)V
    .locals 1

    const-string v0, "parameters"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/l;-><init>()V

    .line 3
    iput-object p1, p0, Llz4;->c:[Lhcb;

    .line 4
    iput-object p2, p0, Llz4;->d:[Lmcb;

    .line 5
    iput-boolean p3, p0, Llz4;->e:Z

    .line 6
    array-length p0, p1

    array-length p0, p2

    return-void
.end method

.method public synthetic constructor <init>([Lhcb;[Lmcb;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Llz4;-><init>([Lhcb;[Lmcb;Z)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-boolean p0, p0, Llz4;->e:Z

    return p0
.end method

.method public e(Leh5;)Lmcb;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Leh5;->I0()Lsbb;

    move-result-object p1

    invoke-interface {p1}, Lsbb;->c()Lpx0;

    move-result-object p1

    instance-of v0, p1, Lhcb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lhcb;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Lhcb;->getIndex()I

    move-result v0

    iget-object v2, p0, Llz4;->c:[Lhcb;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lhcb;->m()Lsbb;

    move-result-object v2

    invoke-interface {p1}, Lhcb;->m()Lsbb;

    move-result-object p1

    invoke-static {v2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Llz4;->d:[Lmcb;

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Llz4;->d:[Lmcb;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()[Lmcb;
    .locals 0

    iget-object p0, p0, Llz4;->d:[Lmcb;

    return-object p0
.end method

.method public final j()[Lhcb;
    .locals 0

    iget-object p0, p0, Llz4;->c:[Lhcb;

    return-object p0
.end method
