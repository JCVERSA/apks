.class Lcom/transsion/widgets/CustomTabLayoutNew$TabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateTextVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$1;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$1;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->b(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$1;->this$1:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-static {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->b(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Landroid/widget/TextView;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
