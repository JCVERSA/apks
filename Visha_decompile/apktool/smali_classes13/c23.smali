.class public abstract Lc23;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lvs8;)Lfu8;
.end method

.method public b(Ljava/lang/String;)Lfu8;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->e()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lc23;->d(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)Lfu8;
    .locals 1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->e()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lc23;->d(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;
    .locals 1

    invoke-static {}, Lvs8;->e()Lvs8$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvs8$a;->h(Ljava/lang/String;)Lvs8$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvs8$a;->j(Ljava/util/Map;)Lvs8$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lvs8$a;->k(Lorg/schabi/newpipe/extractor/localization/Localization;)Lvs8$a;

    move-result-object p1

    invoke-virtual {p1}, Lvs8$a;->g()Lvs8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc23;->a(Lvs8;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lc23;->d(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lfu8;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc23;->g(Ljava/lang/String;Ljava/util/Map;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/util/Map;)Lfu8;
    .locals 1

    invoke-static {}, Lvs8;->e()Lvs8$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvs8$a;->i(Ljava/lang/String;)Lvs8$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvs8$a;->j(Ljava/util/Map;)Lvs8$a;

    move-result-object p1

    invoke-virtual {p1}, Lvs8$a;->g()Lvs8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc23;->a(Lvs8;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;
    .locals 1

    invoke-static {}, Lvs8;->e()Lvs8$a;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lvs8$a;->l(Ljava/lang/String;[B)Lvs8$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lvs8$a;->j(Ljava/util/Map;)Lvs8$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lvs8$a;->k(Lorg/schabi/newpipe/extractor/localization/Localization;)Lvs8$a;

    move-result-object p1

    invoke-virtual {p1}, Lvs8$a;->g()Lvs8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc23;->a(Lvs8;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;)Lfu8;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p2, "Content-Type"

    invoke-static {p5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p3, p4}, Lc23;->h(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/String;Ljava/util/Map;[B)Lfu8;
    .locals 1

    invoke-static {}, Lorg/schabi/newpipe/extractor/a;->e()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc23;->k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lfu8;
    .locals 6

    const-string v5, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc23;->i(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Ljava/lang/String;)Lfu8;

    move-result-object p0

    return-object p0
.end method
