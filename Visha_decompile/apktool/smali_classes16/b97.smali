.class public final synthetic Lb97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;


# direct methods
.method public synthetic constructor <init>([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb97;->b:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p2, p0, Lb97;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lb97;->b:[Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object p0, p0, Lb97;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->d([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    return-void
.end method
