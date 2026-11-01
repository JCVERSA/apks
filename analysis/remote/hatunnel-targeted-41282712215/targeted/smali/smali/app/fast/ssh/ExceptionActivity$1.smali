.class Lapp/fast/ssh/ExceptionActivity$1;
.super Ljava/lang/Object;
.source "ExceptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/ExceptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/ExceptionActivity;


# direct methods
.method constructor <init>(Lapp/fast/ssh/ExceptionActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/ExceptionActivity$1;->this$0:Lapp/fast/ssh/ExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lapp/fast/ssh/ExceptionActivity$1;->this$0:Lapp/fast/ssh/ExceptionActivity;

    const-class v1, Lapp/fast/ssh/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lapp/fast/ssh/ExceptionActivity$1;->this$0:Lapp/fast/ssh/ExceptionActivity;

    invoke-virtual {v0, p1}, Lapp/fast/ssh/ExceptionActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lapp/fast/ssh/ExceptionActivity$1;->this$0:Lapp/fast/ssh/ExceptionActivity;

    invoke-virtual {p1}, Lapp/fast/ssh/ExceptionActivity;->finish()V

    return-void
.end method
