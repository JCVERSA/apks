.class public final Lhcg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lhig;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lhig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcg;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lhcg;->b:Lhig;

    return-void
.end method


# virtual methods
.method public final a()Lhig;
    .locals 0

    iget-object p0, p0, Lhcg;->b:Lhig;

    return-object p0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lhcg;->a:Lorg/json/JSONObject;

    return-object p0
.end method
