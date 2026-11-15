.class Lcom/transsion/widgetslistitemlayout/OSListItemView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;->U(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$13;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$13;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->clearEditFocus()V

    return-void
.end method
