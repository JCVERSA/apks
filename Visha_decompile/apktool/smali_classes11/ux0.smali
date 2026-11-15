.class public abstract Lux0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mClickDelay:I

.field protected mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lux0;->mClickDelay:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lux0;->mLastClickTime:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lux0;->mLastClickTime:J

    .line 6
    iput p1, p0, Lux0;->mClickDelay:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lux0;->mLastClickTime:J

    iget v4, p0, Lux0;->mClickDelay:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljf;->k(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iput-wide v0, p0, Lux0;->mLastClickTime:J

    invoke-virtual {p0, p1}, Lux0;->onNoDoubleClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract onNoDoubleClick(Landroid/view/View;)V
.end method
