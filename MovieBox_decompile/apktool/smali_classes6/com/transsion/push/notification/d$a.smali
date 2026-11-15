.class public final Lcom/transsion/push/notification/d$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/notification/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/transsion/push/notification/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/push/notification/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/notification/d;->a()Lcom/transsion/push/notification/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Lcom/transsion/push/notification/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/notification/d;->b()Lcom/transsion/push/notification/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/transsion/push/notification/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/MsgType;->PERMANENT:Lcom/transsion/push/bean/MsgType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/push/notification/d$a;->b()Lcom/transsion/push/notification/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/push/notification/d$a;->a()Lcom/transsion/push/notification/d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method
