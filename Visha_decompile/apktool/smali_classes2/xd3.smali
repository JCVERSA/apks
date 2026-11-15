.class public abstract Lxd3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxd3$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lxd3$a;
    .locals 2

    new-instance v0, Ld30$b;

    invoke-direct {v0}, Ld30$b;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ld30$b;->f(Ljava/util/Map;)Lxd3$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lxd3;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public abstract c()Ljava/util/Map;
.end method

.method public abstract d()Ljava/lang/Integer;
.end method

.method public abstract e()Lba3;
.end method

.method public abstract f()J
.end method

.method public final g(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lxd3;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final h(Ljava/lang/String;)J
    .locals 0

    invoke-virtual {p0}, Lxd3;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final i()Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lxd3;->c()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()J
.end method

.method public l()Lxd3$a;
    .locals 3

    new-instance v0, Ld30$b;

    invoke-direct {v0}, Ld30$b;-><init>()V

    invoke-virtual {p0}, Lxd3;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld30$b;->j(Ljava/lang/String;)Lxd3$a;

    move-result-object v0

    invoke-virtual {p0}, Lxd3;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxd3$a;->g(Ljava/lang/Integer;)Lxd3$a;

    move-result-object v0

    invoke-virtual {p0}, Lxd3;->e()Lba3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxd3$a;->h(Lba3;)Lxd3$a;

    move-result-object v0

    invoke-virtual {p0}, Lxd3;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lxd3$a;->i(J)Lxd3$a;

    move-result-object v0

    invoke-virtual {p0}, Lxd3;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lxd3$a;->k(J)Lxd3$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lxd3;->c()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lxd3$a;->f(Ljava/util/Map;)Lxd3$a;

    move-result-object p0

    return-object p0
.end method
