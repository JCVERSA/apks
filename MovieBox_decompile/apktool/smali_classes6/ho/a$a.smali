.class public final Lho/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lho/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lho/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lho/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lho/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lho/a$a;->a:Lho/a$a;

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
.method public final a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/postdetail/ui/adapter/f;Ljava/lang/String;Ljava/lang/String;Z)Lho/a;
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "fragment"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "pageName"

    .line 14
    .line 15
    move-object v6, p5

    .line 16
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "subpageName"

    .line 20
    .line 21
    move-object v7, p6

    .line 22
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lho/e;

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    move-object v4, p3

    .line 29
    move-object v5, p4

    .line 30
    move/from16 v8, p7

    .line 31
    .line 32
    invoke-direct/range {v1 .. v8}, Lho/e;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/postdetail/ui/adapter/f;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method
