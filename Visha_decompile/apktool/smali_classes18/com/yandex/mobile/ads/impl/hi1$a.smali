.class public final Lcom/yandex/mobile/ads/impl/hi1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/km;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hi1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hi1$a$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/mobile/ads/impl/hi1$a;


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/bc0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/bc0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/bc0$a;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/hi1$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bc0$a;->a()Lcom/yandex/mobile/ads/impl/bc0;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/hi1$a;-><init>(Lcom/yandex/mobile/ads/impl/bc0;)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/hi1$a;->c:Lcom/yandex/mobile/ads/impl/hi1$a;

    new-instance v0, Luhd;

    invoke-direct {v0}, Luhd;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/impl/bc0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hi1$a;->b:Lcom/yandex/mobile/ads/impl/bc0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bc0;Lwhd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/hi1$a;-><init>(Lcom/yandex/mobile/ads/impl/bc0;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/hi1$a;
    .locals 3

    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/impl/hi1$a;->c:Lcom/yandex/mobile/ads/impl/hi1$a;

    return-object p0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/bc0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/bc0$a;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/bc0$a;->a(I)Lcom/yandex/mobile/ads/impl/bc0$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/hi1$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bc0$a;->a()Lcom/yandex/mobile/ads/impl/bc0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/hi1$a;-><init>(Lcom/yandex/mobile/ads/impl/bc0;)V

    return-object p0
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/hi1$a;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hi1$a;->a(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/hi1$a;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/hi1$a;)Lcom/yandex/mobile/ads/impl/bc0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hi1$a;->b:Lcom/yandex/mobile/ads/impl/bc0;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/hi1$a;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/hi1$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hi1$a;->b:Lcom/yandex/mobile/ads/impl/bc0;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/hi1$a;->b:Lcom/yandex/mobile/ads/impl/bc0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/bc0;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hi1$a;->b:Lcom/yandex/mobile/ads/impl/bc0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/bc0;->hashCode()I

    move-result p0

    return p0
.end method
