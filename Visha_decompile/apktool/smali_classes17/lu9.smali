.class public final synthetic Llu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/view2/spannable/a$b;


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic b:Lcom/yandex/div/core/view2/a;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu9;->a:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Llu9;->b:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Llu9;->c:Landroid/widget/TextView;

    iput-object p4, p0, Llu9;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Llu9;->a:Lcom/yandex/div/core/view2/Div2View;

    iget-object v1, p0, Llu9;->b:Lcom/yandex/div/core/view2/a;

    iget-object v2, p0, Llu9;->c:Landroid/widget/TextView;

    iget-object p0, p0, Llu9;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->a(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Ljava/util/List;)V

    return-void
.end method
