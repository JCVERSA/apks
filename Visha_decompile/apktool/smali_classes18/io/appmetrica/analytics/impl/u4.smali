.class public final Lio/appmetrica/analytics/impl/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/ClientStorageProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Wk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Wk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/u4;->a:Lio/appmetrica/analytics/impl/Wk;

    return-void
.end method


# virtual methods
.method public final modulePreferences(Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/cd;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/u4;->a:Lio/appmetrica/analytics/impl/Wk;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/cd;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Wk;)V

    return-object v0
.end method
