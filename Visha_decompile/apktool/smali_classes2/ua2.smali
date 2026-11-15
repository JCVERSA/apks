.class public final synthetic Lua2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lwa2$c;

.field public final synthetic c:Lcom/cloud/tupdate/bean/UpdateContent;

.field public final synthetic d:Lww4;

.field public final synthetic e:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public synthetic constructor <init>(Lwa2$c;Lcom/cloud/tupdate/bean/UpdateContent;Lww4;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua2;->b:Lwa2$c;

    iput-object p2, p0, Lua2;->c:Lcom/cloud/tupdate/bean/UpdateContent;

    iput-object p3, p0, Lua2;->d:Lww4;

    iput-object p4, p0, Lua2;->e:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lua2;->b:Lwa2$c;

    iget-object v1, p0, Lua2;->c:Lcom/cloud/tupdate/bean/UpdateContent;

    iget-object v2, p0, Lua2;->d:Lww4;

    iget-object p0, p0, Lua2;->e:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {v0, v1, v2, p0, p1}, Lwa2$a;->h(Lwa2$c;Lcom/cloud/tupdate/bean/UpdateContent;Lww4;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V

    return-void
.end method
