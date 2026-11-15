.class public Lvs8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvs8$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;

.field public final d:[B

.field public final e:Lorg/schabi/newpipe/extractor/localization/Localization;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "Request\'s httpMethod is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lvs8;->a:Ljava/lang/String;

    .line 4
    const-string p1, "Request\'s url is null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lvs8;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lvs8;->d:[B

    .line 6
    iput-object p5, p0, Lvs8;->e:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 8
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p6, :cond_1

    if-eqz p5, :cond_1

    .line 9
    invoke-static {p5}, Lvs8;->b(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lvs8;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lvs8$a;)V
    .locals 7

    .line 11
    invoke-static {p1}, Lvs8$a;->d(Lvs8$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lvs8$a;->f(Lvs8$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lvs8$a;->c(Lvs8$a;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lvs8$a;->b(Lvs8$a;)[B

    move-result-object v4

    invoke-static {p1}, Lvs8$a;->e(Lvs8$a;)Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v5

    invoke-static {p1}, Lvs8$a;->a(Lvs8$a;)Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lvs8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lvs8$a;Lws8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvs8;-><init>(Lvs8$a;)V

    return-void
.end method

.method public static b(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/util/Map;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";q=0.9"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Accept-Language"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lvs8$a;
    .locals 1

    new-instance v0, Lvs8$a;

    invoke-direct {v0}, Lvs8$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()[B
    .locals 0

    iget-object p0, p0, Lvs8;->d:[B

    return-object p0
.end method

.method public c()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lvs8;->c:Ljava/util/Map;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvs8;->a:Ljava/lang/String;

    return-object p0
.end method

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
    check-cast p1, Lvs8;

    iget-object v2, p0, Lvs8;->a:Ljava/lang/String;

    iget-object v3, p1, Lvs8;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lvs8;->b:Ljava/lang/String;

    iget-object v3, p1, Lvs8;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lvs8;->c:Ljava/util/Map;

    iget-object v3, p1, Lvs8;->c:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lvs8;->d:[B

    iget-object v3, p1, Lvs8;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lvs8;->e:Lorg/schabi/newpipe/extractor/localization/Localization;

    iget-object p1, p1, Lvs8;->e:Lorg/schabi/newpipe/extractor/localization/Localization;

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

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvs8;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lvs8;->a:Ljava/lang/String;

    iget-object v1, p0, Lvs8;->b:Ljava/lang/String;

    iget-object v2, p0, Lvs8;->c:Ljava/util/Map;

    iget-object v3, p0, Lvs8;->e:Lorg/schabi/newpipe/extractor/localization/Localization;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lvs8;->d:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
