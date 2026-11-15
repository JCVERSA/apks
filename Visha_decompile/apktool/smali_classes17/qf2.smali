.class public final Lqf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luf2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 0

    const-string p0, "action"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resolver"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p2, Lcom/yandex/div2/DivActionTyped$f;

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->clearFocus()V

    invoke-static {p3}, Leg2;->a(Landroid/view/View;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
