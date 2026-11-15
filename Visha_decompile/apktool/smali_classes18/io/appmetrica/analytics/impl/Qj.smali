.class public final Lio/appmetrica/analytics/impl/Qj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/e7;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "service_main.db"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Qj;->a:Ljava/lang/String;

    const-string v0, "metrica_data.db"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Qj;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qj;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qj;->a:Ljava/lang/String;

    return-object p0
.end method
