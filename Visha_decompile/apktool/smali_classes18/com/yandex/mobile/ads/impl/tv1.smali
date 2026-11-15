.class public final Lcom/yandex/mobile/ads/impl/tv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Z

.field private final c:Lcom/yandex/mobile/ads/impl/z32;

.field private final d:Lcom/yandex/mobile/ads/impl/kz0;

.field private final e:Lcom/yandex/mobile/ads/impl/ch1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;ZLcom/yandex/mobile/ads/impl/g5;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/z32;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/z32;-><init>()V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/kz0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/kz0;-><init>()V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/sv1;

    invoke-direct {v6, p3}, Lcom/yandex/mobile/ads/impl/sv1;-><init>(Lcom/yandex/mobile/ads/impl/g5;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/tv1;-><init>(Lcom/yandex/mobile/ads/impl/sp1;ZLcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/z32;Lcom/yandex/mobile/ads/impl/kz0;Lcom/yandex/mobile/ads/impl/ch1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;ZLcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/z32;Lcom/yandex/mobile/ads/impl/kz0;Lcom/yandex/mobile/ads/impl/ch1;)V
    .locals 1

    .line 5
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "systemCurrentTimeProvider"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "integratedNetworksProvider"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "phasesParametersProvider"

    invoke-static {p6, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tv1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 8
    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/tv1;->b:Z

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/tv1;->c:Lcom/yandex/mobile/ads/impl/z32;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/tv1;->d:Lcom/yandex/mobile/ads/impl/kz0;

    .line 11
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/tv1;->e:Lcom/yandex/mobile/ads/impl/ch1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/kr;)V
    .locals 12

    .line 13
    const-string v0, "sdkConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationCallSource"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tv1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 15
    new-instance v1, Lcom/yandex/mobile/ads/impl/op1;

    .line 16
    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->X:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 17
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/tv1;->c:Lcom/yandex/mobile/ads/impl/z32;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "creation_date"

    invoke-static {v4, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 20
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->O()Ljava/lang/String;

    move-result-object v3

    const-string v4, "startup_version"

    invoke-static {v4, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 21
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->A0()Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "user_consent"

    invoke-static {v3, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 22
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/tv1;->d:Lcom/yandex/mobile/ads/impl/kz0;

    .line 23
    iget-boolean v3, p0, Lcom/yandex/mobile/ads/impl/tv1;->b:Z

    .line 24
    invoke-virtual {p1, v3}, Lcom/yandex/mobile/ads/impl/kz0;->a(Z)Ljava/util/Map;

    move-result-object p1

    const-string v3, "integrated_mediation"

    invoke-static {v3, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 25
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gl0;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "call_source"

    invoke-static {p2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 26
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/kr;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const-string p3, "configuration_source"

    invoke-static {p3, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 27
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tv1;->e:Lcom/yandex/mobile/ads/impl/ch1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ch1;->a()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string p2, "durations"

    invoke-static {p2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    filled-new-array/range {v5 .. v11}, [Lkotlin/Pair;

    move-result-object p0

    .line 28
    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 29
    const-string p2, "reportType"

    invoke-static {v2, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "reportData"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p2, p0, p1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 31
    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;Lcom/yandex/mobile/ads/impl/gl0;Lcom/yandex/mobile/ads/impl/kr;)V
    .locals 5

    .line 1
    const-string v0, "adRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationCallSource"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tv1;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/op1;

    .line 4
    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->Y:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w3;->c()Ljava/lang/String;

    move-result-object p1

    const-string v3, "failure_reason"

    invoke-static {v3, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gl0;->a()Ljava/lang/String;

    move-result-object p2

    const-string v3, "call_source"

    invoke-static {v3, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/kr;->a()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v3

    :goto_0
    const-string v4, "configuration_source"

    invoke-static {v4, p3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tv1;->e:Lcom/yandex/mobile/ads/impl/ch1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ch1;->a()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v4, "durations"

    invoke-static {v4, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p1, p2, p3, p0}, [Lkotlin/Pair;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 10
    const-string p1, "reportType"

    invoke-static {v2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportData"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p1, p0, v3}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 12
    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method
