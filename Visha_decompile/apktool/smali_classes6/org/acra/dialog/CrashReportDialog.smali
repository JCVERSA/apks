.class public Lorg/acra/dialog/CrashReportDialog;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/dialog/CrashReportDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 \u001b2\u00020\u00012\u00020\u0002:\u0001>B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\n\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u0019\u0010\u001b\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0014H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u001f\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0005H\u0015\u00a2\u0006\u0004\u0008#\u0010\tJ\u000f\u0010$\u001a\u00020\u001eH\u0014\u00a2\u0006\u0004\u0008$\u0010%R\u0016\u0010(\u001a\u00020&8\u0012@\u0012X\u0092.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\'R\u0018\u0010*\u001a\u0004\u0018\u00010\u00168\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R\u0016\u0010/\u001a\u00020-8\u0012@\u0012X\u0092.\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010.R\u0016\u00102\u001a\u0002008\u0012@\u0012X\u0092.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u00101R\u0016\u00105\u001a\u0002038\u0012@\u0012X\u0092.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u00104R\u0016\u00108\u001a\u00020\u001e8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\"\u0010\u001d\u001a\u0002098\u0014@\u0014X\u0094.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010:\u001a\u0004\u00086\u0010;\"\u0004\u0008<\u0010=\u00a8\u0006?"
    }
    d2 = {
        "Lorg/acra/dialog/CrashReportDialog;",
        "Landroid/app/Activity;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Lzfb;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "c",
        "Landroid/view/View;",
        "e",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "v",
        "b",
        "(Landroid/view/View;)V",
        "k",
        "()Landroid/view/View;",
        "f",
        "",
        "savedComment",
        "Landroid/widget/EditText;",
        "g",
        "(Ljava/lang/CharSequence;)Landroid/widget/EditText;",
        "i",
        "savedEmail",
        "j",
        "Landroid/content/DialogInterface;",
        "dialog",
        "",
        "which",
        "onClick",
        "(Landroid/content/DialogInterface;I)V",
        "outState",
        "onSaveInstanceState",
        "l",
        "()I",
        "Landroid/widget/LinearLayout;",
        "Landroid/widget/LinearLayout;",
        "scrollable",
        "Landroid/widget/EditText;",
        "userCommentView",
        "d",
        "userEmailView",
        "Log9;",
        "Log9;",
        "sharedPreferencesFactory",
        "Lorg/acra/config/DialogConfiguration;",
        "Lorg/acra/config/DialogConfiguration;",
        "dialogConfiguration",
        "Lorg/acra/dialog/CrashReportDialogHelper;",
        "Lorg/acra/dialog/CrashReportDialogHelper;",
        "helper",
        "h",
        "I",
        "padding",
        "Landroid/app/AlertDialog;",
        "Landroid/app/AlertDialog;",
        "()Landroid/app/AlertDialog;",
        "m",
        "(Landroid/app/AlertDialog;)V",
        "a",
        "acra-dialog_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final j:Lorg/acra/dialog/CrashReportDialog$a;


# instance fields
.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Log9;

.field public f:Lorg/acra/config/DialogConfiguration;

.field public g:Lorg/acra/dialog/CrashReportDialogHelper;

.field public h:I

.field public i:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/acra/dialog/CrashReportDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/dialog/CrashReportDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/dialog/CrashReportDialog;->j:Lorg/acra/dialog/CrashReportDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/acra/dialog/CrashReportDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->d(Lorg/acra/dialog/CrashReportDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final d(Lorg/acra/dialog/CrashReportDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "scrollable"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->f:Lorg/acra/config/DialogConfiguration;

    const-string v2, "dialogConfiguration"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lorg/acra/config/DialogConfiguration;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_2
    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->f:Lorg/acra/config/DialogConfiguration;

    if-nez v1, :cond_3

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    invoke-virtual {v1}, Lorg/acra/config/DialogConfiguration;->getResIcon()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->e(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->f:Lorg/acra/config/DialogConfiguration;

    if-nez v1, :cond_5

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v3

    :cond_5
    invoke-virtual {v1}, Lorg/acra/config/DialogConfiguration;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(android.R.string.ok)"

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->f:Lorg/acra/config/DialogConfiguration;

    if-nez v1, :cond_7

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v3, v1

    :goto_1
    invoke-virtual {v3}, Lorg/acra/config/DialogConfiguration;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(android.R.string.cancel)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "dialogBuilder.create()"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->m(Landroid/app/AlertDialog;)V

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->h()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->h()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lyk1;

    invoke-direct {v0, p0}, Lyk1;-><init>(Lorg/acra/dialog/CrashReportDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->h()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public e(Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lorg/acra/dialog/CrashReportDialog;->h:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "scrollable"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->k()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->f()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lorg/acra/dialog/CrashReportDialog;->h:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->b(Landroid/view/View;)V

    if-eqz p1, :cond_1

    const-string v1, "comment"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->g(Ljava/lang/CharSequence;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->b(Landroid/view/View;)V

    iput-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    :cond_2
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->i()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lorg/acra/dialog/CrashReportDialog;->h:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->b(Landroid/view/View;)V

    if-eqz p1, :cond_3

    const-string v1, "email"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->j(Ljava/lang/CharSequence;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->b(Landroid/view/View;)V

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->d:Landroid/widget/EditText;

    :cond_4
    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->f:Lorg/acra/config/DialogConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "dialogConfiguration"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/acra/config/DialogConfiguration;->getCommentPrompt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v1
.end method

.method public g(Ljava/lang/CharSequence;)Landroid/widget/EditText;
    .locals 1

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLines(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method public h()Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialog;->i:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public i()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->f:Lorg/acra/config/DialogConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "dialogConfiguration"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/acra/config/DialogConfiguration;->getEmailPrompt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v1
.end method

.method public j(Ljava/lang/CharSequence;)Landroid/widget/EditText;
    .locals 2

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialog;->e:Log9;

    if-nez p0, :cond_0

    const-string p0, "sharedPreferencesFactory"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Log9;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "acra.user.email"

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public k()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialog;->f:Lorg/acra/config/DialogConfiguration;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "dialogConfiguration"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    move-object p0, v1

    :cond_0
    invoke-virtual {p0}, Lorg/acra/config/DialogConfiguration;->getText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v1, p0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v0
.end method

.method public l()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10104d3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public m(Landroid/app/AlertDialog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->i:Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v0, "helper"

    const/4 v1, 0x0

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    const-string p2, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, p2

    :cond_1
    iget-object v2, p0, Lorg/acra/dialog/CrashReportDialog;->e:Log9;

    if-nez v2, :cond_2

    const-string v2, "sharedPreferencesFactory"

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2}, Log9;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/dialog/CrashReportDialog;->d:Landroid/widget/EditText;

    const-string v4, "acra.user.email"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_3
    invoke-interface {v2, v4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lorg/acra/dialog/CrashReportDialog;->g:Lorg/acra/dialog/CrashReportDialogHelper;

    if-nez p2, :cond_4

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p2

    :goto_1
    invoke-virtual {v1, p1, v3}, Lorg/acra/dialog/CrashReportDialogHelper;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->g:Lorg/acra/dialog/CrashReportDialogHelper;

    if-nez p1, :cond_6

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p1

    :goto_2
    invoke-virtual {v1}, Lorg/acra/dialog/CrashReportDialogHelper;->d()V

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance v0, Lorg/acra/dialog/CrashReportDialogHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lorg/acra/dialog/CrashReportDialogHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->g:Lorg/acra/dialog/CrashReportDialogHelper;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Log9;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/dialog/CrashReportDialog;->g:Lorg/acra/dialog/CrashReportDialogHelper;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "helper"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v2}, Lorg/acra/dialog/CrashReportDialogHelper;->f()Lorg/acra/config/CoreConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Log9;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->e:Log9;

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->g:Lorg/acra/dialog/CrashReportDialogHelper;

    if-nez v0, :cond_1

    invoke-static {v3}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1
    invoke-virtual {v0}, Lorg/acra/dialog/CrashReportDialogHelper;->f()Lorg/acra/config/CoreConfiguration;

    move-result-object v0

    const-class v1, Lorg/acra/config/DialogConfiguration;

    invoke-static {v0, v1}, Lue1;->b(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Lorg/acra/config/Configuration;

    move-result-object v0

    check-cast v0, Lorg/acra/config/DialogConfiguration;

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->f:Lorg/acra/config/DialogConfiguration;

    if-nez v0, :cond_2

    const-string v0, "dialogConfiguration"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    invoke-virtual {v4}, Lorg/acra/config/DialogConfiguration;->getResTheme()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    :cond_3
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->l()I

    move-result v0

    iput v0, p0, Lorg/acra/dialog/CrashReportDialog;->h:I

    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->c(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "comment"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lorg/acra/dialog/CrashReportDialog;->d:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "email"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
