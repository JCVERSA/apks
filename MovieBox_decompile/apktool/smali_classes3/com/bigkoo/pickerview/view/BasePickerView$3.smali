.class Lcom/bigkoo/pickerview/view/BasePickerView$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/BasePickerView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/BasePickerView;->e:Lr5/a;

    .line 4
    .line 5
    iget-object v1, v1, Lr5/a;->A:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->b(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->d(Lcom/bigkoo/pickerview/view/BasePickerView;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->c(Lcom/bigkoo/pickerview/view/BasePickerView;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$3;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->a(Lcom/bigkoo/pickerview/view/BasePickerView;)Ls5/b;

    .line 28
    .line 29
    .line 30
    return-void
.end method
