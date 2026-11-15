.class public final Lcom/yandex/mobile/ads/impl/hp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/mobile/ads/impl/v11;

.field private static final b:Ljava/lang/String;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/v11;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/v11$a;->a()Lcom/yandex/mobile/ads/impl/v11;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/hp0;->a:Lcom/yandex/mobile/ads/impl/v11;

    const-string v0, "YandexAds"

    sput-object v0, Lcom/yandex/mobile/ads/impl/hp0;->b:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/yandex/mobile/ads/impl/hp0;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Integration] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 3
    const-string v0, "format"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-boolean v0, Lcom/yandex/mobile/ads/impl/hp0;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    sget-object v0, Lhz9;->a:Lhz9;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hp0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    sget-boolean p1, Lcom/yandex/mobile/ads/impl/hp0;->c:Z

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/yandex/mobile/ads/impl/hp0;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    sget-object p1, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    sget-object p1, Lcom/yandex/mobile/ads/impl/hp0;->a:Lcom/yandex/mobile/ads/impl/v11;

    sget-object v0, Lcom/yandex/mobile/ads/impl/k11;->d:Lcom/yandex/mobile/ads/impl/k11;

    sget-object v1, Lcom/yandex/mobile/ads/impl/hp0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/v11;->a(Lcom/yandex/mobile/ads/impl/k11;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final a(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/yandex/mobile/ads/impl/hp0;->c:Z

    return-void
.end method

.method public static final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "format"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/yandex/mobile/ads/impl/hp0;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lhz9;->a:Lhz9;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hp0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/yandex/mobile/ads/impl/hp0;->c:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/yandex/mobile/ads/impl/hp0;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/yandex/mobile/ads/impl/hp0;->a:Lcom/yandex/mobile/ads/impl/v11;

    sget-object v0, Lcom/yandex/mobile/ads/impl/k11;->b:Lcom/yandex/mobile/ads/impl/k11;

    sget-object v1, Lcom/yandex/mobile/ads/impl/hp0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/v11;->a(Lcom/yandex/mobile/ads/impl/k11;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "format"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/yandex/mobile/ads/impl/hp0;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lhz9;->a:Lhz9;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hp0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/yandex/mobile/ads/impl/hp0;->c:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/yandex/mobile/ads/impl/hp0;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lcom/yandex/mobile/ads/impl/l11;->a:Lcom/yandex/mobile/ads/impl/l11;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l11;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/yandex/mobile/ads/impl/hp0;->a:Lcom/yandex/mobile/ads/impl/v11;

    sget-object v0, Lcom/yandex/mobile/ads/impl/k11;->c:Lcom/yandex/mobile/ads/impl/k11;

    sget-object v1, Lcom/yandex/mobile/ads/impl/hp0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/v11;->a(Lcom/yandex/mobile/ads/impl/k11;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
