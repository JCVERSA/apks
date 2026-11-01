.class public Lapp/fast/ssh/dialog/PayloadGen;
.super Ljava/lang/Object;
.source "PayloadGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;
    }
.end annotation


# instance fields
.field private final generatorListener:Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;

.field private generator_view:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private post_generator_view:Landroid/widget/LinearLayout;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lapp/fast/ssh/dialog/PayloadGen;->generatorListener:Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lapp/fast/ssh/dialog/PayloadGen;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f09010a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen;->generator_view:Landroid/widget/LinearLayout;

    const p1, 0x7f0901e7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen;->post_generator_view:Landroid/widget/LinearLayout;

    const p1, 0x7f090108

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lapp/fast/ssh/dialog/PayloadGen$1;

    invoke-direct {v2, p0}, Lapp/fast/ssh/dialog/PayloadGen$1;-><init>(Lapp/fast/ssh/dialog/PayloadGen;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09011b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const v2, 0x7f09011f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/CheckBox;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v2, v3, p1

    aget-object v2, v3, v4

    new-instance v5, Lapp/fast/ssh/dialog/PayloadGen$2;

    invoke-direct {v5, p0, v3}, Lapp/fast/ssh/dialog/PayloadGen$2;-><init>(Lapp/fast/ssh/dialog/PayloadGen;[Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    aget-object p1, v3, p1

    new-instance v2, Lapp/fast/ssh/dialog/PayloadGen$3;

    invoke-direct {v2, p0, v3}, Lapp/fast/ssh/dialog/PayloadGen$3;-><init>(Lapp/fast/ssh/dialog/PayloadGen;[Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string/jumbo p1, "\u3158"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo p1, "\u3159"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo p1, "\u315a"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f09029a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object p2, p0, Lapp/fast/ssh/dialog/PayloadGen;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "\u315b"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u315c"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/dialog/PayloadGen;)V
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/dialog/PayloadGen;->generate()V

    return-void
.end method

.method static synthetic access$100(Lapp/fast/ssh/dialog/PayloadGen;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/PayloadGen;->generator_view:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lapp/fast/ssh/dialog/PayloadGen;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/PayloadGen;->post_generator_view:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lapp/fast/ssh/dialog/PayloadGen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/fast/ssh/dialog/PayloadGen;->showButtons(Z)V

    return-void
.end method

.method static synthetic access$400(Lapp/fast/ssh/dialog/PayloadGen;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/PayloadGen;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lapp/fast/ssh/dialog/PayloadGen;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lapp/fast/ssh/dialog/PayloadGen;)Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/PayloadGen;->generatorListener:Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;

    return-object p0
.end method

.method static synthetic access$700(Lapp/fast/ssh/dialog/PayloadGen;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private generate()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v2, 0x7f09029b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v3, 0x7f09029a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v0, Lapp/fast/ssh/dialog/PayloadGen;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\u315b"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v3, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v4, 0x7f0901dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v5, 0x7f09016f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iget-object v5, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v6, 0x7f09012d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iget-object v6, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v7, 0x7f09013d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iget-object v6, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v7, 0x7f090105

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iget-object v7, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v8, 0x7f090067

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iget-object v8, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v9, 0x7f09011b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iget-object v9, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v10, 0x7f09011f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    const/4 v10, 0x2

    new-array v11, v10, [Landroid/widget/CheckBox;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v9, v11, v8

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, ""

    invoke-virtual {v9, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v2, "\u315d"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v9, 0x7f09011c

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v9, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v13, 0x7f09011d

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iget-object v13, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v14, 0x7f09011e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    iget-object v14, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v15, 0x7f090120

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    iget-object v15, v0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    move/from16 v16, v8

    const v8, 0x7f090121

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const/4 v15, 0x5

    move/from16 v17, v12

    new-array v12, v15, [Landroid/widget/CheckBox;

    aput-object v1, v12, v17

    aput-object v9, v12, v16

    aput-object v13, v12, v10

    const/4 v1, 0x3

    aput-object v14, v12, v1

    const/4 v1, 0x4

    aput-object v8, v12, v1

    const-string/jumbo v1, "\u315e"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "\u315f"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u3160"

    invoke-static {v13}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u3161"

    invoke-static {v13}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\u3162"

    invoke-static {v14}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "\u3163"

    invoke-static {v15}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u3164"

    invoke-static {v10}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v1, v9, v13, v14, v10}, [Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lapp/fast/ssh/dialog/PayloadGen$7;

    invoke-direct {v9, v0, v7}, Lapp/fast/ssh/dialog/PayloadGen$7;-><init>(Lapp/fast/ssh/dialog/PayloadGen;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v9, Lapp/fast/ssh/dialog/PayloadGen$8;

    invoke-direct {v9, v0, v6}, Lapp/fast/ssh/dialog/PayloadGen$8;-><init>(Lapp/fast/ssh/dialog/PayloadGen;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v9, "\u3165"

    invoke-static {v9}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v17

    aput-object v2, v10, v16

    const-string/jumbo v2, "\u3166"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u3167"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u3168"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v11, v17

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v11, v16

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    const-string/jumbo v5, "\u3169"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v11, v17

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "\u316a"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "\u316b"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move/from16 v5, v17

    const/4 v7, 0x5

    :goto_1
    if-ge v5, v7, :cond_7

    aget-object v8, v12, v5

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_6

    aget-object v8, v1, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "\u316c"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lapp/fast/ssh/dialog/PayloadGen;->generator_view:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lapp/fast/ssh/dialog/PayloadGen;->post_generator_view:Landroid/widget/LinearLayout;

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lapp/fast/ssh/dialog/PayloadGen;->showButtons(Z)V

    return-void
.end method

.method private showButtons(Z)V
    .locals 2

    .prologue
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 3

    iget-object v0, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lapp/fast/ssh/dialog/PayloadGen;->view:Landroid/view/View;

    const v1, 0x7f0901dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/dialog/PayloadGen$4;

    invoke-direct {v2, p0}, Lapp/fast/ssh/dialog/PayloadGen$4;-><init>(Lapp/fast/ssh/dialog/PayloadGen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/dialog/PayloadGen$5;

    invoke-direct {v2, p0, v0}, Lapp/fast/ssh/dialog/PayloadGen$5;-><init>(Lapp/fast/ssh/dialog/PayloadGen;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lapp/fast/ssh/dialog/PayloadGen;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/dialog/PayloadGen$6;

    invoke-direct {v2, p0, v0}, Lapp/fast/ssh/dialog/PayloadGen$6;-><init>(Lapp/fast/ssh/dialog/PayloadGen;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lapp/fast/ssh/dialog/PayloadGen;->showButtons(Z)V

    return-void
.end method
