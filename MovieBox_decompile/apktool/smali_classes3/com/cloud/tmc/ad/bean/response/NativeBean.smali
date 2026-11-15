.class public final Lcom/cloud/tmc/ad/bean/response/NativeBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;,
        Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;,
        Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;,
        Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;,
        Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001:\u0005$%&\'(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\u0008J\u000e\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0017J\u0006\u0010!\u001a\u00020\u0017J\u0006\u0010\"\u001a\u00020\u0008J\u0008\u0010#\u001a\u00020\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\nR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/response/NativeBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "()V",
        "button",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;",
        "descript",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;",
        "descriptionTxt",
        "",
        "getDescriptionTxt",
        "()Ljava/lang/String;",
        "logo",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;",
        "getLogo",
        "()Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;",
        "logoUrl",
        "getLogoUrl",
        "mainImages",
        "",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;",
        "getMainImages",
        "()Ljava/util/List;",
        "rating",
        "",
        "Ljava/lang/Integer;",
        "title",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;",
        "titleTxt",
        "getTitleTxt",
        "version",
        "getButtonText",
        "getButtonTxt",
        "isInstallApk",
        "getRating",
        "getVersion",
        "toString",
        "ButtonDTO",
        "DescriptDTO",
        "LogoDTO",
        "MainImagesDTO",
        "TitleDTO",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final button:Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;

.field private final descript:Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;

.field private final logo:Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;

.field private final mainImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final rating:Ljava/lang/Integer;

.field private final title:Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->button:Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;->getText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final getButtonTxt(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->button:Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;->getText()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string p1, ""

    .line 18
    .line 19
    :cond_1
    return-object p1

    .line 20
    :cond_2
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget v0, Lcom/cloud/tmc/integration/R$string;->install:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "getContext()\n           \u2026tString(R.string.install)"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_3
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget v0, Lcom/cloud/tmc/integration/R$string;->open:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "getContext()\n           \u2026.getString(R.string.open)"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public final getDescriptionTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->descript:Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;->getText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final getLogo()Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->logo:Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->logo:Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final getMainImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->mainImages:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRating()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final getTitleTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->title:Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;->getText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->title:Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->descript:Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->button:Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->logo:Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->mainImages:Ljava/util/List;

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "NativeBean{version=\'"

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "\', rating="

    .line 29
    .line 30
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", title="

    .line 37
    .line 38
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", descript="

    .line 45
    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", button="

    .line 53
    .line 54
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", logo="

    .line 61
    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", mainImages="

    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, "}"

    .line 77
    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
