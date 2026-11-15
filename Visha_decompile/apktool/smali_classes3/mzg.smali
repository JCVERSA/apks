.class public final synthetic Lmzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lqzg;

.field public final synthetic b:Lhig;


# direct methods
.method public synthetic constructor <init>(Lqzg;Lhig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmzg;->a:Lqzg;

    iput-object p2, p0, Lmzg;->b:Lhig;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Lmzg;->a:Lqzg;

    iget-object p0, p0, Lmzg;->b:Lhig;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p0, p1}, Lqzg;->f(Lqzg;Lhig;Lorg/json/JSONObject;)Lim5;

    move-result-object p0

    return-object p0
.end method
