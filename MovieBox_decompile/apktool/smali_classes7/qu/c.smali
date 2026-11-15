.class public final Lqu/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final d:Lqu/a;

.field public static volatile e:Lqu/c;


# instance fields
.field public final a:[Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqu/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lqu/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqu/c;->d:Lqu/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lqu/c;->a:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lqu/c;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

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
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lqu/c;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "https://test-upgrade-api.palmplaystore.com/"

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lqu/c;->a:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "https://app-manage-api.shalltry.com/"

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ltu/i;->b:Ltu/h;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "KV_UPGRADE_GSLB_COUNTRY"

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ltu/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lqu/c;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lqu/c;->a:[Ljava/lang/String;

    .line 23
    .line 24
    new-instance v1, Lqu/b;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lqu/b;-><init>(Lqu/c;Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
