.class public final Lsg/c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/c;
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
    invoke-direct {p0}, Lsg/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lsg/c;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Lsg/c;->b(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/blankj/utilcode/util/Utils;->b(Landroid/app/Application;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 21
    .line 22
    invoke-virtual {v0}, Lyg/l;->f()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lsg/b;->b:Lsg/b$a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lsg/b$a;->a()Lsg/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lsg/b;->e(Landroid/app/Application;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
