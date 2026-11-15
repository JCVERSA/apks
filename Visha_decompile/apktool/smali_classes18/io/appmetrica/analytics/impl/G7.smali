.class public final Lio/appmetrica/analytics/impl/G7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Pa;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Pa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G7;->a:Lio/appmetrica/analytics/impl/Pa;

    const-string p1, ""

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G7;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G7;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G7;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G7;->a:Lio/appmetrica/analytics/impl/Pa;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Pa;->a(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method
