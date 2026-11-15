.class public Lcom/transsion/widgetslistitemlayout/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/c;->j(IZLjava/lang/Runnable;)Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslistitemlayout/c;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/c$c;->b:Lcom/transsion/widgetslistitemlayout/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/c$c;->b:Lcom/transsion/widgetslistitemlayout/c;

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/c;->e(Lcom/transsion/widgetslistitemlayout/c;Landroid/widget/EditText;Z)V

    :cond_0
    return-void
.end method
