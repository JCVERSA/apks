.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;-><init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLc74;Lc74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$c;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$c;->c:Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$c;->b:Landroid/view/View;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$c;->c:Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
