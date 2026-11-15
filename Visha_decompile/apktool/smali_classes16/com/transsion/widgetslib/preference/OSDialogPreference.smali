.class public abstract Lcom/transsion/widgetslib/preference/OSDialogPreference;
.super Landroid/preference/Preference;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/widgetslib/dialog/d$a;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Ljava/lang/CharSequence;

.field public g:Ljava/lang/CharSequence;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Landroid/app/Dialog;

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 21
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->j:Z

    .line 3
    iput-boolean v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->k:Z

    .line 4
    new-instance v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;-><init>(Lcom/transsion/widgetslib/preference/OSDialogPreference;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->p:Ljava/lang/Runnable;

    .line 5
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->c:Ljava/lang/CharSequence;

    if-nez p3, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->c:Ljava/lang/CharSequence;

    .line 8
    :cond_0
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogMessage:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->d:Ljava/lang/CharSequence;

    .line 9
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->e:Landroid/graphics/drawable/Drawable;

    .line 10
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_positiveButtonText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->f:Ljava/lang/CharSequence;

    .line 11
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_negativeButtonText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->g:Ljava/lang/CharSequence;

    .line 12
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogLayout:I

    iget p4, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h:I

    .line 13
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogXosDiff:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->i:Z

    .line 14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x10103bd

    const p3, 0x10103be

    .line 15
    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_no_curve_content_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->n:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->o:I

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/preference/OSDialogPreference;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    return-object p0
.end method


# virtual methods
.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Landroid/preference/PreferenceManager;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/widgetslib/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public g()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h:I

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    return-object p0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDialogLayoutResource()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h:I

    return p0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public i(Lcom/transsion/widgetslib/dialog/d$a;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->k()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final l(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->m:I

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->i:Z

    invoke-direct {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->g(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->f(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->b:Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->i(Lcom/transsion/widgetslib/dialog/d$a;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "registerOnActivityDestroyListener"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->d(Landroid/preference/PreferenceManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->b:Lcom/transsion/widgetslib/dialog/d$a;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->j:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->k:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l(Landroid/app/Dialog;)V

    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->n:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->o:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->m(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3
    iput p2, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->m:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "unregisterOnActivityDestroyListener"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->d(Landroid/preference/PreferenceManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    iget p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->m:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->m(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->isDialogShowing:Z

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->l:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h:I

    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->g:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->f:Ljava/lang/CharSequence;

    return-void
.end method
