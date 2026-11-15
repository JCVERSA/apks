.class public final synthetic Ltb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;

.field public final synthetic c:I

.field public final synthetic d:Lub9;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;ILub9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb9;->b:Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;

    iput p2, p0, Ltb9;->c:I

    iput-object p3, p0, Ltb9;->d:Lub9;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ltb9;->b:Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;

    iget v1, p0, Ltb9;->c:I

    iget-object p0, p0, Ltb9;->d:Lub9;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;->a(Lcom/transsion/onlinevideo/adapter/SelectionAdapter$b;ILub9;Landroid/view/View;)V

    return-void
.end method
