.class public final Lcom/transsion/baseui/util/UrlContent;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\nH\u00c6\u0003J=\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u00d6\u0003J\t\u0010)\u001a\u00020\nH\u00d6\u0001J\t\u0010*\u001a\u00020\u0007H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/baseui/util/UrlContent;",
        "Ljava/io/Serializable;",
        "clickableSpan",
        "Landroid/text/style/ClickableSpan;",
        "iconSpan",
        "Landroid/text/style/ImageSpan;",
        "originUrl",
        "",
        "url",
        "indexOfUrl",
        "",
        "<init>",
        "(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V",
        "getClickableSpan",
        "()Landroid/text/style/ClickableSpan;",
        "setClickableSpan",
        "(Landroid/text/style/ClickableSpan;)V",
        "getIconSpan",
        "()Landroid/text/style/ImageSpan;",
        "setIconSpan",
        "(Landroid/text/style/ImageSpan;)V",
        "getOriginUrl",
        "()Ljava/lang/String;",
        "setOriginUrl",
        "(Ljava/lang/String;)V",
        "getUrl",
        "setUrl",
        "getIndexOfUrl",
        "()I",
        "setIndexOfUrl",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "BaseUI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private clickableSpan:Landroid/text/style/ClickableSpan;

.field private iconSpan:Landroid/text/style/ImageSpan;

.field private indexOfUrl:I

.field private originUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "clickableSpan"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "originUrl"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "url"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 26
    .line 27
    iput p5, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baseui/util/UrlContent;Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/transsion/baseui/util/UrlContent;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move-object p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move-object p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/transsion/baseui/util/UrlContent;->copy(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/baseui/util/UrlContent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/text/style/ClickableSpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Landroid/text/style/ImageSpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/baseui/util/UrlContent;
    .locals 7

    .line 1
    const-string v0, "clickableSpan"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "originUrl"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "url"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/transsion/baseui/util/UrlContent;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    move-object v5, p4

    .line 23
    move v6, p5

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/transsion/baseui/util/UrlContent;-><init>(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/baseui/util/UrlContent;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/baseui/util/UrlContent;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget v1, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 58
    .line 59
    iget p1, p1, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 60
    .line 61
    if-eq v1, p1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    return v0
.end method

.method public final getClickableSpan()Landroid/text/style/ClickableSpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIconSpan()Landroid/text/style/ImageSpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIndexOfUrl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOriginUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget v1, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public final setClickableSpan(Landroid/text/style/ClickableSpan;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 7
    .line 8
    return-void
.end method

.method public final setIconSpan(Landroid/text/style/ImageSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 2
    .line 3
    return-void
.end method

.method public final setIndexOfUrl(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOriginUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/util/UrlContent;->clickableSpan:Landroid/text/style/ClickableSpan;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baseui/util/UrlContent;->iconSpan:Landroid/text/style/ImageSpan;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/baseui/util/UrlContent;->originUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/baseui/util/UrlContent;->url:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/baseui/util/UrlContent;->indexOfUrl:I

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "UrlContent(clickableSpan="

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", iconSpan="

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", originUrl="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", url="

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", indexOfUrl="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
