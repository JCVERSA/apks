.class public final Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;
.super Lcom/yandex/div/core/util/mask/BaseInputMask$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/util/mask/BaseInputMask$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Character;

.field public final b:Lkotlin/text/Regex;

.field public final c:C


# direct methods
.method public constructor <init>(Ljava/lang/Character;Lkotlin/text/Regex;C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div/core/util/mask/BaseInputMask$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a:Ljava/lang/Character;

    iput-object p2, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->b:Lkotlin/text/Regex;

    iput-char p3, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->c:C

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Character;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a:Ljava/lang/Character;

    return-object p0
.end method

.method public final b()Lkotlin/text/Regex;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->b:Lkotlin/text/Regex;

    return-object p0
.end method

.method public final c()C
    .locals 0

    iget-char p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->c:C

    return p0
.end method

.method public final d(Ljava/lang/Character;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a:Ljava/lang/Character;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;

    iget-object v1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a:Ljava/lang/Character;

    iget-object v3, p1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a:Ljava/lang/Character;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->b:Lkotlin/text/Regex;

    iget-object v3, p1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->b:Lkotlin/text/Regex;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-char p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->c:C

    iget-char p1, p1, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->c:C

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a:Ljava/lang/Character;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->b:Lkotlin/text/Regex;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-char p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->c:C

    invoke-static {p0}, Ljava/lang/Character;->hashCode(C)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dynamic(char="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->a:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->b:Lkotlin/text/Regex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placeholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Lcom/yandex/div/core/util/mask/BaseInputMask$a$a;->c:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
