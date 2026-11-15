.class public final Lw7b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw7b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw7b$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lw7b$a;Landroid/view/View;)F
    .locals 0

    invoke-virtual {p0, p1}, Lw7b$a;->b(Landroid/view/View;)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroid/view/View;)F
    .locals 1

    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const-string v0, "resources.displayMetrics"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
