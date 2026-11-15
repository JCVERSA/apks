.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback$a;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback$a;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;->a(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;)V

    return-void
.end method
