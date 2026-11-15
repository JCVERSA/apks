.class public final Lcom/tn/tranpay/e$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/tranpay/e;
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
    invoke-direct {p0}, Lcom/tn/tranpay/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/tranpay/e;)V
    .locals 1

    .line 1
    const-string v0, "theme"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/tn/tranpay/e;->b(Lcom/tn/tranpay/e;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b()Lcom/tn/tranpay/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tn/tranpay/e;->a()Lcom/tn/tranpay/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
