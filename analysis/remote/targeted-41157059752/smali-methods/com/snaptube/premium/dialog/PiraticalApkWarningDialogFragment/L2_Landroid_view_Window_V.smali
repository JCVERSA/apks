.method public final L2(Landroid/view/Window;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/high16 v1, -0x78000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/l65;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "getAttributes(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/pg4;->a(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method
