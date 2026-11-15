.class public Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$a;->c:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$a;->c:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->a(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$a;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b$a;->c:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$b;->b:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->d(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
