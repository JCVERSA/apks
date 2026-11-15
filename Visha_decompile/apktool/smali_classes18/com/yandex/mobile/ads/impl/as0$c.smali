.class final Lcom/yandex/mobile/ads/impl/as0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/as0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/mobile/ads/impl/bc0$a;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/as0$c;->a:Ljava/lang/Object;

    new-instance p1, Lcom/yandex/mobile/ads/impl/bc0$a;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/bc0$a;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/as0$c;->b:Lcom/yandex/mobile/ads/impl/bc0$a;

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/as0$c;)Lcom/yandex/mobile/ads/impl/bc0$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/as0$c;->b:Lcom/yandex/mobile/ads/impl/bc0$a;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/as0$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/as0$c;->c:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/as0$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/as0$c;->d:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/as0$c;Lcom/yandex/mobile/ads/impl/bc0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/as0$c;->b:Lcom/yandex/mobile/ads/impl/bc0$a;

    return-void
.end method

.method public static bridge synthetic e(Lcom/yandex/mobile/ads/impl/as0$c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/as0$c;->c:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/yandex/mobile/ads/impl/as0$c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/as0$c;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/yandex/mobile/ads/impl/as0$c;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/as0$c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/as0$c;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/as0$c;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/as0$c;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
