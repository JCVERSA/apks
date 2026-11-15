.class Lcom/google/android/material/datepicker/y;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/y$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/y;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic g(Lcom/google/android/material/datepicker/y;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/y;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    .line 3
    return-object p0
.end method

.method private h(I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/y$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/y$a;-><init>(Lcom/google/android/material/datepicker/y;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/y;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->g0()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getYearSpan()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method i(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/y;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->g0()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->b:I

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    return p1
.end method

.method j(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/y;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->g0()Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->b:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public k(Lcom/google/android/material/datepicker/y$b;I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/y;->j(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p1, Lcom/google/android/material/datepicker/y$b;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v4, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    aput-object v2, v4, v5

    .line 20
    .line 21
    const-string v2, "%d"

    .line 22
    .line 23
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lcom/google/android/material/datepicker/y$b;->a:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1, p2}, Lcom/google/android/material/datepicker/j;->k(Landroid/content/Context;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/material/datepicker/y;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->h0()Lcom/google/android/material/datepicker/b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {}, Lcom/google/android/material/datepicker/x;->q()Ljava/util/Calendar;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ne v2, p2, :cond_0

    .line 58
    .line 59
    iget-object v2, v0, Lcom/google/android/material/datepicker/b;->f:Lcom/google/android/material/datepicker/a;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v2, v0, Lcom/google/android/material/datepicker/b;->d:Lcom/google/android/material/datepicker/a;

    .line 63
    .line 64
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/datepicker/y;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/google/android/material/datepicker/MaterialCalendar;->j0()Lcom/google/android/material/datepicker/DateSelector;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v4}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Ljava/lang/Long;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-ne v5, p2, :cond_1

    .line 102
    .line 103
    iget-object v2, v0, Lcom/google/android/material/datepicker/b;->e:Lcom/google/android/material/datepicker/a;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p1, Lcom/google/android/material/datepicker/y$b;->a:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Lcom/google/android/material/datepicker/a;->d(Landroid/widget/TextView;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p1, Lcom/google/android/material/datepicker/y$b;->a:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/y;->h(I)Landroid/view/View$OnClickListener;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/y$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_year:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    new-instance p2, Lcom/google/android/material/datepicker/y$b;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/y$b;-><init>(Landroid/widget/TextView;)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/datepicker/y$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/y;->k(Lcom/google/android/material/datepicker/y$b;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/y;->l(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/y$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
