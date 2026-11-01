.class public Lapp/fast/ssh/TimerConf;
.super Ljava/lang/Object;
.source "TimerConf.java"


# instance fields
.field public final action_text:Ljava/lang/String;

.field public final button_text:Ljava/lang/String;

.field public final cool_min:I

.field public final max_hours:I

.field public final message_text:Ljava/lang/String;

.field public final per_hours:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/TimerConf;->action_text:Ljava/lang/String;

    iput-object p2, p0, Lapp/fast/ssh/TimerConf;->message_text:Ljava/lang/String;

    iput-object p3, p0, Lapp/fast/ssh/TimerConf;->button_text:Ljava/lang/String;

    iput p4, p0, Lapp/fast/ssh/TimerConf;->max_hours:I

    iput p5, p0, Lapp/fast/ssh/TimerConf;->per_hours:I

    iput p6, p0, Lapp/fast/ssh/TimerConf;->cool_min:I

    return-void
.end method
