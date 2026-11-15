.class public abstract Lcom/transsion/LongClickListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALLBACK_INTERVAL:J = 0x64L

.field public static final MIN_LONG_CLICK_INTERVAL:J = 0x3e8L


# instance fields
.field mIsLongClick:Z

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/LongClickListener;->mIsLongClick:Z

    new-instance v0, Lcom/transsion/LongClickListener$2;

    invoke-direct {v0, p0}, Lcom/transsion/LongClickListener$2;-><init>(Lcom/transsion/LongClickListener;)V

    iput-object v0, p0, Lcom/transsion/LongClickListener;->mLongClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/LongClickListener;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/LongClickListener;->mLongClickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public abstract cancelLongClickCallback()V
.end method

.method public init(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/transsion/LongClickListener$a;

    invoke-direct {v0, p0}, Lcom/transsion/LongClickListener$a;-><init>(Lcom/transsion/LongClickListener;)V

    invoke-static {p1, v0}, Lqua;->a(Landroid/view/View;Lqua$a;)V

    return-void
.end method

.method public abstract longClickCallback()V
.end method
