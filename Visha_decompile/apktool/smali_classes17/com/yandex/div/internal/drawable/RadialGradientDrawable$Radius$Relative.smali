.class public final Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;
.super Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relative"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;->a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;->a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;

    iget-object p0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;->a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    iget-object p1, p1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;->a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;->a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relative(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;->a:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
