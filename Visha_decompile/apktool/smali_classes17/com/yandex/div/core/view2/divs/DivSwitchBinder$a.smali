.class public Lcom/yandex/div/core/view2/divs/DivSwitchBinder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSwitchBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;Lcom/yandex/div2/DivSwitch;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$a;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Le74;)V
    .locals 1

    const-string v0, "valueUpdater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/SwitchView;->setOnCheckedChangeListener(Le74;)V

    return-void
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSwitchBinder$a;->a:Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/SwitchView;->setChecked(Z)V

    :cond_0
    return-void
.end method
