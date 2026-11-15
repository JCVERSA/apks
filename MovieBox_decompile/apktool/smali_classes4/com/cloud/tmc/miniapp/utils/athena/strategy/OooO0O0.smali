.class public final Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:I

.field public final OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;",
            ">;I",
            "Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "steps"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "athenaReportBean"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0OO:Ljava/util/List;

    .line 19
    .line 20
    iput p4, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0Oo:I

    .line 21
    .line 22
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public OooO00o(Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;
    .locals 8

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0Oo:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0OO:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0OO:Ljava/util/List;

    .line 19
    .line 20
    iget p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0Oo:I

    .line 21
    .line 22
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 23
    .line 24
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;

    .line 25
    .line 26
    add-int/lit8 v6, p1, 0x1

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0OO:Ljava/util/List;

    .line 33
    .line 34
    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0Oo:I

    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 48
    .line 49
    return-object p1
.end method
