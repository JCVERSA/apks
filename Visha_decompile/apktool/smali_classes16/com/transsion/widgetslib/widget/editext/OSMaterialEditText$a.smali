.class public Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setShowDelete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$a;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$a;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->g(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
