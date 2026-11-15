.class final Lcom/transsion/search_pugc/g$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search_pugc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/transsion/search_pugc/g$a;

.field private static final b:Landroidx/lifecycle/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/g$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/search_pugc/g$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/search_pugc/g$a;->a:Lcom/transsion/search_pugc/g$a;

    .line 7
    .line 8
    new-instance v1, Landroidx/lifecycle/w;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/transsion/search_pugc/g$a;->b:Landroidx/lifecycle/w;

    .line 14
    .line 15
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
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/g$a;->b:Landroidx/lifecycle/w;

    .line 2
    .line 3
    return-object v0
.end method
