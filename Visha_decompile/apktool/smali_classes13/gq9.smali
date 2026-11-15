.class public abstract Lgq9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x7d0

    :try_start_0
    invoke-static {p0, p2, v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->e(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showSnackBar "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SnackBarUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
