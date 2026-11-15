.class public final synthetic Lrt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrt0;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iput-object p2, p0, Lrt0;->c:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lrt0;->d:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lrt0;->b:Lcom/transsion/onlinevideo/channel/ChannelFragment;

    iget-object v1, p0, Lrt0;->c:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lrt0;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->U(Lcom/transsion/onlinevideo/channel/ChannelFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method
