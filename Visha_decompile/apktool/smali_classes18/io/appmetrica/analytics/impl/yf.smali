.class public final Lio/appmetrica/analytics/impl/yf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Qn;
.implements Lio/appmetrica/analytics/impl/D8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/M8;)I
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/M8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p0, 0x2

    return p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/R8;Lio/appmetrica/analytics/impl/ch;)[B
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/R8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/ch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p1, Lio/appmetrica/analytics/impl/R8;->b:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    .line 4
    new-array p0, p2, [B

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/R8;->b:Ljava/lang/String;

    .line 6
    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method
