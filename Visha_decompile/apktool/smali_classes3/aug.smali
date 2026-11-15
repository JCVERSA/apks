.class public final Laug;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lwbf;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lwbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laug;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Laug;->b:Lwbf;

    return-void
.end method

.method public static bridge synthetic a(Laug;)Lwbf;
    .locals 0

    iget-object p0, p0, Laug;->b:Lwbf;

    return-object p0
.end method

.method public static bridge synthetic b(Laug;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Laug;->a:Lorg/json/JSONObject;

    return-object p0
.end method
