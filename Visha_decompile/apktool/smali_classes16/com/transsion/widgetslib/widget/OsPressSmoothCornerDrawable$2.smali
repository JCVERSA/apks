.class Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->hideWithFadeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable$2;->this$0:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable$2;->this$0:Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->a(Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method
