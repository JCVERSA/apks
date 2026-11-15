.class public Lso7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p2, p0, Lso7;->b:Lcom/transsion/widgetslib/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lso7;->b:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
