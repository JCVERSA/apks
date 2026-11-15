.class public final synthetic Lupa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/ToolsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lupa;->b:Lcom/transsion/tools/fragments/ToolsFragment;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lupa;->b:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment;->f0(Lcom/transsion/tools/fragments/ToolsFragment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
