.class public final Lsb5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsb5$a;
    }
.end annotation


# static fields
.field public static final c:Lsb5$a;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsb5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsb5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsb5;->c:Lsb5$a;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsb5;->a:I

    iput p2, p0, Lsb5;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONObject;

    const-string v5, "..."

    if-eqz v4, :cond_1

    if-nez p2, :cond_0

    :goto_1
    move-object v3, v5

    goto :goto_2

    :cond_0
    check-cast v3, Lorg/json/JSONObject;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v3, v4}, Lsb5;->b(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    check-cast v3, Lorg/json/JSONArray;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v3, v4}, Lsb5;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "key"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v3, Lorg/json/JSONObject;

    const-string v5, "..."

    if-eqz v4, :cond_1

    if-nez p2, :cond_0

    :goto_1
    move-object v3, v5

    goto :goto_2

    :cond_0
    check-cast v3, Lorg/json/JSONObject;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v3, v4}, Lsb5;->b(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    check-cast v3, Lorg/json/JSONArray;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v3, v4}, Lsb5;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final c(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lsb5;->b:I

    invoke-virtual {p0, p1, v0}, Lsb5;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p1

    iget p0, p0, Lsb5;->a:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "copy.toString()"

    :goto_0
    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "copy.toString(indentSpaces)"

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lsb5;->b:I

    invoke-virtual {p0, p1, v0}, Lsb5;->b(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object p1

    iget p0, p0, Lsb5;->a:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "copy.toString()"

    :goto_0
    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "copy.toString(indentSpaces)"

    goto :goto_0

    :goto_1
    return-object p0
.end method
