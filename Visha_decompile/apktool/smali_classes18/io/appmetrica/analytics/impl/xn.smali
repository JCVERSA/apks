.class public final Lio/appmetrica/analytics/impl/xn;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Le;->i()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Le;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Le;->j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Le;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Me;->b()V

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    invoke-static {}, Lio/appmetrica/analytics/impl/e4;->o()Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/m5;->a(Lio/appmetrica/analytics/impl/a6;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
