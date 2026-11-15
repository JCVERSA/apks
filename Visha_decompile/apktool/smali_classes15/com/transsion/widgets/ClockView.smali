.class public Lcom/transsion/widgets/ClockView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# static fields
.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final CLOCK_SUPER_PARCELABLE:Ljava/lang/String; = "clock_super_parcelable"

.field private static final TAG:Ljava/lang/String; = "ClockView"

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"


# instance fields
.field private final mAmPmStyle:I

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mRegistered:Z

.field private final unRegisterRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p3, Liy0;

    invoke-direct {p3, p0}, Liy0;-><init>(Lcom/transsion/widgets/ClockView;)V

    iput-object p3, p0, Lcom/transsion/widgets/ClockView;->unRegisterRunnable:Ljava/lang/Runnable;

    .line 4
    new-instance p3, Lcom/transsion/widgets/ClockView$1;

    invoke-direct {p3, p0}, Lcom/transsion/widgets/ClockView$1;-><init>(Lcom/transsion/widgets/ClockView;)V

    iput-object p3, p0, Lcom/transsion/widgets/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/transsion/common/R$styleable;->ClockView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    :try_start_0
    sget p2, Lcom/transsion/common/R$styleable;->ClockView_amPmStyle:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/ClockView;->mAmPmStyle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    throw p0
.end method

.method public static synthetic a(Lcom/transsion/widgets/ClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/ClockView;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/ClockView;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ClockView;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/ClockView;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ClockView;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgets/ClockView;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ClockView;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgets/ClockView;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ClockView;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/widgets/ClockView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ClockView;->mClockFormatString:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/widgets/ClockView;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ClockView;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v1, "hm"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/transsion/widgets/ClockView;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0xef01

    const v3, 0xef00

    const/4 v4, 0x1

    if-nez v1, :cond_6

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/widgets/ClockView;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget v1, p0, Lcom/transsion/widgets/ClockView;->mAmPmStyle:I

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move v5, v1

    move v6, v5

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_1

    xor-int/lit8 v6, v6, 0x1

    :cond_1
    if-nez v6, :cond_2

    const/16 v8, 0x61

    if-ne v7, v8, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    :goto_3
    if-ltz v5, :cond_5

    move v6, v5

    :goto_4
    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/widgets/ClockView;->mClockFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/transsion/widgets/ClockView;->mClockFormatString:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/transsion/widgets/ClockView;->mClockFormat:Ljava/text/SimpleDateFormat;

    :goto_5
    iget-object v0, p0, Lcom/transsion/widgets/ClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgets/ClockView;->mAmPmStyle:I

    if-eqz v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v1, :cond_9

    if-le v2, v1, :cond_9

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget p0, p0, Lcom/transsion/widgets/ClockView;->mAmPmStyle:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    add-int/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_7
    if-ne p0, v4, :cond_8

    add-int/lit8 p0, v1, 0x1

    invoke-virtual {v3, p0, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    add-int/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_8
    :goto_6
    return-object v3

    :cond_9
    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ClockView;->unRegisterTimeControllerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private registerBatteryReceiver(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/widgets/ClockView;->mRegistered:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ClockView;->registerTimeControllerReceiver(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgets/ClockView;->mRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgets/ClockView;->updateClock()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgets/ClockView;->unRegisterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/widgets/ClockView;->unRegisterRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private unRegisterTimeControllerReceiver(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgets/ClockView;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgets/ClockView;->mRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgets/ClockView;->mCalendar:Ljava/util/Calendar;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgets/ClockView;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/widgets/ClockView;->registerBatteryReceiver(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgets/ClockView;->updateClock()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgets/ClockView;->unRegisterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ClockView;->unRegisterTimeControllerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "clock_super_parcelable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clock_super_parcelable"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "visibility"

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public registerTimeControllerReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/widgets/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgets/ClockView;->mRegistered:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/ClockView;->registerBatteryReceiver(Z)V

    return-void
.end method

.method public final updateClock()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/ClockView;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/transsion/widgets/ClockView;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClock time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClockView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/widgets/ClockView;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/transsion/widgets/ClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
