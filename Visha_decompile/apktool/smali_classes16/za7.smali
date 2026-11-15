.class public final synthetic Lza7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lza7;->b:Landroid/widget/TextView;

    iput p2, p0, Lza7;->c:I

    iput p3, p0, Lza7;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lza7;->b:Landroid/widget/TextView;

    iget v1, p0, Lza7;->c:I

    iget p0, p0, Lza7;->d:F

    invoke-static {v0, v1, p0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->c(Landroid/widget/TextView;IF)V

    return-void
.end method
