.class public final synthetic Lf97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf97;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lf97;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->updateTextPadding()V

    return-void
.end method
