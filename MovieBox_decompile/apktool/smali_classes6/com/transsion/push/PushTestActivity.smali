.class public final Lcom/transsion/push/PushTestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/push/PushTestActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "",
        "initView",
        "",
        "R",
        "()Ljava/lang/String;",
        "Q",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->S(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/push/PushTestActivity;->U(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "{\n\"messageId\": \"61145106\",\n\"title\": \"Kedidir Kedi\",\n\"desc\": \"Kedidir Kedi\",\n\"source\": \"push\",\n\"type\": \"1\",\n\"style\": \"1\",\n\"deeplink\": \"oneroom://com.community.oneroom?type=/ab/detail&id=5904172458474619680&channel=push&msgId=%MSGID%&msg_type=9\",\n\"imageList\": \"https://pacdn.aoneroom.com/image/2024/11/01/209d0b40e1b24b81a4fbd9ea150165ec.jpeg\"\n}"

    .line 2
    .line 3
    return-object v0
.end method

.method private final R()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/lib/push/R$id;->edTitle:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/EditText;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_2
    :goto_1
    const-string v0, "Notification Title Test ------- Notification Title Test ------- Notification Title Test"

    .line 32
    .line 33
    return-object v0
.end method

.method private static final S(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->Q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class v0, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setPermanent(Z)V

    .line 15
    .line 16
    .line 17
    const-string v0, "611451061"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setMessageId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->R()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setTitle(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v4, Lcom/transsion/push/PushTestActivity$initView$1$1;

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-direct {v4, p0}, Lcom/transsion/push/PushTestActivity$initView$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static final U(Lcom/transsion/push/PushTestActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->Q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class v0, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->R()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setTitle(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setMessageId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setFloat(Z)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, p1}, Lcom/transsion/push/helper/e;->i(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final initView()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/lib/push/R$id;->show_permanent_notification:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/push/a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/push/a;-><init>(Lcom/transsion/push/PushTestActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    sget v0, Lcom/transsion/lib/push/R$id;->show_notification:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/push/b;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/push/b;-><init>(Lcom/transsion/push/PushTestActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/push/utils/NotificationUtil;->G()Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "config = "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/transsion/lib/push/R$layout;->activity_push_test:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/push/PushTestActivity;->initView()V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p0, v0}, Lcom/transsion/push/utils/NotificationUtil;->u(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgConfig;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
