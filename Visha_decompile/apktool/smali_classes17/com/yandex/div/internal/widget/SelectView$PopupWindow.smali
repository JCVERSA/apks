.class Lcom/yandex/div/internal/widget/SelectView$PopupWindow;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/SelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0012\u0018\u00002\u00020\u0001:\u0001\u0016B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0015\u001a\u00060\u0012R\u00020\u00008\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/SelectView$PopupWindow;",
        "Landroidx/appcompat/widget/ListPopupWindow;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "getInputMethodMode",
        "()I",
        "Lzfb;",
        "show",
        "()V",
        "c",
        "b",
        "Landroid/content/Context;",
        "Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;",
        "Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;",
        "()Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;",
        "adapter",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    iput-object p1, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->b:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;

    invoke-direct {p1, p0}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;-><init>(Lcom/yandex/div/internal/widget/SelectView$PopupWindow;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    sget p3, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/internal/widget/SelectView$PopupWindow;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->c:Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;

    return-object p0
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    :cond_0
    return-void
.end method

.method public getInputMethodMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method
