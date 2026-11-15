.class public final Lio/appmetrica/analytics/impl/gc;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/hc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/hc;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/gc;->a:Lio/appmetrica/analytics/impl/hc;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lio/appmetrica/analytics/impl/gc;->a:Lio/appmetrica/analytics/impl/hc;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/hc;->f:Lio/appmetrica/analytics/impl/Bc;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/hc;->b:Lio/appmetrica/analytics/impl/x9;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/hc;->a:Lio/appmetrica/analytics/impl/Fg;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/hc;->c:Lio/appmetrica/analytics/impl/F4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hc;->d:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->isNative()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->h()Lio/appmetrica/analytics/impl/T9;

    move-result-object v0

    iget-object v4, v0, Lio/appmetrica/analytics/impl/T9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/T9;->a:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "io.appmetrica.analytics.plugin_id"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lio/appmetrica/analytics/impl/Jd;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Jd;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/appmetrica/analytics/impl/ze;

    invoke-direct {v0, v1, v2, v3, p0}, Lio/appmetrica/analytics/impl/ze;-><init>(Lio/appmetrica/analytics/impl/x9;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Le;)V

    move-object p0, v0

    :goto_1
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ac;->a()Lio/appmetrica/analytics/impl/J8;

    move-result-object p0

    return-object p0
.end method
