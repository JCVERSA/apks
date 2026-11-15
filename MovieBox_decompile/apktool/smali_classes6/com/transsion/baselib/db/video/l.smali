.class public final synthetic Lcom/transsion/baselib/db/video/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/transsion/baselib/db/video/l;->a:J

    .line 5
    .line 6
    iput p3, p0, Lcom/transsion/baselib/db/video/l;->b:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/transsion/baselib/db/video/l;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/l;->a:J

    .line 2
    .line 3
    iget v2, p0, Lcom/transsion/baselib/db/video/l;->b:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/transsion/baselib/db/video/l;->c:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Ly3/b;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/baselib/db/video/m;->k(JILjava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
