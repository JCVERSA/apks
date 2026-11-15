.class public Lcu2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lbu2;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lbu2;)V
    .locals 1

    const-string v0, "typefaceProviders"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTypeface"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu2;->a:Ljava/util/Map;

    iput-object p2, p0, Lcu2;->b:Lbu2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcu2;->b:Lbu2;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcu2;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbu2;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcu2;->b:Lbu2;

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    invoke-static {p2, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->e0(ILbu2;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;)Landroid/graphics/Typeface;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcu2;->b:Lbu2;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcu2;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbu2;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcu2;->b:Lbu2;

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    invoke-static {p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->f0(Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;)I

    move-result p1

    invoke-static {p1, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->e0(ILbu2;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
