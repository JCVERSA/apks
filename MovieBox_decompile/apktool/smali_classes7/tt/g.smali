.class public Ltt/g;
.super Ltt/e;
.source "source.java"


# instance fields
.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    int-to-long v0, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, p1, v0, v1, v2}, Ltt/e;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Ltt/g;->d:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected e()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    iget-object v1, p0, Ltt/g;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltt/g;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
