.class public final Lcom/transsion/baselib/db/download/DownloadBean$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/download/DownloadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baselib/db/download/DownloadBean$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ne v2, v1, :cond_1

    .line 11
    .line 12
    goto :goto_5

    .line 13
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x3

    .line 21
    if-ne v2, v3, :cond_3

    .line 22
    .line 23
    :goto_1
    move v0, v1

    .line 24
    goto :goto_5

    .line 25
    :cond_3
    :goto_2
    if-nez p1, :cond_4

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, v0, :cond_5

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    goto :goto_5

    .line 36
    :cond_5
    :goto_3
    if-nez p1, :cond_6

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x5

    .line 44
    if-ne v1, v2, :cond_7

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_5

    .line 48
    :cond_7
    :goto_4
    if-nez p1, :cond_8

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v1, 0x6

    .line 56
    if-ne p1, v1, :cond_9

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_9
    :goto_5
    return v0
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public final c(Ljava/lang/Integer;)I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ne v2, v1, :cond_1

    .line 11
    .line 12
    goto :goto_7

    .line 13
    :cond_1
    :goto_0
    const/4 v2, 0x3

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v3, v0, :cond_3

    .line 22
    .line 23
    :goto_1
    move v0, v2

    .line 24
    goto :goto_7

    .line 25
    :cond_3
    :goto_2
    if-nez p1, :cond_4

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x4

    .line 33
    if-ne v3, v4, :cond_5

    .line 34
    .line 35
    move v0, v1

    .line 36
    goto :goto_7

    .line 37
    :cond_5
    :goto_3
    if-nez p1, :cond_6

    .line 38
    .line 39
    goto :goto_5

    .line 40
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v3, 0x5

    .line 45
    if-ne v1, v3, :cond_7

    .line 46
    .line 47
    :goto_4
    move v0, v3

    .line 48
    goto :goto_7

    .line 49
    :cond_7
    :goto_5
    if-nez p1, :cond_8

    .line 50
    .line 51
    goto :goto_6

    .line 52
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v3, 0x6

    .line 57
    if-ne v1, v3, :cond_9

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_9
    :goto_6
    if-nez p1, :cond_a

    .line 61
    .line 62
    goto :goto_7

    .line 63
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 v1, 0x7

    .line 68
    if-ne p1, v1, :cond_b

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_b
    :goto_7
    return v0
.end method
