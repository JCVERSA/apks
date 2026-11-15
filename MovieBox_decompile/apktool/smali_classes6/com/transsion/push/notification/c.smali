.class public final Lcom/transsion/push/notification/c;
.super Lcom/transsion/push/notification/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/notification/c$a;,
        Lcom/transsion/push/notification/c$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/push/notification/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/push/notification/c$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/push/notification/c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/push/notification/c;->b:Lcom/transsion/push/notification/c$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/transsion/push/notification/c$a;)V
    .locals 1

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/push/notification/b;-><init>(Lcom/transsion/push/notification/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
