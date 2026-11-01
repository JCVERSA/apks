.class Lapp/fast/ssh/ExportActivity$2$7;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/ExportActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/ExportActivity$2;

.field final synthetic val$checkBox:Landroid/widget/CompoundButton;

.field final synthetic val$materialDatePicker:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method constructor <init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/ExportActivity$2$7;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iput-object p2, p0, Lapp/fast/ssh/ExportActivity$2$7;->val$checkBox:Landroid/widget/CompoundButton;

    iput-object p3, p0, Lapp/fast/ssh/ExportActivity$2$7;->val$materialDatePicker:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButtonClick(Ljava/lang/Long;)V
    .locals 6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "\u2e4c"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iget-object v0, p0, Lapp/fast/ssh/ExportActivity$2$7;->val$checkBox:Landroid/widget/CompoundButton;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2e4d"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lapp/fast/ssh/ExportActivity$2$7;->val$materialDatePicker:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {v4}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getHeaderText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lapp/fast/ssh/ExportActivity$2$7;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iget-object v0, v0, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lapp/fast/ssh/ExportActivity;->access$502(Lapp/fast/ssh/ExportActivity;Ljava/lang/Long;)Ljava/lang/Long;

    return-void
.end method

.method public bridge synthetic onPositiveButtonClick(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/ExportActivity$2$7;->onPositiveButtonClick(Ljava/lang/Long;)V

    return-void
.end method
