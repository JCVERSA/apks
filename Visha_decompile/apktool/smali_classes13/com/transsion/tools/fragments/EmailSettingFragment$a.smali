.class public Lcom/transsion/tools/fragments/EmailSettingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/EmailSettingFragment;->X(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/EmailSettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$a;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$a;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->U()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
