.class public final synthetic Lid2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid2;->b:Lcom/yandex/div/core/view2/Div2View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lid2;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {p0}, Lcom/yandex/div/core/view2/Div2View;->p(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method
