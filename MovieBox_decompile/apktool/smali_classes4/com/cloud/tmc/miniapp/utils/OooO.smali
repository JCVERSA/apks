.class public final Lcom/cloud/tmc/miniapp/utils/OooO;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

.field public static final OooO0O0:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/OooO;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/OooO;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO$OooO00o;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO0O0:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final OooO00o()Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO0O0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 8
    .line 9
    return-object v0
.end method
