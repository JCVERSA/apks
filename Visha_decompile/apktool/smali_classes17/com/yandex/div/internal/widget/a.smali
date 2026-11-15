.class public final synthetic Lcom/yandex/div/internal/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/internal/widget/SelectView;

.field public final synthetic c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/SelectView;Lcom/yandex/div/internal/widget/SelectView$PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/a;->b:Lcom/yandex/div/internal/widget/SelectView;

    iput-object p2, p0, Lcom/yandex/div/internal/widget/a;->c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/yandex/div/internal/widget/a;->b:Lcom/yandex/div/internal/widget/SelectView;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/a;->c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/internal/widget/SelectView;->n(Lcom/yandex/div/internal/widget/SelectView;Lcom/yandex/div/internal/widget/SelectView$PopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
