.class public Lzt7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzt7$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/ViewGroup;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lzt7$a;

.field public j:[Landroid/view/View;

.field public k:[Landroid/view/View;

.field public l:Z

.field public final m:I

.field public final n:I

.field public o:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    sget v4, Lcom/yandex/div/R$dimen;->overflow_menu_margin_horizontal:I

    sget v5, Lcom/yandex/div/R$dimen;->overflow_menu_margin_vertical:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lzt7;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x33

    .line 3
    iput v0, p0, Lzt7;->d:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lzt7;->e:I

    const/16 v0, 0xff

    .line 5
    iput v0, p0, Lzt7;->f:I

    const/16 v0, 0x53

    .line 6
    iput v0, p0, Lzt7;->g:I

    .line 7
    sget v0, Lcom/yandex/div/R$drawable;->ic_more_vert_white_24dp:I

    iput v0, p0, Lzt7;->h:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lzt7;->j:[Landroid/view/View;

    .line 9
    iput-object v0, p0, Lzt7;->k:[Landroid/view/View;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lzt7;->l:Z

    .line 11
    iput-object p1, p0, Lzt7;->a:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lzt7;->b:Landroid/view/View;

    .line 13
    iput-object p3, p0, Lzt7;->c:Landroid/view/ViewGroup;

    .line 14
    iput p4, p0, Lzt7;->m:I

    .line 15
    iput p5, p0, Lzt7;->n:I

    return-void
.end method

.method public static synthetic a(Lzt7;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lzt7;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lzt7;->o:Landroidx/appcompat/widget/PopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzt7;->o:Landroidx/appcompat/widget/PopupMenu;

    :cond_0
    return-void
.end method

.method public c()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lyt7;

    invoke-direct {v0, p0}, Lyt7;-><init>(Lzt7;)V

    return-object v0
.end method

.method public final synthetic d(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lzt7;->g:I

    invoke-direct {v0, v1, p1, v2}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object p1, p0, Lzt7;->i:Lzt7$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lzt7$a;->a(Landroidx/appcompat/widget/PopupMenu;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    iget-object p1, p0, Lzt7;->i:Lzt7$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lzt7$a;->b()V

    :cond_1
    iput-object v0, p0, Lzt7;->o:Landroidx/appcompat/widget/PopupMenu;

    return-void
.end method

.method public e(Lzt7$a;)Lzt7;
    .locals 0

    iput-object p1, p0, Lzt7;->i:Lzt7$a;

    return-object p0
.end method

.method public f(I)Lzt7;
    .locals 0

    iput p1, p0, Lzt7;->d:I

    return-object p0
.end method
