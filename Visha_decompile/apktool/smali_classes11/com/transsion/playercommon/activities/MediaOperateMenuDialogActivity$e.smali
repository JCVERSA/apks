.class public Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->z0(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->f:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iput-object p2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p3, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p4, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-boolean p5, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playshow"

    invoke-static {p1, v0, v1, v2}, Lqy5;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->f:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    new-instance v0, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_more_edit:I

    sget v2, Lcom/transsion/playercommon/R$string;->audio_edit:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(IIIZ)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->o0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->f:Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;->d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->n0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
