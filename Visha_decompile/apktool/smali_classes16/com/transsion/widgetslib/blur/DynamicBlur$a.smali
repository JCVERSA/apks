.class public Lcom/transsion/widgetslib/blur/DynamicBlur$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/blur/DynamicBlur;->setBlurredView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/blur/DynamicBlur;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$a;->b:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    invoke-static {}, Lcom/transsion/widgetslib/blur/DynamicBlur;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewTreeObserver, onGlobalLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$a;->b:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-static {v2}, Lcom/transsion/widgetslib/blur/DynamicBlur;->b(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$a;->b:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->n()V

    return-void
.end method
