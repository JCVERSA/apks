.class public final synthetic Llzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lqzg;

.field public final synthetic c:Lim5;

.field public final synthetic d:Lim5;

.field public final synthetic e:Lvmh;

.field public final synthetic f:Lhmh;

.field public final synthetic g:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lqzg;Lim5;Lim5;Lvmh;Lhmh;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llzg;->b:Lqzg;

    iput-object p2, p0, Llzg;->c:Lim5;

    iput-object p3, p0, Llzg;->d:Lim5;

    iput-object p4, p0, Llzg;->e:Lvmh;

    iput-object p5, p0, Llzg;->f:Lhmh;

    iput-object p6, p0, Llzg;->g:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Llzg;->b:Lqzg;

    iget-object v1, p0, Llzg;->c:Lim5;

    iget-object v2, p0, Llzg;->d:Lim5;

    iget-object v3, p0, Llzg;->e:Lvmh;

    iget-object v4, p0, Llzg;->f:Lhmh;

    iget-object v5, p0, Llzg;->g:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v5}, Lqzg;->c(Lqzg;Lim5;Lim5;Lvmh;Lhmh;Lorg/json/JSONObject;)Lzcg;

    move-result-object p0

    return-object p0
.end method
