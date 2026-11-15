.class public final Lacb$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzbb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lacb$c;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lacb$c;->c()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    const-string p0, "value"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lorg/json/JSONObject;

    return p0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lacb$c;->b:Lorg/json/JSONObject;

    return-object p0
.end method
