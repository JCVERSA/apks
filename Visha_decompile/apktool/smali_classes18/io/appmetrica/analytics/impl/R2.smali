.class public final Lio/appmetrica/analytics/impl/R2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;
    .locals 2

    check-cast p1, Lio/appmetrica/analytics/impl/Fn;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Fn;->a:[Lio/appmetrica/analytics/impl/Cn;

    if-eqz p1, :cond_1

    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/Nn;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Lio/appmetrica/analytics/impl/Nn;

    const/4 v0, 0x0

    const-string v1, "attributes list is empty"

    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    :goto_1
    return-object p1
.end method
