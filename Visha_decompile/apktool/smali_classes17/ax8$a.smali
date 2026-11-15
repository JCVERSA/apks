.class public final Lax8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lax8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/trello/rxlifecycle3/android/ActivityEvent;)Lcom/trello/rxlifecycle3/android/ActivityEvent;
    .locals 2

    sget-object p0, Lax8$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not yet implemented"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/trello/rxlifecycle3/OutsideLifecycleException;

    const-string p1, "Cannot bind to Activity lifecycle when outside of it."

    invoke-direct {p0, p1}, Lcom/trello/rxlifecycle3/OutsideLifecycleException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    sget-object p0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/trello/rxlifecycle3/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle3/android/ActivityEvent;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-virtual {p0, p1}, Lax8$a;->a(Lcom/trello/rxlifecycle3/android/ActivityEvent;)Lcom/trello/rxlifecycle3/android/ActivityEvent;

    move-result-object p0

    return-object p0
.end method
