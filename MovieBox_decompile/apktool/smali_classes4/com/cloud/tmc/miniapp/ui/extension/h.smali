.class public final synthetic Lcom/cloud/tmc/miniapp/ui/extension/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:Landroid/widget/LinearLayout;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->c:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->d:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->e:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->c:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->d:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/extension/h;->e:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;->b(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
