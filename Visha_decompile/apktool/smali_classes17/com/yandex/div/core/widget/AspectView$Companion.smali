.class public final Lcom/yandex/div/core/widget/AspectView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/widget/AspectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic a:Lcom/yandex/div/core/widget/AspectView$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/widget/AspectView$Companion;

    invoke-direct {v0}, Lcom/yandex/div/core/widget/AspectView$Companion;-><init>()V

    sput-object v0, Lcom/yandex/div/core/widget/AspectView$Companion;->a:Lcom/yandex/div/core/widget/AspectView$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lgo8;
    .locals 1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v0, Lcom/yandex/div/core/widget/AspectView$Companion$aspectRatioProperty$1;->INSTANCE:Lcom/yandex/div/core/widget/AspectView$Companion$aspectRatioProperty$1;

    invoke-static {p0, v0}, Lodc;->c(Ljava/lang/Object;Le74;)Lgo8;

    move-result-object p0

    return-object p0
.end method
