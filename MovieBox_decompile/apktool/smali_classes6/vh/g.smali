.class public final synthetic Lvh/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/pslink/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/pslink/b;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvh/g;->a:Lcom/transsion/ad/db/pslink/b;

    .line 5
    .line 6
    iput-object p2, p0, Lvh/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lvh/g;->c:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 9
    .line 10
    iput-object p4, p0, Lvh/g;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lvh/g;->a:Lcom/transsion/ad/db/pslink/b;

    .line 2
    .line 3
    iget-object v1, p0, Lvh/g;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lvh/g;->c:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 6
    .line 7
    iget-object v3, p0, Lvh/g;->d:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Ly3/b;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/ad/db/pslink/b;->j(Lcom/transsion/ad/db/pslink/b;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Ly3/b;)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
