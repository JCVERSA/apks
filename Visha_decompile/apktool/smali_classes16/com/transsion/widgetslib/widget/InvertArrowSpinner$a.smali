.class public Lcom/transsion/widgetslib/widget/InvertArrowSpinner$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$a;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$a;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-virtual {v0, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$a;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$a;->b:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->b(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Lcom/transsion/widgetslib/widget/OSPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OSPopupWindow;->dismiss()V

    return-void
.end method
