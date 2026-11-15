.class final Lcom/yandex/mobile/ads/impl/ao$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/yandex/mobile/ads/impl/ao$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/yandex/mobile/ads/impl/hv;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/fp2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/fp2;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ao$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/text/SpannableStringBuilder;Landroid/text/Layout$Alignment;FIFIZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hv$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/hv$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/hv$a;->a(Ljava/lang/CharSequence;)Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/hv$a;->b(Landroid/text/Layout$Alignment;)Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/yandex/mobile/ads/impl/hv$a;->a(IF)Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/yandex/mobile/ads/impl/hv$a;->a(I)Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/yandex/mobile/ads/impl/hv$a;->b(F)Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/yandex/mobile/ads/impl/hv$a;->b(I)Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p1

    const p2, -0x800001

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/hv$a;->d(F)Lcom/yandex/mobile/ads/impl/hv$a;

    move-result-object p1

    if-eqz p7, :cond_0

    invoke-virtual {p1, p8}, Lcom/yandex/mobile/ads/impl/hv$a;->d(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/hv$a;->a()Lcom/yandex/mobile/ads/impl/hv;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ao$a;->a:Lcom/yandex/mobile/ads/impl/hv;

    iput p9, p0, Lcom/yandex/mobile/ads/impl/ao$a;->b:I

    return-void
.end method

.method private static synthetic a(Lcom/yandex/mobile/ads/impl/ao$a;Lcom/yandex/mobile/ads/impl/ao$a;)I
    .locals 0

    iget p1, p1, Lcom/yandex/mobile/ads/impl/ao$a;->b:I

    iget p0, p0, Lcom/yandex/mobile/ads/impl/ao$a;->b:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/ao$a;Lcom/yandex/mobile/ads/impl/ao$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/ao$a;->a(Lcom/yandex/mobile/ads/impl/ao$a;Lcom/yandex/mobile/ads/impl/ao$a;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/ao$a;->c:Ljava/util/Comparator;

    return-object v0
.end method
