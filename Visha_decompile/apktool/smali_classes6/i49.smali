.class public final synthetic Li49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/fragment/SearchCloudFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/SearchCloudFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li49;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Li49;->b:Lcom/transsion/cloud/fragment/SearchCloudFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/cloud/fragment/SearchCloudFragment;->I0(Lcom/transsion/cloud/fragment/SearchCloudFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
