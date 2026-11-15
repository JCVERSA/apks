.class public Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iget-object v3, v3, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->E:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iget-object v3, v3, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->F:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iget-object v0, v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->G:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iget-object v0, v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->H:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;->b:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    const-string p0, "manualedit"

    sput-object p0, Lqy5;->a:Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
