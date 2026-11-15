.class public final Lio/appmetrica/analytics/impl/Z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/appsetid/internal/IAppSetIdRetriever;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final retrieveAppSetId(Landroid/content/Context;Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No App Set ID library"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method
