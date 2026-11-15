.class public final Lcom/transsion/room/sub/viewmodel/subscription/a;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/sub/viewmodel/subscription/a$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/room/sub/viewmodel/subscription/a$a;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Lpp/a;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/room/sub/viewmodel/subscription/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/room/sub/viewmodel/subscription/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/room/sub/viewmodel/subscription/a;->e:Lcom/transsion/room/sub/viewmodel/subscription/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/a;->b:Ljava/lang/String;

    .line 12
    .line 13
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-class v0, Lpp/a;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lpp/a;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/a;->c:Lpp/a;

    .line 28
    .line 29
    new-instance p1, Landroidx/lifecycle/b0;

    .line 30
    .line 31
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/a;->d:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    return-void
.end method
