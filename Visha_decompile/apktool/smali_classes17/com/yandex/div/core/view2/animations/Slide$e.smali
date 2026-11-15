.class public final Lcom/yandex/div/core/view2/animations/Slide$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/animations/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
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
    invoke-direct {p0}, Lcom/yandex/div/core/view2/animations/Slide$e;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/animations/Slide$e;II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/animations/Slide$e;->b(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(II)I
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method
