.method private R0()V
    .locals 10

    invoke-static {}, Lcom/snaptube/premium/viewmodel/UiDarkConfig;->c()Lcom/snaptube/premium/viewmodel/UiDarkConfig;

    move-result-object v0

    sget v1, Lcom/snaptube/ui/library/R$color;->bg_transparent:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->g()I

    move-result v3

    invoke-static {v2, v3}, Lo/sr7;->q(Landroid/view/Window;I)V

    invoke-virtual {v0}, Lcom/snaptube/premium/viewmodel/UiDarkConfig;->g()Lo/bx2;

    move-result-object v2

    invoke-interface {v2}, Lo/bx2;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0}, Lcom/snaptube/premium/viewmodel/UiDarkConfig;->f()Lo/bx2;

    move-result-object v0

    invoke-interface {v0}, Lo/bx2;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {p0}, Lcom/dywx/dyframework/base/DyAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lo/sr7;->m(Landroidx/appcompat/app/AppCompatActivity;ZZIIZZ)V

    return-void
.end method
