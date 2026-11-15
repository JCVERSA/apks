.class public final Lcom/transsion/moviedetail/fragment/RestrictTipsDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;
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
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/RestrictTipsDialog$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;
    .locals 3

    .line 1
    const-string v0, "tips"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "pageFrom"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "page_from"

    .line 21
    .line 22
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "subject_id"

    .line 27
    .line 28
    invoke-static {v0, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lkotlin/Pair;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    aput-object p1, v0, v2

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    aput-object p2, v0, p1

    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    aput-object p3, v0, p1

    .line 43
    .line 44
    invoke-static {v0}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method
