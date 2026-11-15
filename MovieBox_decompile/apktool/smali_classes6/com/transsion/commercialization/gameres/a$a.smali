.class public final Lcom/transsion/commercialization/gameres/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/commercialization/gameres/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercialization/gameres/a$a$a;
    }
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/commercialization/gameres/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/commercialization/gameres/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/commercialization/gameres/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/commercialization/gameres/a$a;->a:Lcom/transsion/commercialization/gameres/a$a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/bean/GameInfoType;)Lcom/transsion/commercialization/gameres/a;
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/commercialization/gameres/a$a$a;->a:[I

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
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 27
    .line 28
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;-><init>()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object p1
.end method
