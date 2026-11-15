.class public final Lcom/transsion/transfer/impl/entity/FileData$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/impl/entity/FileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/entity/FileData$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/entity/FileData$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/transfer/impl/TaskState;)I
    .locals 1

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/transfer/impl/entity/FileData$a$a;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 19
    .line 20
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :pswitch_0
    const/4 v0, 0x7

    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    const/4 v0, 0x6

    .line 27
    goto :goto_0

    .line 28
    :pswitch_2
    const/4 v0, 0x5

    .line 29
    goto :goto_0

    .line 30
    :pswitch_3
    const/4 v0, 0x4

    .line 31
    goto :goto_0

    .line 32
    :pswitch_4
    const/4 v0, 0x2

    .line 33
    goto :goto_0

    .line 34
    :pswitch_5
    const/4 v0, 0x0

    .line 35
    :goto_0
    :pswitch_6
    return v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Lcom/transsion/transfer/impl/TaskState;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->CANCEL:Lcom/transsion/transfer/impl/TaskState;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->SPACE_LIMIT:Lcom/transsion/transfer/impl/TaskState;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->NO_FILE:Lcom/transsion/transfer/impl/TaskState;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->DISCONNECT:Lcom/transsion/transfer/impl/TaskState;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_3
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->ERROR:Lcom/transsion/transfer/impl/TaskState;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_5
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->TRANSFERRING:Lcom/transsion/transfer/impl/TaskState;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->CONNECTING:Lcom/transsion/transfer/impl/TaskState;

    .line 28
    .line 29
    :goto_0
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
