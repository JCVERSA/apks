.class public Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final ALBUM:I = 0x3

.field private static final ARTIST:I = 0x2

.field private static final COMMENT:I = 0x4

.field private static final GENRE:I = 0x6

.field private static final TITLE:I = 0x1

.field private static final TRACK:I = 0x7

.field private static final YEAR:I = 0x5


# instance fields
.field private id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

.field private lastIndex:I


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    return-void
.end method

.method private hasNext(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    instance-of v3, v2, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    if-eqz v3, :cond_1

    .line 3
    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    iget-byte v2, v2, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;->track:B

    if-gez v2, :cond_0

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 4
    :pswitch_1
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-byte v2, v2, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    if-gez v2, :cond_2

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 5
    :pswitch_2
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0

    .line 6
    :pswitch_3
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    return v0

    .line 7
    :pswitch_4
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    return v0

    .line 8
    :pswitch_5
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    return v0

    .line 9
    :pswitch_6
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_c

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p0

    if-eqz p0, :cond_d

    :cond_c
    move v0, v1

    :cond_d
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private next(I)Ljava/lang/Object;
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Iteration has no more elements."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    instance-of p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    iget-byte p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;->track:B

    if-ltz p1, :cond_0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;->track:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-byte v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    if-ltz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0

    .line 7
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    return-object p0

    .line 8
    :pswitch_4
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    return-object p0

    .line 9
    :pswitch_5
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p0

    :goto_5
    return-object p0

    .line 10
    :pswitch_6
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    const/4 v1, -0x1

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iput-object v2, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    :pswitch_1
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iput-object v2, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    :pswitch_2
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iput-object v2, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    :pswitch_3
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iput-object v2, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    :pswitch_4
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iput-object v2, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    :pswitch_5
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iput-byte v1, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    :pswitch_6
    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    instance-of v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    iput-byte v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;->track:B

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
