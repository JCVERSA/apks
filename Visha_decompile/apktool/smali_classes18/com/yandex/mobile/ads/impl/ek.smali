.class public abstract Lcom/yandex/mobile/ads/impl/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/lq1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ek$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/lq1<",
        "Lcom/yandex/mobile/ads/impl/o3;",
        "Lcom/yandex/mobile/ads/impl/o8<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/c8;

.field private final b:Lcom/yandex/mobile/ads/impl/q8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/q8<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ek$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ek$a<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "responseReportDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/c8;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/c8;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ek;->a:Lcom/yandex/mobile/ads/impl/c8;

    new-instance v0, Lcom/yandex/mobile/ads/impl/q8;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/q8;-><init>(Lcom/yandex/mobile/ads/impl/ek$a;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ek;->b:Lcom/yandex/mobile/ads/impl/q8;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xq1;ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 2

    .line 21
    check-cast p3, Lcom/yandex/mobile/ads/impl/o3;

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2, p3, p1}, Lcom/yandex/mobile/ads/impl/ek;->a(ILcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/xq1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    .line 23
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    .line 24
    sget-object p2, Lcom/yandex/mobile/ads/impl/op1$b;->l:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 25
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object p3

    .line 26
    const-string v0, "reportType"

    const-string v1, "reportData"

    invoke-static {p0, p2, v0, p3, v1}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p0

    .line 27
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 4

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/o3;

    .line 2
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ek;->a(Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    .line 5
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->k:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v1

    .line 7
    const-string v2, "reportType"

    const-string v3, "reportData"

    invoke-static {p0, v0, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method

.method public a(ILcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/xq1;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 1

    .line 28
    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ek;->b:Lcom/yandex/mobile/ads/impl/q8;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/q8;->a(ILcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/xq1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 3

    .line 9
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ek;->a:Lcom/yandex/mobile/ads/impl/c8;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/c8;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    .line 13
    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "block_id"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ad_unit_id"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ad_type"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 18
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gz1$a;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "size_type"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->t()Lcom/yandex/mobile/ads/impl/p82$a;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/p82$a;->c:Lcom/yandex/mobile/ads/impl/p82$a;

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 20
    const-string p1, "is_passback"

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
