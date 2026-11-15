.class public Lcom/transsion/magicvideo/widgets/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/a;->m(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/a;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/a;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/a$c;->c:Lcom/transsion/magicvideo/widgets/a;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/a$c;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/a$c;->c:Lcom/transsion/magicvideo/widgets/a;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/a;->b(Lcom/transsion/magicvideo/widgets/a;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/a$c;->c:Lcom/transsion/magicvideo/widgets/a;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/a;->b(Lcom/transsion/magicvideo/widgets/a;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a$c;->b:Landroid/widget/TextView;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
