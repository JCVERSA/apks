.class public final synthetic Lcb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

.field public final synthetic c:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb9;->b:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    iput-object p2, p0, Lcb9;->c:Landroidx/fragment/app/DialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcb9;->b:Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    iget-object p0, p0, Lcb9;->c:Landroidx/fragment/app/DialogFragment;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->f0(Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;Landroidx/fragment/app/DialogFragment;Landroid/view/View;)V

    return-void
.end method
