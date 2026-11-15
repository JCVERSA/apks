.class public final synthetic Lcom/transsion/baselib/db/video/i0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;JILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/transsion/baselib/db/video/i0;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/transsion/baselib/db/video/i0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/transsion/baselib/db/video/i0;->c:J

    .line 9
    .line 10
    iput p6, p0, Lcom/transsion/baselib/db/video/i0;->d:I

    .line 11
    .line 12
    iput-object p7, p0, Lcom/transsion/baselib/db/video/i0;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/video/i0;->a:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/transsion/baselib/db/video/i0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/i0;->c:J

    .line 6
    .line 7
    iget v5, p0, Lcom/transsion/baselib/db/video/i0;->d:I

    .line 8
    .line 9
    iget-object v6, p0, Lcom/transsion/baselib/db/video/i0;->e:Ljava/lang/String;

    .line 10
    .line 11
    move-object v7, p1

    .line 12
    check-cast v7, Ly3/b;

    .line 13
    .line 14
    invoke-static/range {v0 .. v7}, Lcom/transsion/baselib/db/video/j0;->A(JLjava/lang/String;JILjava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
