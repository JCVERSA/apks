.class public abstract Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;->b:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;->a:I

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;->b:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->r(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;->b:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$i;->a:I

    invoke-static {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->A(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

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
