.class public Lio/appmetrica/analytics/impl/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/ExternalAttribution;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/H9;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/H9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/L2;->a:Lio/appmetrica/analytics/impl/H9;

    return-void
.end method


# virtual methods
.method public final toBytes()[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L2;->a:Lio/appmetrica/analytics/impl/H9;

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExternalAttribution(type=`"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/L2;->a:Lio/appmetrica/analytics/impl/H9;

    iget v1, v1, Lio/appmetrica/analytics/impl/H9;->a:I

    invoke-static {v1}, Lio/appmetrica/analytics/impl/R9;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`value=`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L2;->a:Lio/appmetrica/analytics/impl/H9;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/H9;->b:[B

    sget-object v2, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "`)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
