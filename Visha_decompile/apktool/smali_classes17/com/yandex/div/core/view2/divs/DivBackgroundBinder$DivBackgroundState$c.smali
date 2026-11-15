.class public final Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;
.super Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;,
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

.field public final b:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

.field public final c:Ljava/util/List;

.field public final d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;Ljava/util/List;Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;)V
    .locals 1

    const-string v0, "centerX"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centerY"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "radius"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->b:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;

    return-void
.end method


# virtual methods
.method public final b()Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    return-object p0
.end method

.method public final c()Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->b:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->c:Ljava/util/List;

    return-object p0
.end method

.method public final e()Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    iget-object v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->b:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    iget-object v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->b:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->c:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;

    iget-object p1, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->b:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadialGradient(centerX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->b:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
