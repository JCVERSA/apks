.class public Lcom/transsion/widgetslib/widget/InvertArrowSpinner$c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$c;->a:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$c;->a:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->e(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$c;->a:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->f(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$c;->a:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->e(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$c;->a:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->f(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)V

    return-void
.end method
