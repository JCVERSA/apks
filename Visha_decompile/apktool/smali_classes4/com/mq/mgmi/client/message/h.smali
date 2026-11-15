.class public Lcom/mq/mgmi/client/message/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf9d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mq/mgmi/client/message/h$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "com.mq.mgmi.client.message.h"

.field public static final f:Ljava/lang/Object;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lhjd;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mq/mgmi/client/message/h;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcld;Lord;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "com.mq.mgmi.client.message.internal.nls.logcat"

    sget-object p2, Lcom/mq/mgmi/client/message/h;->e:Ljava/lang/String;

    invoke-static {p1, p2}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mq/mgmi/client/message/h;->d:Z

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(Lcom/mq/mgmi/client/message/h;)Lg6d;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mq/mgmi/client/message/h;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mq/mgmi/client/message/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ltod;Lv7d;)Lyad;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public close()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Lv7d;)Lggd;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Lbmd;Ljava/lang/Object;Lv7d;)Lggd;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g([Ljava/lang/String;[ILv7d;)Lggd;
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ltud;->b(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(Lhjd;)V
    .locals 0

    iput-object p1, p0, Lcom/mq/mgmi/client/message/h;->c:Lhjd;

    const/4 p0, 0x0

    throw p0
.end method

.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
