.class public final synthetic Lvh/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/pslink/b;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/pslink/b;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvh/j;->a:Lcom/transsion/ad/db/pslink/b;

    .line 5
    .line 6
    iput-wide p2, p0, Lvh/j;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lvh/j;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lvh/j;->a:Lcom/transsion/ad/db/pslink/b;

    .line 2
    .line 3
    iget-wide v1, p0, Lvh/j;->b:J

    .line 4
    .line 5
    iget-wide v3, p0, Lvh/j;->c:J

    .line 6
    .line 7
    move-object v5, p1

    .line 8
    check-cast v5, Ly3/b;

    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/db/pslink/b;->g(Lcom/transsion/ad/db/pslink/b;JJLy3/b;)Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
