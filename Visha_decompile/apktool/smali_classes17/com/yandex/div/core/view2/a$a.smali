.class public final Lcom/yandex/div/core/view2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/a;
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
    invoke-direct {p0}, Lcom/yandex/div/core/view2/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/div/core/view2/a;
    .locals 2

    const-string p0, "divView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/core/view2/a;

    sget-object v0, Loj3;->b:Loj3;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/yandex/div/core/view2/a;-><init>(Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/expression/local/RuntimeStore;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
