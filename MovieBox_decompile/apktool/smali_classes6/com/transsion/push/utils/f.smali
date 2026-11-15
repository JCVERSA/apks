.class public final synthetic Lcom/transsion/push/utils/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/push/bean/CalendarData;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/push/bean/CalendarData;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/push/utils/f;->a:Lcom/transsion/push/bean/CalendarData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/push/utils/f;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/push/utils/f;->c:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/push/utils/f;->d:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/push/utils/f;->a:Lcom/transsion/push/bean/CalendarData;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/push/utils/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/push/utils/f;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/push/utils/f;->d:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/push/utils/CalendarRemindHelper;->d(Lcom/transsion/push/bean/CalendarData;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
