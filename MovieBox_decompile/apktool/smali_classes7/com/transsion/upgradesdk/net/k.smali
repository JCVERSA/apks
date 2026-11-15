.class public final Lcom/transsion/upgradesdk/net/k;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/transsion/upgradesdk/net/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/upgradesdk/net/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/upgradesdk/net/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/upgradesdk/net/k;->a:Lcom/transsion/upgradesdk/net/k;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lqu/f;->d:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "https://test-cdn.palmplaystore.com/"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "https://cdn2.palmplaystore.com/"

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method
