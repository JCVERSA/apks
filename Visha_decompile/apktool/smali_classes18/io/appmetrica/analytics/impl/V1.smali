.class public final Lio/appmetrica/analytics/impl/V1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Sd;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/V1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lio/appmetrica/analytics/impl/G7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V1;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lio/appmetrica/analytics/impl/G7;->a(Ljava/lang/String;Z)V

    return-void
.end method
