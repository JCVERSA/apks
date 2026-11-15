.class Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/cronet/CronetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CronetProviderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/chromium/net/CronetProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final GOOGLE_PLAY_SERVICES_PROVIDER_NAME:Ljava/lang/String; = "Google-Play-Services-Cronet-Provider"


# instance fields
.field private final preferGooglePlayServices:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;->preferGooglePlayServices:Z

    .line 5
    .line 6
    return-void
.end method

.method private static compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const-string v1, "\\."

    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1, v1}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v1, p0

    .line 18
    array-length v2, p1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v2, v0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_2

    .line 25
    .line 26
    aget-object v3, p0, v2

    .line 27
    .line 28
    aget-object v4, p1, v2

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    :try_start_0
    aget-object p0, p0, v2

    .line 37
    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    aget-object p1, p1, v2

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    sub-int/2addr p0, p1

    .line 49
    return p0

    .line 50
    :catch_0
    return v0

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    return v0
.end method

.method private getPriority(Lorg/chromium/net/CronetProvider;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "App-Packaged-Cronet-Provider"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const-string v0, "Google-Play-Services-Cronet-Provider"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-boolean p1, p0, Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;->preferGooglePlayServices:Z

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x2

    .line 30
    :goto_0
    return p1

    .line 31
    :cond_2
    const/4 p1, 0x3

    .line 32
    return p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/chromium/net/CronetProvider;

    check-cast p2, Lorg/chromium/net/CronetProvider;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;->compare(Lorg/chromium/net/CronetProvider;Lorg/chromium/net/CronetProvider;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/chromium/net/CronetProvider;Lorg/chromium/net/CronetProvider;)I
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;->getPriority(Lorg/chromium/net/CronetProvider;)I

    move-result v0

    invoke-direct {p0, p2}, Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;->getPriority(Lorg/chromium/net/CronetProvider;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/chromium/net/CronetProvider;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/media3/datasource/cronet/CronetUtil$CronetProviderComparator;->compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method
