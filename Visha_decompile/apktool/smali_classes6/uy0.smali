.class public final synthetic Luy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/fragment/CloudBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy0;->a:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Luy0;->a:Lcom/transsion/cloud/fragment/CloudBaseFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->l0(Lcom/transsion/cloud/fragment/CloudBaseFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
