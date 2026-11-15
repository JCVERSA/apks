.class public Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;
.super Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->Q()V
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

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->c(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->d(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I

    move-result v0

    add-int/2addr v0, p2

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->z(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->B(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->C(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$d;->c:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    return-void
.end method
