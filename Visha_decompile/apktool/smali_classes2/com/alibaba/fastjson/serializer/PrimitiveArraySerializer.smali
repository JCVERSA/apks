.class public Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_0

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    :cond_0
    instance-of p1, p2, [I

    const/16 p3, 0x5d

    const/16 p4, 0x2c

    const/4 p5, 0x0

    const/16 v0, 0x5b

    if-eqz p1, :cond_3

    check-cast p2, [I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_0
    array-length p1, p2

    if-ge p5, p1, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_1
    aget p1, p2, p5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_3
    instance-of p1, p2, [S

    if-eqz p1, :cond_6

    check-cast p2, [S

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_1
    array-length p1, p2

    if-ge p5, p1, :cond_5

    if-eqz p5, :cond_4

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_4
    aget-short p1, p2, p5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_6
    instance-of p1, p2, [J

    if-eqz p1, :cond_9

    check-cast p2, [J

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    array-length p1, p2

    if-ge p5, p1, :cond_8

    if-eqz p5, :cond_7

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_7
    aget-wide v0, p2, p5

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_9
    instance-of p1, p2, [Z

    if-eqz p1, :cond_c

    check-cast p2, [Z

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_3
    array-length p1, p2

    if-ge p5, p1, :cond_b

    if-eqz p5, :cond_a

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_a
    aget-boolean p1, p2, p5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_c
    instance-of p1, p2, [F

    if-eqz p1, :cond_10

    check-cast p2, [F

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_4
    array-length p1, p2

    if-ge p5, p1, :cond_f

    if-eqz p5, :cond_d

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_d
    aget p1, p2, p5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_5

    :cond_e
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_5
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_10
    instance-of p1, p2, [D

    if-eqz p1, :cond_14

    check-cast p2, [D

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_6
    array-length p1, p2

    if-ge p5, p1, :cond_13

    if-eqz p5, :cond_11

    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_11
    aget-wide v0, p2, p5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_7

    :cond_12
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_7
    add-int/lit8 p5, p5, 0x1

    goto :goto_6

    :cond_13
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_14
    instance-of p1, p2, [B

    if-eqz p1, :cond_15

    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    return-void

    :cond_15
    check-cast p2, [C

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString([C)V

    return-void
.end method
