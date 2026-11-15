.class public abstract Lio/appmetrica/analytics/impl/Yg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Zg;


# instance fields
.field protected final a:Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yg;->a:Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Z
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
