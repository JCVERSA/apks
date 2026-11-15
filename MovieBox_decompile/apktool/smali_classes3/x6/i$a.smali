.class public final Lx6/i$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/i;->a(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


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


# virtual methods
.method public final a(JI)V
    .locals 1

    .line 1
    const/16 v0, 0x190

    .line 2
    .line 3
    if-gt v0, p3, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x1f4

    .line 6
    .line 7
    if-ge p3, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p2}, Lx6/e;->b(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
