.class public Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;
.super Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 5

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->w(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :cond_0
    move p2, p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->o(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->x(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I

    move-result v3

    if-ne v3, v1, :cond_3

    if-ge p2, p1, :cond_3

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->j(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    if-le p2, p1, :cond_5

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->f(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->b(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, p1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :goto_2
    move p2, p1

    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->t(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$f;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    return-void
.end method
