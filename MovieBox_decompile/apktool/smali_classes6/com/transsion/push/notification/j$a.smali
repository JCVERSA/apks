.class public final Lcom/transsion/push/notification/j$a;
.super Lcom/transsion/push/notification/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/notification/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/notification/a;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final P()Lcom/transsion/push/notification/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/notification/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/push/notification/j;-><init>(Lcom/transsion/push/notification/j$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
