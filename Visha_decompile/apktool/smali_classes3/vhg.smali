.class public final synthetic Lvhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lhig;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lhig;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvhg;->a:Lhig;

    iput-object p2, p0, Lvhg;->b:Ljava/lang/String;

    iput-object p3, p0, Lvhg;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 2

    iget-object v0, p0, Lvhg;->a:Lhig;

    iget-object v1, p0, Lvhg;->b:Ljava/lang/String;

    iget-object p0, p0, Lvhg;->c:Lorg/json/JSONObject;

    check-cast p1, Lejf;

    invoke-static {v0, v1, p0, p1}, Lhig;->f(Lhig;Ljava/lang/String;Lorg/json/JSONObject;Lejf;)Lim5;

    move-result-object p0

    return-object p0
.end method
