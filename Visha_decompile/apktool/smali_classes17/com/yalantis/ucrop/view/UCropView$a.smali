.class public Lcom/yalantis/ucrop/view/UCropView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpl1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/view/UCropView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/view/UCropView;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/UCropView;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/UCropView$a;->a:Lcom/yalantis/ucrop/view/UCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/UCropView$a;->a:Lcom/yalantis/ucrop/view/UCropView;

    invoke-static {p0}, Lcom/yalantis/ucrop/view/UCropView;->b(Lcom/yalantis/ucrop/view/UCropView;)Lcom/yalantis/ucrop/view/OverlayView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->setTargetAspectRatio(F)V

    return-void
.end method
