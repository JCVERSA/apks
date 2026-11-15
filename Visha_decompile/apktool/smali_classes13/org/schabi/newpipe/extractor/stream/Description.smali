.class public Lorg/schabi/newpipe/extractor/stream/Description;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

.field public static final HTML:I = 0x1

.field public static final MARKDOWN:I = 0x2

.field public static final PLAIN_TEXT:I = 0x3


# instance fields
.field private final content:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Description;

    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    iget v3, p1, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
