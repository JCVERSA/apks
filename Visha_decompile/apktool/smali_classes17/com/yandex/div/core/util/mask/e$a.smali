.class public final Lcom/yandex/div/core/util/mask/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/util/mask/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/core/util/mask/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/util/mask/e;
    .locals 4

    const-string v0, "left"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "right"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/util/mask/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/util/mask/e;

    move-result-object p0

    new-instance p1, Lcom/yandex/div/core/util/mask/e;

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/e;->c()I

    move-result p2

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/e;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/core/util/mask/e;->a()I

    move-result p0

    invoke-direct {p1, p2, v0, p0}, Lcom/yandex/div/core/util/mask/e;-><init>(III)V

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int v2, p0, v0

    if-lt v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    sub-int/2addr p0, v1

    sub-int p1, p0, v0

    new-instance p2, Lcom/yandex/div/core/util/mask/e;

    invoke-direct {p2, v1, p0, p1}, Lcom/yandex/div/core/util/mask/e;-><init>(III)V

    return-object p2
.end method
