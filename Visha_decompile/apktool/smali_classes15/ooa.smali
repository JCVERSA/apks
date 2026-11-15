.class public final synthetic Looa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/TimerTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/TimerTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Looa;->b:Lcom/transsion/widgets/TimerTextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Looa;->b:Lcom/transsion/widgets/TimerTextView;

    invoke-static {p0}, Lcom/transsion/widgets/TimerTextView;->a(Lcom/transsion/widgets/TimerTextView;)V

    return-void
.end method
