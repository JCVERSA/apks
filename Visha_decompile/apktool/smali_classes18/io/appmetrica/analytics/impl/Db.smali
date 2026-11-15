.class public final Lio/appmetrica/analytics/impl/Db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/m5;

.field public final b:Lyi5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Db;->a:Lio/appmetrica/analytics/impl/m5;

    new-instance p1, Lio/appmetrica/analytics/impl/Cb;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Cb;-><init>(Lio/appmetrica/analytics/impl/Db;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Db;->b:Lyi5;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/Db;)Lio/appmetrica/analytics/impl/m5;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Db;->a:Lio/appmetrica/analytics/impl/m5;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/ch;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Db;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ch;

    return-object p0
.end method

.method public final bridge synthetic getConfig()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Db;->a()Lio/appmetrica/analytics/impl/ch;

    move-result-object p0

    return-object p0
.end method
