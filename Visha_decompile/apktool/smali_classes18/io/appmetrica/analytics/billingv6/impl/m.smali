.class public final Lio/appmetrica/analytics/billingv6/impl/m;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lio/appmetrica/analytics/billingv6/impl/p;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/Map;Lio/appmetrica/analytics/billingv6/impl/p;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/m;->a:Ljava/util/Map;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/m;->b:Ljava/util/Map;

    iput-object p3, p0, Lio/appmetrica/analytics/billingv6/impl/m;->c:Lio/appmetrica/analytics/billingv6/impl/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/m;->a:Ljava/util/Map;

    iget-object v1, p0, Lio/appmetrica/analytics/billingv6/impl/m;->b:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/m;->c:Lio/appmetrica/analytics/billingv6/impl/p;

    iget-object v2, p0, Lio/appmetrica/analytics/billingv6/impl/p;->d:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/p;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getBillingInfoManager()Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lio/appmetrica/analytics/billingv6/impl/t;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
