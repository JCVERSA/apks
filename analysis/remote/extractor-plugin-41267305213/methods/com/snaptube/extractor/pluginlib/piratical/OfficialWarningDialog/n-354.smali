.method public final n()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->t()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "#2F2F2F"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x10

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v9, 0x30

    invoke-static {v9}, Lo/sf5;->a(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v9, Lo/mg8;->a:Lo/mg8;

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->q()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->m(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Lo/pf5;

    invoke-direct {v6, v0}, Lo/pf5;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->l(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "getContext(...)"

    invoke-static {v9, v10}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "guide_download"

    invoke-virtual {v6, v9, v11}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/16 v11, 0xca

    invoke-static {v11}, Lo/sf5;->a(I)F

    move-result v12

    float-to-int v12, v12

    const/16 v13, 0x66

    invoke-static {v13}, Lo/sf5;->a(I)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v9, v12, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "step_one_action"

    invoke-static {v6, v5}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$6;

    invoke-direct {v9, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$6;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    invoke-virtual {v0, v5, v4, v9}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->j(Ljava/lang/String;ZLo/bx2;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->b:Landroid/widget/Button;

    if-nez v5, :cond_1

    const-string v5, "btnDownload"

    invoke-static {v5}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_1
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v14

    float-to-int v14, v14

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v15

    float-to-int v15, v15

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v12, v14, v15, v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->m(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->l(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "guide_uninstall"

    invoke-virtual {v6, v5, v9}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v5, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v11}, Lo/sf5;->a(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v13}, Lo/sf5;->a(I)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v5, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "step_two_action"

    invoke-static {v6, v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$10;

    invoke-direct {v4, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$createView$1$1$10;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->j(Ljava/lang/String;ZLo/bx2;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->c:Landroid/widget/Button;

    if-nez v3, :cond_3

    const-string v3, "btnUninstall"

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    move-object v9, v3

    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v8}, Lo/sf5;->a(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method
