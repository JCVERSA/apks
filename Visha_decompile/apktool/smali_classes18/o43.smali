.class public final synthetic Lo43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/app/ActivityManager;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/E2;->c(Landroid/app/ActivityManager;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
