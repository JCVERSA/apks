.class public final Lfjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic b:Lddf;

.field public final synthetic c:Lijf;


# direct methods
.method public constructor <init>(Lijf;Lddf;)V
    .locals 0

    iput-object p2, p0, Lfjf;->b:Lddf;

    iput-object p1, p0, Lfjf;->c:Lijf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lfjf;->b:Lddf;

    iget-object p0, p0, Lfjf;->c:Lijf;

    const/16 v1, 0xa

    invoke-static {p0, p1, v0, v1}, Lijf;->I(Lijf;Landroid/view/View;Lddf;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
