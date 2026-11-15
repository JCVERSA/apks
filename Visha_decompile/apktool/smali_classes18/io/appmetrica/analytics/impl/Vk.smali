.class public final Lio/appmetrica/analytics/impl/Vk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;


# static fields
.field public static final b:Ljava/lang/String; = "[SimplePermissionExtractor]"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Vk;->a:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vk;->a:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    return-object p0
.end method

.method public final hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vk;->a:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;->forbidUsePermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Lio/appmetrica/analytics/coreutils/internal/services/ContextPermissionChecker;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
