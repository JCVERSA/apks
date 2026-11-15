.class public Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/util/List;)[B
    .locals 4

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CompleteMultipartUpload"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/amazonaws/services/s3/model/PartETag;

    .line 36
    .line 37
    const-string v2, "Part"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 40
    .line 41
    .line 42
    const-string v2, "PartNumber"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartETag;->b()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->e(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 61
    .line 62
    .line 63
    const-string v2, "ETag"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->d(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartETag;->a()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->e(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->c()[B

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method
