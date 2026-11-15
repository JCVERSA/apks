.class public final synthetic Lada;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/TabOperationBar;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/widget/LinearLayout;

.field public final synthetic e:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/TabOperationBar;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lada;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    iput-object p2, p0, Lada;->c:Landroid/view/View;

    iput-object p3, p0, Lada;->d:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lada;->e:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lada;->b:Lcom/transsion/playercommon/widgets/TabOperationBar;

    iget-object v1, p0, Lada;->c:Landroid/view/View;

    iget-object v2, p0, Lada;->d:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lada;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/playercommon/widgets/TabOperationBar;->b(Lcom/transsion/playercommon/widgets/TabOperationBar;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    return-void
.end method
