.class public Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;
.super Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->V()V
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

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->n(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->n(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->n(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$c;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    return-void
.end method
