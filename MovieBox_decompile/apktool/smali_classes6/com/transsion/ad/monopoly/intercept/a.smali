.class public abstract Lcom/transsion/ad/monopoly/intercept/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/monopoly/intercept/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/monopoly/intercept/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/monopoly/intercept/a;Lcom/transsion/ad/monopoly/intercept/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ad/monopoly/intercept/a;->f(Lcom/transsion/ad/monopoly/intercept/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f(Lcom/transsion/ad/monopoly/intercept/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/a;->a:Lcom/transsion/ad/monopoly/intercept/a;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final c()Lcom/transsion/ad/monopoly/intercept/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/a;->a:Lcom/transsion/ad/monopoly/intercept/a;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getSimpleName(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method protected final e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "default"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
