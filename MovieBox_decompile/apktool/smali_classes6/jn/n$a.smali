.class public final Ljn/n$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Ljn/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljn/n$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljn/n$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljn/n$a;->a:Ljn/n$a;

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
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Ljn/n;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljn/m;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Ljn/m;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
