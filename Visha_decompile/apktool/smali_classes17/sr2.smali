.class public final synthetic Lsr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhcc;


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr2;->a:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lsr2;->a:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->i(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;)Lcom/yandex/div/internal/widget/tabs/TabItemLayout;

    move-result-object p0

    return-object p0
.end method
