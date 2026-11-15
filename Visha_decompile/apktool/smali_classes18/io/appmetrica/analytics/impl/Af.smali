.class public final Lio/appmetrica/analytics/impl/Af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Qn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/R8;Lio/appmetrica/analytics/impl/ch;)[B
    .locals 2

    iget-object p0, p1, Lio/appmetrica/analytics/impl/R8;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_4

    :try_start_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/R8;->b:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/cg;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/cg;-><init>([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    new-instance p0, Lio/appmetrica/analytics/impl/If;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/If;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/cg;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, p2, [B

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lio/appmetrica/analytics/impl/If;->a:[B

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/cg;->b:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/If;->c:J

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/cg;->c:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/If;->b:J

    iget-object p1, p1, Lio/appmetrica/analytics/impl/cg;->d:Lio/appmetrica/analytics/impl/bg;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    move v0, p2

    :cond_3
    iput v0, p0, Lio/appmetrica/analytics/impl/If;->d:I

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_4
    new-array p0, p2, [B

    return-object p0
.end method
