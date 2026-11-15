.class public abstract Lio/appmetrica/analytics/impl/i5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/m5;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->a:Lio/appmetrica/analytics/impl/m5;

    const-string p1, "[ComponentMigrationToV113]"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/i5;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/m5;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->a:Lio/appmetrica/analytics/impl/m5;

    return-object p0
.end method

.method public final a(I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/i5;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i5;->c()V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->b:Ljava/lang/String;

    return-object p0
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()V
.end method
