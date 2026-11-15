.class public final Lio/appmetrica/analytics/coreutils/impl/k;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/impl/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/impl/k;->b:Landroid/content/ComponentName;

    iput p3, p0, Lio/appmetrica/analytics/coreutils/impl/k;->c:I

    iput p4, p0, Lio/appmetrica/analytics/coreutils/impl/k;->d:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/impl/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/impl/k;->b:Landroid/content/ComponentName;

    iget v2, p0, Lio/appmetrica/analytics/coreutils/impl/k;->c:I

    iget p0, p0, Lio/appmetrica/analytics/coreutils/impl/k;->d:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
