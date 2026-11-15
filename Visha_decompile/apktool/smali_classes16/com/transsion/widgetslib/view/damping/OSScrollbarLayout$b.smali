.class public Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$b;->a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$b;->a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$b;->a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->H(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$b;->a:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method
