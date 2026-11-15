.class public Lcom/questionnaire/sdk/view/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/questionnaire/sdk/view/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/questionnaire/sdk/view/a;


# direct methods
.method public constructor <init>(Lcom/questionnaire/sdk/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/view/a$b;->b:Lcom/questionnaire/sdk/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/questionnaire/sdk/view/a$b;->b:Lcom/questionnaire/sdk/view/a;

    iget-object p1, p1, Lcom/questionnaire/sdk/view/a;->k:Lcom/questionnaire/sdk/view/a$d;

    invoke-interface {p1}, Lcom/questionnaire/sdk/view/a$d;->onClose()V

    iget-object p0, p0, Lcom/questionnaire/sdk/view/a$b;->b:Lcom/questionnaire/sdk/view/a;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
