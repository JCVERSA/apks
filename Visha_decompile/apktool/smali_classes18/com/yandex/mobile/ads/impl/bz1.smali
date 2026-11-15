.class public final Lcom/yandex/mobile/ads/impl/bz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/i81;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g41;

.field private final b:Lcom/yandex/mobile/ads/impl/er1;

.field private final c:Lcom/yandex/mobile/ads/impl/c8;

.field private final d:Lcom/yandex/mobile/ads/impl/jr;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/er1;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/jr;)V
    .locals 1

    const-string v0, "native"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestReportDataProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationReportDataProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bz1;->a:Lcom/yandex/mobile/ads/impl/g41;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bz1;->b:Lcom/yandex/mobile/ads/impl/er1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bz1;->c:Lcom/yandex/mobile/ads/impl/c8;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bz1;->d:Lcom/yandex/mobile/ads/impl/jr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 3

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bz1;->b:Lcom/yandex/mobile/ads/impl/er1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bz1;->a:Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {v1, p1, p3, p2, v2}, Lcom/yandex/mobile/ads/impl/er1;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p1

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/bz1;->c:Lcom/yandex/mobile/ads/impl/c8;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/yandex/mobile/ads/impl/c8;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bz1;->d:Lcom/yandex/mobile/ads/impl/jr;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/jr;->a(Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->u()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "image_loading_automatically"

    invoke-virtual {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    return-object p0
.end method
