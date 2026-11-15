.class public final synthetic Llbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lmbf;


# direct methods
.method public synthetic constructor <init>(Lmbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llbf;->a:Lmbf;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Llbf;->a:Lmbf;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lmbf;->b(Lmbf;Lorg/json/JSONObject;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method
