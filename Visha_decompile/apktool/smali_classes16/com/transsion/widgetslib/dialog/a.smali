.class public Lcom/transsion/widgetslib/dialog/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/a$b;,
        Lcom/transsion/widgetslib/dialog/a$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/transsion/widgetslib/dialog/d$a;

.field public c:Ljava/util/Calendar;

.field public d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

.field public e:Lcom/transsion/widgetslib/dialog/a$c;

.field public f:Lcom/transsion/widgetslib/dialog/d;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Lcom/transsion/widgetslib/dialog/a$b;

.field public l:I

.field public m:Ljava/util/Calendar;

.field public n:Ljava/util/Calendar;

.field public o:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/dialog/a;-><init>(Landroid/content/Context;ZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "yyyy-MM-dd HH:mm"

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/a;->j:Z

    .line 5
    iput v0, p0, Lcom/transsion/widgetslib/dialog/a;->l:I

    .line 6
    new-instance v0, Lcom/transsion/widgetslib/dialog/a$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/a$a;-><init>(Lcom/transsion/widgetslib/dialog/a;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->o:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;

    .line 7
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/a;->a:Landroid/content/Context;

    .line 8
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->b:Lcom/transsion/widgetslib/dialog/d$a;

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 11
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 12
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/dialog/a;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/a;->n(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/dialog/a;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/a;->m(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/dialog/a;)Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/dialog/a;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/dialog/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/a;->j:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/dialog/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->o()V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->k:Lcom/transsion/widgetslib/dialog/a$b;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->k:Lcom/transsion/widgetslib/dialog/a$b;

    :cond_0
    return-void
.end method

.method public getDateTimePicker()Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    return-object p0
.end method

.method public h()Lcom/transsion/widgetslib/dialog/d;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->s()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->l()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->x()V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackgroundColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/a;->w(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->f:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->g()V

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    const-string v1, "HH:mm"

    goto :goto_0

    :cond_0
    const-string v1, "h:mm a"

    :goto_0
    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 4

    const-string v0, "yyyy-MM-dd"

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x16

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "HH:mm"

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    if-nez p0, :cond_3

    move-object p0, v1

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ur"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ku"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "he"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "iw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u060c "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public l()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic m(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->g()V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final synthetic n(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p1

    const/16 v0, 0x3e9

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/a;->j:Z

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->k:Lcom/transsion/widgetslib/dialog/a$b;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/dialog/a;->j:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->k:Lcom/transsion/widgetslib/dialog/a$b;

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final o()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->e:Lcom/transsion/widgetslib/dialog/a$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/a;->e:Lcom/transsion/widgetslib/dialog/a$c;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-interface/range {v1 .. v9}, Lcom/transsion/widgetslib/dialog/a$c;->a(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;IIIIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->x()V

    :cond_1
    return-void
.end method

.method public p(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public q(Lcom/transsion/widgetslib/dialog/a$c;)Lcom/transsion/widgetslib/dialog/a;
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/a;->e:Lcom/transsion/widgetslib/dialog/a$c;

    return-object p0
.end method

.method public r(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/a;
    .locals 1

    new-instance v0, Lh57;

    invoke-direct {v0, p0, p1}, Lh57;-><init>(Lcom/transsion/widgetslib/dialog/a;Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/a;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->s(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public final s()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->a:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_picker_date_time_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$id;->datePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget v2, p0, Lcom/transsion/widgetslib/dialog/a;->l:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/a;->m:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/a;->n:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setCustomLimit(Ljava/util/Calendar;Ljava/util/Calendar;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/a;->c:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/a;->g:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/widgetslib/dialog/a;->l:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->init(Ljava/util/Calendar;Ljava/lang/String;I)V

    iget v1, p0, Lcom/transsion/widgetslib/dialog/a;->h:I

    if-nez v1, :cond_2

    iget v2, p0, Lcom/transsion/widgetslib/dialog/a;->i:I

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget v3, p0, Lcom/transsion/widgetslib/dialog/a;->i:I

    invoke-virtual {v2, v1, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setYearDuration(II)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/a;->o:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setOnDateChangeListener(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$j;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/a;->d:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    new-instance v2, Lg57;

    invoke-direct {v2, p0}, Lg57;-><init>(Lcom/transsion/widgetslib/dialog/a;)V

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setOnDialogDismissListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    return-void
.end method

.method public setDimAmount(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/a;->g:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public u(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->b:Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->C(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    return-object p0
.end method

.method public v(II)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/dialog/a;->h:I

    iput p2, p0, Lcom/transsion/widgetslib/dialog/a;->i:I

    return-void
.end method

.method public final w(Landroid/view/Window;)V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/dialog/a$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/a$b;-><init>(Lcom/transsion/widgetslib/dialog/a;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->k:Lcom/transsion/widgetslib/dialog/a$b;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf57;

    invoke-direct {v0, p0}, Lf57;-><init>(Lcom/transsion/widgetslib/dialog/a;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/a;->f:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/a;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
