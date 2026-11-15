.class public final Lre;
.super Ljm9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljm9;-><init>()V

    return-void
.end method

.method public static c(Lpw7;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 14

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lpw7;->r(I)V

    invoke-virtual {p0, v0}, Lpw7;->h(I)I

    move-result v1

    invoke-virtual {p0}, Lpw7;->d()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x4

    sub-int/2addr v2, v1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lpw7;->r(I)V

    invoke-virtual {p0, v0}, Lpw7;->h(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lpw7;->s(I)V

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lpw7;->r(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lpw7;->d()I

    move-result v5

    const/4 v6, 0x0

    if-ge v5, v2, :cond_5

    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Lpw7;->r(I)V

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lpw7;->h(I)I

    move-result v7

    invoke-virtual {p0, v1}, Lpw7;->r(I)V

    invoke-virtual {p0, v0}, Lpw7;->h(I)I

    move-result v8

    invoke-virtual {p0}, Lpw7;->d()I

    move-result v9

    add-int/2addr v9, v8

    move-object v8, v6

    :goto_1
    invoke-virtual {p0}, Lpw7;->d()I

    move-result v10

    if-ge v10, v9, :cond_4

    invoke-virtual {p0, v5}, Lpw7;->h(I)I

    move-result v10

    invoke-virtual {p0, v5}, Lpw7;->h(I)I

    move-result v11

    invoke-virtual {p0}, Lpw7;->d()I

    move-result v12

    add-int/2addr v12, v11

    const/4 v13, 0x2

    if-ne v10, v13, :cond_2

    invoke-virtual {p0, v3}, Lpw7;->h(I)I

    move-result v10

    invoke-virtual {p0, v5}, Lpw7;->r(I)V

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    :cond_1
    invoke-virtual {p0}, Lpw7;->d()I

    move-result v10

    if-ge v10, v12, :cond_3

    invoke-virtual {p0, v5}, Lpw7;->h(I)I

    move-result v6

    sget-object v10, Lrv0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6, v10}, Lpw7;->l(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Lpw7;->h(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    invoke-virtual {p0, v5}, Lpw7;->h(I)I

    move-result v13

    invoke-virtual {p0, v13}, Lpw7;->s(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/16 v13, 0x15

    if-ne v10, v13, :cond_3

    sget-object v8, Lrv0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v11, v8}, Lpw7;->l(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    mul-int/lit8 v12, v12, 0x8

    invoke-virtual {p0, v12}, Lpw7;->p(I)V

    goto :goto_1

    :cond_4
    mul-int/lit8 v9, v9, 0x8

    invoke-virtual {p0, v9}, Lpw7;->p(I)V

    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    new-instance v5, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v6
.end method


# virtual methods
.method public b(Leo6;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 p1, 0x74

    if-ne p0, p1, :cond_0

    new-instance p0, Lpw7;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lpw7;-><init>([BI)V

    invoke-static {p0}, Lre;->c(Lpw7;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
