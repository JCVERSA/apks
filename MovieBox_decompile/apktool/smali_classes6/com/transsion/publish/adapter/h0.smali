.class public final synthetic Lcom/transsion/publish/adapter/h0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/publish/adapter/k0;

.field public final synthetic e:Lcom/transsion/publish/adapter/m0;

.field public final synthetic f:Lcom/transsion/publish/api/VsMediaInfo;


# direct methods
.method public synthetic constructor <init>(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/publish/adapter/h0;->a:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/publish/adapter/h0;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsion/publish/adapter/h0;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/publish/adapter/h0;->d:Lcom/transsion/publish/adapter/k0;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/transsion/publish/adapter/h0;->e:Lcom/transsion/publish/adapter/m0;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/transsion/publish/adapter/h0;->f:Lcom/transsion/publish/api/VsMediaInfo;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsion/publish/adapter/h0;->a:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/publish/adapter/h0;->b:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/publish/adapter/h0;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/publish/adapter/h0;->d:Lcom/transsion/publish/adapter/k0;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/publish/adapter/h0;->e:Lcom/transsion/publish/adapter/m0;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/publish/adapter/h0;->f:Lcom/transsion/publish/api/VsMediaInfo;

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    check-cast v6, Landroid/view/View;

    .line 15
    .line 16
    invoke-static/range {v0 .. v6}, Lcom/transsion/publish/adapter/k0;->j(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method
