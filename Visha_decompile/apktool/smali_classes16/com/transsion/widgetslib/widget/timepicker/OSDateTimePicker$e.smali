.class public Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newvalue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "oldvalue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OSDateTimePicker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->h(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getItemData(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getItemData(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    :cond_2
    const/4 v4, 0x6

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-le p2, p1, :cond_8

    const-string v7, "when newValue > oldValue newValue - oldValue > 10 +1 "

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v8, v2, :cond_3

    const-string p1, "when newValue > oldValue realNew < realOld > 10  -1 "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget v0, v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    return-void

    :cond_3
    sub-int/2addr p2, p1

    if-le p2, v5, :cond_4

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget v0, v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_5
    sub-int p1, p2, p1

    if-le p1, v5, :cond_6

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget v0, v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->l(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I

    move-result v0

    add-int/2addr p2, v0

    :goto_1
    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    :cond_8
    if-ge p2, p1, :cond_e

    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v7, v2, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "when newValue < oldValue realNew > realOld +1 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget p2, p2, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget v0, v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mStartYear:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->s(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void

    :cond_9
    sub-int/2addr p1, p2

    if-le p1, v5, :cond_a

    const-string p1, "when newValue < oldValue oldValue - newValue > 10 +1 "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget v0, v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_3

    :cond_b
    sub-int/2addr p1, p2

    if-le p1, v5, :cond_c

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget v0, v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mEndYear:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->G(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->l(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I

    move-result v0

    add-int/2addr p2, v0

    :goto_2
    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->set(II)V

    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->m(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->p(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->e(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->E(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->F(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->u(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$e;->a:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
