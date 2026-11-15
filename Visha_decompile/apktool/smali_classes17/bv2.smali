.class public final synthetic Lbv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhcc;


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/DivViewCreator;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/DivViewCreator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbv2;->a:Lcom/yandex/div/core/view2/DivViewCreator;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lbv2;->a:Lcom/yandex/div/core/view2/DivViewCreator;

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->y(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;

    move-result-object p0

    return-object p0
.end method
