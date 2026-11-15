.class public abstract Lcom/yandex/div/core/util/mask/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Lcom/yandex/div/core/util/mask/BaseInputMask$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/div/core/util/mask/BaseInputMask$c;

    const-string v1, "\\d"

    const/16 v2, 0x5f

    const/16 v3, 0x30

    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/div/core/util/mask/BaseInputMask$c;-><init>(CLjava/lang/String;C)V

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/div/core/util/mask/d;->a:Ljava/util/List;

    new-instance v1, Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    const-string v2, ""

    invoke-static {v2}, Lcom/yandex/div/core/util/mask/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/yandex/div/core/util/mask/BaseInputMask$b;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    sput-object v1, Lcom/yandex/div/core/util/mask/d;->b:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    return-void
.end method

.method public static final a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/util/mask/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public static final b()Lcom/yandex/div/core/util/mask/BaseInputMask$b;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/util/mask/d;->b:Lcom/yandex/div/core/util/mask/BaseInputMask$b;

    return-object v0
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "000000000000000"

    return-object p0

    :cond_0
    sget-object v0, La18;->b:Lorg/json/JSONObject;

    const/4 v1, 0x0

    :goto_0
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "null cannot be cast to non-null type org.json.JSONObject"

    const-string v5, "*"

    if-lt v1, v3, :cond_1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v5, v1

    :cond_2
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/json/JSONObject;

    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
