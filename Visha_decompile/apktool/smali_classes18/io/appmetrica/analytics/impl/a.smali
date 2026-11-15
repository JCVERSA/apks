.class public final Lio/appmetrica/analytics/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/impl/Wi;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/16 p0, 0x10

    new-array p0, p0, [B

    :goto_0
    return-object p0
.end method

.method public final b()[B
    .locals 0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/impl/Wi;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/16 p0, 0x10

    new-array p0, p0, [B

    :goto_0
    return-object p0
.end method
