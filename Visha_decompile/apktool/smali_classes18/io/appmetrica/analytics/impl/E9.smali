.class public final Lio/appmetrica/analytics/impl/E9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;


# static fields
.field public static final c:Ljava/util/EnumSet;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/C5;

.field public final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/ue;->m:Lio/appmetrica/analytics/impl/ue;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/E9;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/C5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/C5;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/E9;->a:Lio/appmetrica/analytics/impl/C5;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/E9;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final canBeExecuted()Z
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/E9;->a:Lio/appmetrica/analytics/impl/C5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/E9;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/appmetrica/analytics/impl/ve;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sget-object v0, Lio/appmetrica/analytics/impl/ue;->n:Lio/appmetrica/analytics/impl/ue;

    new-instance v1, Lio/appmetrica/analytics/impl/te;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/te;-><init>()V

    const-string v2, "getting connection type"

    const-string v3, "ConnectivityManager"

    invoke-static {p0, v2, v3, v0, v1}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafelyOrDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ue;

    sget-object v0, Lio/appmetrica/analytics/impl/E9;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
