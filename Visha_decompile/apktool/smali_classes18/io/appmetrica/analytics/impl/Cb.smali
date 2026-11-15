.class public final Lio/appmetrica/analytics/impl/Cb;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Db;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Db;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Db;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->k:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ch;

    return-object p0
.end method
