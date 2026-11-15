.class public final synthetic Lcom/transsion/videofloat/manager/w;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ldf/b;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/videofloat/manager/VideoPipManagerImp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/w;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/videofloat/manager/w;->b:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/videofloat/manager/w;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/videofloat/manager/w;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lgf/f;Ljava/util/List;ZZ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/w;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/videofloat/manager/w;->b:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/videofloat/manager/w;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/videofloat/manager/w;->d:Ljava/lang/String;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    move-object v5, p2

    .line 11
    move v6, p3

    .line 12
    move v7, p4

    .line 13
    invoke-static/range {v0 .. v7}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->p(ZLcom/transsion/videofloat/manager/VideoPipManagerImp;Ljava/lang/String;Ljava/lang/String;Lgf/f;Ljava/util/List;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
