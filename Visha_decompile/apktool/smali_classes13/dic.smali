.class public final synthetic Ldic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

.field public final synthetic c:Lcom/transsion/dbdata/beans/sniff/Bookmark;

.field public final synthetic d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic e:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic f:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldic;->b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    iput-object p2, p0, Ldic;->c:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iput-object p3, p0, Ldic;->d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p4, p0, Ldic;->e:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p5, p0, Ldic;->f:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Ldic;->b:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    iget-object v1, p0, Ldic;->c:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-object v2, p0, Ldic;->d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v3, p0, Ldic;->e:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v4, p0, Ldic;->f:Lcom/transsion/widgetslib/dialog/d;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->y0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V

    return-void
.end method
