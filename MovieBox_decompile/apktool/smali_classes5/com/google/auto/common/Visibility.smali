.class public final enum Lcom/google/auto/common/Visibility;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/auto/common/Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/auto/common/Visibility;

.field public static final enum DEFAULT:Lcom/google/auto/common/Visibility;

.field private static final MODULE:Ljavax/lang/model/element/ElementKind;

.field public static final enum PRIVATE:Lcom/google/auto/common/Visibility;

.field public static final enum PROTECTED:Lcom/google/auto/common/Visibility;

.field public static final enum PUBLIC:Lcom/google/auto/common/Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/auto/common/Visibility;

    .line 2
    .line 3
    const-string v1, "PRIVATE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/auto/common/Visibility;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/auto/common/Visibility;->PRIVATE:Lcom/google/auto/common/Visibility;

    .line 10
    .line 11
    new-instance v1, Lcom/google/auto/common/Visibility;

    .line 12
    .line 13
    const-string v3, "DEFAULT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/google/auto/common/Visibility;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/auto/common/Visibility;->DEFAULT:Lcom/google/auto/common/Visibility;

    .line 20
    .line 21
    new-instance v3, Lcom/google/auto/common/Visibility;

    .line 22
    .line 23
    const-string v5, "PROTECTED"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/google/auto/common/Visibility;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/google/auto/common/Visibility;->PROTECTED:Lcom/google/auto/common/Visibility;

    .line 30
    .line 31
    new-instance v5, Lcom/google/auto/common/Visibility;

    .line 32
    .line 33
    const-string v7, "PUBLIC"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/google/auto/common/Visibility;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/google/auto/common/Visibility;->PUBLIC:Lcom/google/auto/common/Visibility;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcom/google/auto/common/Visibility;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lcom/google/auto/common/Visibility;->$VALUES:[Lcom/google/auto/common/Visibility;

    .line 53
    .line 54
    const-class v0, Ljavax/lang/model/element/ElementKind;

    .line 55
    .line 56
    const-string v1, "MODULE"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/google/common/base/d;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljavax/lang/model/element/ElementKind;

    .line 67
    .line 68
    sput-object v0, Lcom/google/auto/common/Visibility;->MODULE:Ljavax/lang/model/element/ElementKind;

    .line 69
    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static effectiveVisibilityOfElement(Ljavax/lang/model/element/Element;)Lcom/google/auto/common/Visibility;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/auto/common/Visibility;->PUBLIC:Lcom/google/auto/common/Visibility;

    .line 5
    .line 6
    :goto_0
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p0}, Lcom/google/auto/common/Visibility;->ofElement(Ljavax/lang/model/element/Element;)Lcom/google/auto/common/Visibility;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/google/auto/common/Visibility;

    .line 21
    .line 22
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public static ofElement(Ljavax/lang/model/element/Element;)Lcom/google/auto/common/Visibility;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/google/auto/common/Visibility;->MODULE:Ljavax/lang/model/element/ElementKind;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v0, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    .line 34
    .line 35
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object p0, Lcom/google/auto/common/Visibility;->PRIVATE:Lcom/google/auto/common/Visibility;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object v0, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    .line 45
    .line 46
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    sget-object p0, Lcom/google/auto/common/Visibility;->PROTECTED:Lcom/google/auto/common/Visibility;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    .line 56
    .line 57
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    sget-object p0, Lcom/google/auto/common/Visibility;->PUBLIC:Lcom/google/auto/common/Visibility;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_3
    sget-object p0, Lcom/google/auto/common/Visibility;->DEFAULT:Lcom/google/auto/common/Visibility;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/auto/common/Visibility;->PUBLIC:Lcom/google/auto/common/Visibility;

    .line 70
    .line 71
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/auto/common/Visibility;
    .locals 1

    .line 1
    const-class v0, Lcom/google/auto/common/Visibility;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/auto/common/Visibility;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/auto/common/Visibility;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/auto/common/Visibility;->$VALUES:[Lcom/google/auto/common/Visibility;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/auto/common/Visibility;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/auto/common/Visibility;

    .line 8
    .line 9
    return-object v0
.end method
