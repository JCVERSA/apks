.class public Lio/appmetrica/analytics/profile/NameAttribute;
.super Lio/appmetrica/analytics/profile/StringAttribute;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/impl/ym;

    const/16 v1, 0x64

    const-string v2, "Name attribute"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/ym;-><init>(ILjava/lang/String;)V

    new-instance v1, Lio/appmetrica/analytics/impl/g8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/g8;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/al;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/al;-><init>()V

    const-string v3, "appmetrica_name"

    invoke-direct {p0, v3, v0, v1, v2}, Lio/appmetrica/analytics/profile/StringAttribute;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/ym;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    return-void
.end method
