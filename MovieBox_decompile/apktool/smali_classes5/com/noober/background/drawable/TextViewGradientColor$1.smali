.class Lcom/noober/background/drawable/TextViewGradientColor$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noober/background/drawable/TextViewGradientColor;->invoke(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noober/background/drawable/TextViewGradientColor;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/noober/background/drawable/TextViewGradientColor;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noober/background/drawable/TextViewGradientColor$1;->this$0:Lcom/noober/background/drawable/TextViewGradientColor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/noober/background/drawable/TextViewGradientColor$1;->val$textView:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/TextViewGradientColor$1;->val$textView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/noober/background/drawable/TextViewGradientColor$1;->val$textView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/noober/background/drawable/TextViewGradientColor$1;->val$textView:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sub-float v5, v1, v2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/noober/background/drawable/TextViewGradientColor$1;->this$0:Lcom/noober/background/drawable/TextViewGradientColor;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/noober/background/drawable/TextViewGradientColor;->access$000(Lcom/noober/background/drawable/TextViewGradientColor;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v1, p0, Lcom/noober/background/drawable/TextViewGradientColor$1;->this$0:Lcom/noober/background/drawable/TextViewGradientColor;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/noober/background/drawable/TextViewGradientColor;->access$100(Lcom/noober/background/drawable/TextViewGradientColor;)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    move-object v1, v9

    .line 49
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/noober/background/drawable/TextViewGradientColor$1;->val$textView:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
